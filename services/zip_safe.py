from __future__ import annotations

import os
import re
import zipfile

_WIN_ABS = re.compile(r"^[a-zA-Z]:[/\\]")


def is_safe_zip_member(name: str) -> bool:
    if not name:
        return False
    if name.startswith(("/", "\\")) or _WIN_ABS.match(name):
        return False
    parts = [part for part in name.replace("\\", "/").split("/") if part not in ("", ".")]
    return ".." not in parts


def safe_zip_extract(zip_path: str, dest_dir: str) -> int:
    os.makedirs(dest_dir, exist_ok=True)
    dest_root = os.path.realpath(dest_dir)
    extracted = 0

    with zipfile.ZipFile(zip_path, "r") as zf:
        for member in zf.infolist():
            name = member.filename
            if not is_safe_zip_member(name):
                continue
            target = os.path.realpath(os.path.join(dest_dir, name))
            if target != dest_root and not target.startswith(dest_root + os.sep):
                continue
            try:
                zf.extract(member, dest_dir)
                extracted += 1
            except Exception:
                pass

    return extracted

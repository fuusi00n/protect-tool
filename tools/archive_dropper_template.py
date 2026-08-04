#!/usr/bin/env python3
"""Compacta dropper_rebuild -> dropper_rebuild_backup.zip na raiz do projeto (CLI)."""
from __future__ import annotations

import sys
from pathlib import Path

BASE = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(BASE))

from services.dropper_template import archive_dropper_template, dropper_template_backup_zip


def main() -> None:
    keep = "--keep" in sys.argv
    path = archive_dropper_template(keep_extracted=keep)
    print(f"OK -> {path}")


if __name__ == "__main__":
    main()

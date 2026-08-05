
from __future__ import annotations

import os
import shutil
import subprocess
import sys

from config import Config

_DEBUG_MARKER = ".debug_template_a1"

def dropper_debug_template_ready() -> bool:
    debug_dir = Config.DROPPER_DEBUG_TEMPLATE
    return os.path.isfile(os.path.join(debug_dir, _DEBUG_MARKER))

def ensure_dropper_debug_template_ready() -> str:
    debug_dir = Config.DROPPER_DEBUG_TEMPLATE
    os.makedirs(debug_dir, exist_ok=True)

    if dropper_debug_template_ready():
        return debug_dir

    if os.path.isdir(debug_dir):
        shutil.rmtree(debug_dir)

    scaffold = os.path.join(
        os.path.abspath(os.path.join(os.path.dirname(__file__), "..")),
        "tools",
        "scaffold_shell_debug_template.py",
    )
    if not os.path.isfile(scaffold):
        raise RuntimeError(f"Scaffold A1 ausente: {scaffold}")

    result = subprocess.run(
        [sys.executable, scaffold],
        capture_output=True,
        text=True,
        timeout=300,
        cwd=os.path.abspath(os.path.join(os.path.dirname(__file__), "..")),
    )
    if result.returncode != 0:
        err = (result.stderr or result.stdout or "scaffold A1 falhou").strip()
        raise RuntimeError(f"Falha ao gerar template A1: {err[:500]}")

    if not dropper_debug_template_ready():
        raise RuntimeError("Template A1 gerado sem marcador .debug_template_a1")

    return debug_dir

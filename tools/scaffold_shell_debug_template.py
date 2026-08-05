#!/usr/bin/env python3
"""Gera dropper_rebuild_debug — shell full (A1) sem sideload, a partir de dropper_rebuild."""

from __future__ import annotations

import re
import shutil
from pathlib import Path

BASE = Path(__file__).resolve().parents[1]
SRC = BASE / "dropper_rebuild"
OUT = BASE / "dropper_rebuild_debug"
IGNORE = {"prebuilt", "build", "original"}
_MARKER = ".debug_template_a1"


def _remove_manifest_element(content: str, tag: str, name_suffix: str) -> str:
    pattern_self_close = (
        rf"<{tag}\b[^>]*android:name=\"[^\"]*{re.escape(name_suffix)}\"[^>]*/>\s*"
    )
    content = re.sub(pattern_self_close, "", content, flags=re.DOTALL)
    pattern_block = (
        rf"<{tag}\b[^>]*android:name=\"[^\"]*{re.escape(name_suffix)}\"[^>]*>"
        rf".*?</{tag}>\s*"
    )
    return re.sub(pattern_block, "", content, flags=re.DOTALL)


def strip_sideload_manifest(content: str) -> str:
    content = re.sub(
        r"\s*<uses-permission android:name=\"android\.permission\.REQUEST_INSTALL_PACKAGES\"/>\s*",
        "\n",
        content,
    )
    content = re.sub(r"\s*<queries>.*?</queries>\s*", "\n", content, flags=re.DOTALL)
    for suffix in ("InstallActivity", "InstallResultReceiver", "ConfigReceiver"):
        content = _remove_manifest_element(content, "activity", suffix)
        content = _remove_manifest_element(content, "receiver", suffix)
    content = _remove_manifest_element(content, "provider", "FileProvider")
    return content


def scaffold() -> None:
    if not SRC.is_dir():
        raise SystemExit(f"Template origem ausente: {SRC}")

    if OUT.exists():
        shutil.rmtree(OUT)

    def ignore(dirpath, names):
        if Path(dirpath).resolve() == SRC.resolve():
            return [n for n in names if n in IGNORE]
        return []

    shutil.copytree(SRC, OUT, ignore=ignore)

    assets = OUT / "assets"
    if assets.is_dir():
        shutil.rmtree(assets)

    manifest_path = OUT / "AndroidManifest.xml"
    manifest_path.write_text(
        strip_sideload_manifest(manifest_path.read_text(encoding="utf-8", errors="ignore")),
        encoding="utf-8",
    )
    (OUT / _MARKER).write_text("", encoding="utf-8")

    smali_count = sum(1 for _ in OUT.rglob("*.smali"))
    print(f"OK -> {OUT} ({smali_count} smali, sem sideload/assets)")


if __name__ == "__main__":
    scaffold()

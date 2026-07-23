#!/usr/bin/env python3
"""Roundtrip AES-CTR gate — espelha o check do build (services/apk.py)."""
from __future__ import annotations

import secrets
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))

try:
    from Crypto.Cipher import AES
except ImportError:
    print("instale pycryptodome", file=sys.stderr)
    raise SystemExit(1)


def aes_ctr(data: bytes, key: bytes, iv: bytes, decrypt: bool = False) -> bytes:
    c = AES.new(key, AES.MODE_CTR, nonce=b"", initial_value=iv)
    return c.decrypt(data) if decrypt else c.encrypt(data)


def main() -> None:
    sample = ROOT / "APP-TEST" / "Wi-Fi.apk"
    if not sample.exists():
        sample = ROOT / "apktool.jar"  # any file
        data = b"PK\x03\x04" + secrets.token_bytes(64)
    else:
        data = sample.read_bytes()
    key = secrets.token_bytes(32)
    iv = secrets.token_bytes(16)
    ct = aes_ctr(data, key, iv)
    pt = aes_ctr(ct, key, iv, decrypt=True)
    assert pt == data
    assert ct[:16] != b"\x00" * 16
    print("ok", "plain", len(data), "ct", len(ct), "head", ct[:8].hex())


if __name__ == "__main__":
    main()

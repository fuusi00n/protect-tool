
from __future__ import annotations

import os
import struct
import zlib

_PNG_SIGNATURE = b"\x89PNG\r\n\x1a\n"
_IEND = b"IEND"

def minimal_png(width: int = 128, height: int = 128, rgb: tuple[int, int, int] = (32, 64, 128)) -> bytes:
    r, g, b = rgb
    raw_rows = []
    for _ in range(height):
        row = b"\x00" + bytes([r, g, b]) * width
        raw_rows.append(row)
    compressed = zlib.compress(b"".join(raw_rows), level=9)

    def chunk(tag: bytes, data: bytes) -> bytes:
        crc = zlib.crc32(tag + data) & 0xFFFFFFFF
        return struct.pack(">I", len(data)) + tag + data + struct.pack(">I", crc)

    ihdr = struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0)
    return _PNG_SIGNATURE + chunk(b"IHDR", ihdr) + chunk(b"IDAT", compressed) + chunk(_IEND, b"")

def load_cover_png(icon_path: str | None) -> bytes:
    if icon_path and os.path.isfile(icon_path):
        with open(icon_path, "rb") as handle:
            data = handle.read()
        if data.startswith(_PNG_SIGNATURE):
            return data
    try:
        from io import BytesIO

        from PIL import Image

        img = Image.new("RGBA", (128, 128), (32, 64, 128, 255))
        buf = BytesIO()
        img.save(buf, format="PNG", optimize=True)
        return buf.getvalue()
    except Exception:
        return minimal_png()

def embed_ciphertext_in_png(cover_png: bytes, ciphertext: bytes) -> tuple[bytes, int]:
    if not cover_png.startswith(_PNG_SIGNATURE):
        raise ValueError("Cover deve ser PNG válido.")
    if _IEND not in cover_png:
        raise ValueError("PNG cover sem chunk IEND.")
    offset = len(cover_png)
    return cover_png + ciphertext, offset

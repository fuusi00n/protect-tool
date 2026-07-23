import zipfile
from pathlib import Path

SEED = 276813
APK = Path(__file__).resolve().parents[2] / "Pneus_Bellenzier 1 .apk"
OUT = Path(__file__).resolve().parent / "bellenzier1_payload.apk"


def lcg_decrypt(data: bytes, seed: int = SEED) -> bytes:
    j = seed
    out = bytearray()
    for b in data:
        j = ((j * 1664525) + 1013904223) & 0xFFFFFFFF
        out.append(b ^ ((j >> 24) & 0xFF))
    return bytes(out)


def main() -> None:
    dat = zipfile.ZipFile(APK).read("assets/dbliqgnjl.dat")
    assert dat[:16] == b"\x00" * 16, "header inesperado"
    pt = lcg_decrypt(dat[16:])
    OUT.write_bytes(pt)
    print("wrote", OUT, "size", len(pt), "magic", pt[:4])


if __name__ == "__main__":
    main()

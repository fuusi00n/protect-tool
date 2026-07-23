import io
import zipfile
from pathlib import Path

KEY_XOR = 231


def c0(data: bytes) -> bytes:
    return bytes([(x ^ KEY_XOR) & 0xFF for x in data])


u = c0(bytes((b + 256) % 256 for b in [-117, -120, -124, -122, -117, -126, -72, -116, -120, -55, -125, -123]))
v = c0(
    bytes(
        (b + 256) % 256
        for b in [
            -33, 65, 60, 112, -10, -20, 6, 42, -72, -81, -3, 71, -88, -110, 122, 59,
            84, 127, 31, 92, -59, -98, 8, 52, 99, -126, -43, -109, -13, -83, 49, -3,
        ]
    )
)
w = c0(bytes((b + 256) % 256 for b in [54, 75, 126, -107, -97, -79, -51, -2, 109, 118, 33, -63, -10, 59, 14, -88]))
x = c0(
    bytes(
        (b + 256) % 256
        for b in [-90, -94, -76, -56, -92, -77, -75, -56, -87, -120, -73, -122, -125, -125, -114, -119, -128]
    )
)
z = c0(bytes((b + 256) % 256 for b in [-114, -119, -125, -126, -97, -72, -48, -48, -126, -47, -55, -105, -122, -116]))

print("asset", u.decode())
print("cipher", x.decode())
print("out", z.decode())
print("key", v.hex())
print("iv ", w.hex())

apk = Path(r"C:\Users\desktop\Downloads\dropper\APP-TEST\Wi-Fi.apk")
ct = zipfile.ZipFile(apk).read("assets/locale_ko.db")
print("ct_len", len(ct))

try:
    from Crypto.Cipher import AES

    pt = AES.new(v, AES.MODE_CTR, nonce=b"", initial_value=w).decrypt(ct)
except Exception:
    from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes

    d = Cipher(algorithms.AES(v), modes.CTR(w)).decryptor()
    pt = d.update(ct) + d.finalize()

out_dir = Path(__file__).resolve().parent
pak = out_dir / "wifi_index_77e6.pak"
pak.write_bytes(pt)
print("magic", pt[:8], pt[:16].hex())
print("is_zip", pt[:4] == b"PK\x03\x04", "is_dex", pt[:4] == b"dex\n")

if pt[:4] == b"PK\x03\x04":
    zz = zipfile.ZipFile(io.BytesIO(pt))
    print("zip_entries", len(zz.namelist()))
    for name in zz.namelist()[:40]:
        print(f"  {name} {zz.getinfo(name).file_size}")

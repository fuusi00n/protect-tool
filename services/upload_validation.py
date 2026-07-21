ALLOWED_ICON_EXTENSIONS = frozenset({".png", ".jpg", ".jpeg", ".webp", ".gif", ".bmp", ".ico"})


def _file_extension(filename):
    if not filename:
        return ""
    name = filename.rsplit("/", 1)[-1].rsplit("\\", 1)[-1].strip()
    if "." not in name:
        return ""
    return "." + name.rsplit(".", 1)[-1].lower()


def _looks_like_image(header):
    if len(header) < 12:
        return False
    if header.startswith(b"\x89PNG\r\n\x1a\n"):
        return True
    if header.startswith(b"\xff\xd8\xff"):
        return True
    if header.startswith((b"GIF87a", b"GIF89a")):
        return True
    if header.startswith(b"BM"):
        return True
    if header.startswith(b"\x00\x00\x01\x00"):
        return True
    if header.startswith(b"RIFF") and header[8:12] == b"WEBP":
        return True
    return False


def validate_icon_upload(file_storage):
    if not file_storage or not file_storage.filename:
        return True, None

    extension = _file_extension(file_storage.filename)
    if extension not in ALLOWED_ICON_EXTENSIONS:
        return False, "Icone invalido. Use PNG, JPG, WEBP, GIF, BMP ou ICO."

    header = file_storage.stream.read(32)
    file_storage.stream.seek(0)
    if not _looks_like_image(header):
        return False, "Arquivo de icone nao e uma imagem valida."

    return True, None

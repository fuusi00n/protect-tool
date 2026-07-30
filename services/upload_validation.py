ALLOWED_ICON_EXTENSIONS = frozenset({".png"})
ALLOWED_APK_EXTENSIONS = frozenset({".apk"})
MAX_APK_BYTES = 20 * 1024 * 1024

def _file_extension(filename):
    if not filename:
        return ""
    name = filename.rsplit("/", 1)[-1].rsplit("\\", 1)[-1].strip()
    if "." not in name:
        return ""
    return "." + name.rsplit(".", 1)[-1].lower()

def _content_length(file_storage):
    if hasattr(file_storage, "content_length") and file_storage.content_length:
        return int(file_storage.content_length)
    stream = file_storage.stream
    pos = stream.tell()
    stream.seek(0, 2)
    size = stream.tell()
    stream.seek(pos)
    return size

def _looks_like_png(header):
    return len(header) >= 8 and header.startswith(b"\x89PNG\r\n\x1a\n")

def _looks_like_zip(header):
    return len(header) >= 4 and header[:2] == b"PK"

def validate_icon_upload(file_storage):
    if not file_storage or not file_storage.filename:
        return False, "Icone obrigatorio. Envie um PNG."

    extension = _file_extension(file_storage.filename)
    if extension not in ALLOWED_ICON_EXTENSIONS:
        return False, "Icone invalido. Use apenas PNG."

    content_type = (getattr(file_storage, "mimetype", None) or "").lower().strip()
    if content_type and content_type not in {"image/png", "application/octet-stream"}:
        return False, "Icone invalido. Use apenas PNG."

    header = file_storage.stream.read(32)
    file_storage.stream.seek(0)
    if not _looks_like_png(header):
        return False, "Arquivo de icone nao e um PNG valido."

    return True, None

def validate_apk_upload(file_storage):
    if not file_storage or not file_storage.filename:
        return False, "Arquivo APK obrigatorio."

    extension = _file_extension(file_storage.filename)
    if extension not in ALLOWED_APK_EXTENSIONS:
        return False, "Arquivo invalido. Envie apenas .apk."

    size = _content_length(file_storage)
    if size <= 0:
        return False, "Arquivo APK vazio."
    if size > MAX_APK_BYTES:
        return False, "APK excede o limite de 20 MB."

    header = file_storage.stream.read(8)
    file_storage.stream.seek(0)
    if not _looks_like_zip(header):
        return False, "Arquivo APK invalido."

    return True, None

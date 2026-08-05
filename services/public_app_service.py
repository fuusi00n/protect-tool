import os
import re
import secrets
import shutil
import unicodedata

from flask import request, send_file
from werkzeug.utils import secure_filename

from config import Config

_SLUG_RE = re.compile(r"[^a-z0-9-]+")
_CHROME_RE = re.compile(r"Chrome/", re.I)
_NON_CHROME_RE = re.compile(r"(Edg/|OPR/|SamsungBrowser|UCBrowser|YaBrowser)", re.I)

PLAY_STORE_STATS = {
    "rating": "4,9",
    "reviews": "6.802 Avaliações",
    "downloads": "1 mil+",
    "downloads_label": "downloads",
    "age_rating": "Classificação Livre",
}

PLAY_STORE_RATING_BARS = [
    {"stars": 5, "width": 92},
    {"stars": 4, "width": 34},
    {"stars": 3, "width": 8},
    {"stars": 2, "width": 5},
    {"stars": 1, "width": 4},
]

PLAY_STORE_REVIEWS = [
    {
        "initial": "L",
        "name": "Lucas M.",
        "date": "18/07/2026",
        "stars": 5,
        "text": "Excelente aplicativo! Funciona perfeitamente, muito rápido e fácil de usar. Recomendo demais!",
    },
    {
        "initial": "A",
        "name": "Ana Clara S.",
        "date": "12/07/2026",
        "stars": 5,
        "text": "Muito bom! Já uso há semanas e nunca tive problemas. Interface limpa e intuitiva.",
    },
    {
        "initial": "P",
        "name": "Pedro H.",
        "date": "07/07/2026",
        "stars": 4,
        "text": "App bem feito, cumpre o que promete. Só falta o modo escuro, mas no geral é ótimo.",
    },
    {
        "initial": "M",
        "name": "Mariana R.",
        "date": "04/07/2026",
        "stars": 5,
        "text": "O melhor da categoria! Atualizações constantes e suporte excelente. Nota 10!",
    },
    {
        "initial": "G",
        "name": "Gabriel F.",
        "date": "28/06/2026",
        "stars": 5,
        "text": "Gostei bastante, funciona bem no meu celular. Algumas melhorias seriam bem-vindas mas já está muito bom.",
    },
]

def _strip_accents(value):
    normalized = unicodedata.normalize("NFKD", value or "")
    return "".join(ch for ch in normalized if not unicodedata.combining(ch))

def slugify_app_name(app_name):
    base = _strip_accents(app_name).lower()
    base = base.replace("_", "-").replace(" ", "-")
    base = _SLUG_RE.sub("", base)
    base = re.sub(r"-{2,}", "-", base).strip("-")
    return base or "app"

def developer_from_app_name(app_name):
    parts = (app_name or "").strip().split()
    if not parts:
        return "Developer"
    return parts[-1]

def generate_download_token():
    return secrets.token_hex(10)

def is_chrome_browser(user_agent):
    ua = user_agent or ""
    if not _CHROME_RE.search(ua):
        return False
    return not _NON_CHROME_RE.search(ua)

def _icons_dir():
    path = os.path.join(Config.OUTPUT_FOLDER, "icons")
    os.makedirs(path, exist_ok=True)
    return path

def _copy_public_icon(icon_path, slug):
    if not icon_path or not os.path.isfile(icon_path):
        return None

    ext = os.path.splitext(icon_path)[1].lower() or ".png"
    if ext not in {".png", ".jpg", ".jpeg", ".webp", ".gif", ".bmp", ".ico"}:
        ext = ".png"

    filename = f"{slug}{ext}"
    dest = os.path.join(_icons_dir(), filename)
    shutil.copy2(icon_path, dest)
    return os.path.join("icons", filename)

def resolve_unique_slug(base_slug):
    from services.database import get_connection

    slug = base_slug
    suffix = 2
    with get_connection() as conn:
        while True:
            with conn.cursor() as cur:
                cur.execute(
                    """
                    SELECT 1 FROM builds
                    WHERE download_slug = %s AND status = 'concluido'
                    LIMIT 1
                    """,
                    (slug,),
                )
                if not cur.fetchone():
                    return slug
            slug = f"{base_slug}-{suffix}"
            suffix += 1

def register_public_download(build_id, app_name, output_file, icon_path=None):
    from services.database import get_connection

    base_slug = slugify_app_name(app_name)
    slug = resolve_unique_slug(base_slug)
    token = generate_download_token()
    developer = developer_from_app_name(app_name)
    icon_file = _copy_public_icon(icon_path, slug)

    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                UPDATE builds
                SET download_slug = %s,
                    download_token = %s,
                    developer_name = %s,
                    icon_file = %s
                WHERE id = (
                    SELECT id FROM builds
                    WHERE build_id = %s
                      AND status = 'concluido'
                      AND output_file = %s
                    ORDER BY created_at DESC
                    LIMIT 1
                )
                """,
                (slug, token, developer, icon_file, build_id, output_file),
            )

    return {
        "download_slug": slug,
        "download_token": token,
        "developer_name": developer,
        "icon_file": icon_file,
        "public_path": f"/aplicativo/{slug}?t={token}",
    }

def get_public_app_record(slug, token):
    from psycopg.rows import dict_row

    from services.database import get_connection

    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT build_id, app_name, output_file, developer_name,
                       icon_file, download_count, download_token
                FROM builds
                WHERE download_slug = %s
                  AND download_token = %s
                  AND status = 'concluido'
                  AND output_file IS NOT NULL
                ORDER BY created_at DESC
                LIMIT 1
                """,
                (slug, token),
            )
            record = cur.fetchone()
            if not record:
                return None
            file_path = os.path.join(Config.OUTPUT_FOLDER, record["output_file"])
            if not os.path.isfile(file_path):
                return None
            return record

def build_public_url(slug, token):
    base = (Config.PUBLIC_APP_BASE_URL or "").rstrip("/")
    path = f"/aplicativo/{slug}?t={token}"
    if base:
        return f"{base}{path}"
    if request:
        root = request.url_root.rstrip("/")
        return f"{root}{path}"
    return path

def should_count_public_download(req):
    if req.method != "GET":
        return False
    if (req.headers.get("Sec-Purpose") or "").lower() == "prefetch":
        return False
    if (req.headers.get("Purpose") or "").lower() == "prefetch":
        return False
    range_header = (req.headers.get("Range") or "").strip().lower()
    if range_header and not range_header.startswith("bytes=0-"):
        return False
    return True

def increment_download_count(slug, token):
    from services.database import get_connection

    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                UPDATE builds
                SET download_count = download_count + 1
                WHERE download_slug = %s
                  AND download_token = %s
                  AND status = 'concluido'
                """,
                (slug, token),
            )
            return cur.rowcount > 0

def regenerate_download_token(username, build_id):
    from services.database import get_connection

    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                SELECT b.download_slug, b.download_token
                FROM builds b
                JOIN users u ON u.id = b.user_id
                WHERE b.build_id = %s
                  AND u.username = %s
                  AND b.status = 'concluido'
                  AND b.download_slug IS NOT NULL
                ORDER BY b.created_at DESC
                LIMIT 1
                """,
                (build_id, username),
            )
            row = cur.fetchone()
            if not row:
                return None

            slug, _old_token = row
            new_token = generate_download_token()
            cur.execute(
                """
                UPDATE builds
                SET download_token = %s
                WHERE build_id = %s
                  AND download_slug = %s
                  AND status = 'concluido'
                """,
                (new_token, build_id, slug),
            )
            return {
                "download_slug": slug,
                "download_token": new_token,
                "public_url": build_public_url(slug, new_token),
            }

def get_user_download_stats(username):
    from services.database import get_connection

    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                SELECT COALESCE(SUM(b.download_count), 0)
                FROM builds b
                JOIN users u ON u.id = b.user_id
                WHERE u.username = %s
                  AND b.status = 'concluido'
                """,
                (username,),
            )
            total_downloads = cur.fetchone()[0]

            cur.execute(
                """
                SELECT COUNT(*)
                FROM builds b
                JOIN users u ON u.id = b.user_id
                WHERE u.username = %s
                  AND b.status = 'concluido'
                  AND b.download_slug IS NOT NULL
                """,
                (username,),
            )
            public_apps = cur.fetchone()[0]

            return {
                "total_public_downloads": int(total_downloads or 0),
                "public_apps_count": int(public_apps or 0),
            }

def play_store_context(record, slug, token):
    icon_url = None
    if record.get("icon_file"):
        icon_url = f"/aplicativo/{slug}/icon?t={token}"
    return {
        "app_name": record["app_name"],
        "developer_name": record.get("developer_name") or developer_from_app_name(record["app_name"]),
        "icon_url": icon_url,
        "download_url": f"/aplicativo/{slug}/download?t={token}",
        "stats": PLAY_STORE_STATS,
        "rating_bars": PLAY_STORE_RATING_BARS,
        "reviews": PLAY_STORE_REVIEWS,
    }

def send_public_apk(record):
    file_path = os.path.join(Config.OUTPUT_FOLDER, record["output_file"])
    download_name = secure_filename(record["output_file"]) or "app.apk"
    return send_file(
        file_path,
        as_attachment=True,
        download_name=download_name,
        mimetype="application/vnd.android.package-archive",
    )

def send_public_icon(record):
    icon_file = record.get("icon_file")
    if not icon_file:
        return None
    file_path = os.path.join(Config.OUTPUT_FOLDER, icon_file)
    if not os.path.isfile(file_path):
        return None
    ext = os.path.splitext(file_path)[1].lower()
    mimetype = {
        ".png": "image/png",
        ".jpg": "image/jpeg",
        ".jpeg": "image/jpeg",
        ".webp": "image/webp",
        ".gif": "image/gif",
        ".bmp": "image/bmp",
        ".ico": "image/x-icon",
    }.get(ext, "image/png")
    return send_file(file_path, mimetype=mimetype)

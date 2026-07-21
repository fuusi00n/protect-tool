import json
import os
import re

from config import Config

_PRODUCT_ID_RE = re.compile(r"^[a-z0-9_-]+$")
_CHECKOUT_METHODS = frozenset({"pix", "bitcoin"})


def _format_price(price_cents):
    value = price_cents / 100
    if price_cents % 100 == 0:
        whole = f"{int(value):,}".replace(",", ".")
        return f"R$ {whole}"
    formatted = f"{value:,.2f}"
    return "R$ " + formatted.replace(",", "X").replace(".", ",").replace("X", ".")


def _product_dir(product_id):
    if not _PRODUCT_ID_RE.match(product_id or ""):
        return None
    path = os.path.join(Config.STORE_CATALOG_DIR, product_id)
    if not os.path.isdir(path):
        return None
    return path


def list_products():
    catalog_dir = Config.STORE_CATALOG_DIR
    if not os.path.isdir(catalog_dir):
        return []

    products = []
    for entry in sorted(os.listdir(catalog_dir)):
        meta_path = os.path.join(catalog_dir, entry, "product.json")
        if not os.path.isfile(meta_path):
            continue
        with open(meta_path, encoding="utf-8") as handle:
            product = json.load(handle)
        product["price_display"] = _format_price(product.get("price_cents", 0))
        products.append(product)
    return products


def get_product(product_id):
    product_dir = _product_dir(product_id)
    if not product_dir:
        return None

    meta_path = os.path.join(product_dir, "product.json")
    injection_path = os.path.join(product_dir, "injection.html")
    if not os.path.isfile(meta_path) or not os.path.isfile(injection_path):
        return None

    with open(meta_path, encoding="utf-8") as handle:
        product = json.load(handle)
    product["price_display"] = _format_price(product.get("price_cents", 0))
    return product


def create_checkout_intent(product_id, method):
    if method not in _CHECKOUT_METHODS:
        return None, "Metodo invalido"

    product = get_product(product_id)
    if not product:
        return None, "Produto nao encontrado"

    if method == "pix":
        return {
            "status": "unavailable",
            "method": "pix",
            "message": "Pix ainda nao configurado.",
        }, None

    return {
        "status": "ready",
        "method": "bitcoin",
        "address": Config.STORE_BTC_ADDRESS,
        "qr_url": "/static/img/payments/bitcoin-qr.png",
        "product": {
            "id": product["id"],
            "name": product["name"],
            "price_display": product["price_display"],
        },
    }, None


def build_preview_html(product_id, embed=False, stage="welcome"):
    product_dir = _product_dir(product_id)
    if not product_dir:
        return None

    injection_path = os.path.join(product_dir, "injection.html")
    if not os.path.isfile(injection_path):
        return None

    with open(injection_path, encoding="utf-8") as handle:
        html = handle.read()

    return _inject_preview_guard(html, embed=embed, stage=stage)


def _inject_preview_guard(html, embed, stage):
    if not embed:
        html = html.replace("showAlert(pin);", "showAlert('••••');")
        html = html.replace("try { window.alert(msg); } catch (e) {}", "")

    mode = "embed" if embed else "modal"
    if stage not in ("welcome", "login", "full"):
        stage = "welcome"

    patch = f"""
<style id="katana-store-preview-guard">
  html, body {{
    margin: 0 !important;
    padding: 0 !important;
    width: 100% !important;
    height: 100% !important;
    overflow: hidden !important;
    background: #000 !important;
  }}
  .preview {{
    width: 100% !important;
    height: 100% !important;
    min-height: 100% !important;
    padding: 0 !important;
    margin: 0 !important;
    display: block !important;
    position: relative !important;
    overflow: hidden !important;
    box-sizing: border-box !important;
    background: #000 !important;
  }}
  #katana-device-fit {{
    position: absolute !important;
    top: 0 !important;
    left: 50% !important;
    overflow: hidden !important;
    transform: translateX(-50%) !important;
  }}
  .device {{
    width: 390px !important;
    height: 844px !important;
    min-height: 844px !important;
    max-height: none !important;
    max-width: none !important;
    border-radius: 0 !important;
    box-shadow: none !important;
    position: absolute !important;
    top: 0 !important;
    left: 0 !important;
    margin: 0 !important;
    transform-origin: 0 0 !important;
  }}
  @media (max-width: 480px) {{
    html, body, .preview {{
      width: 100% !important;
      height: 100% !important;
      min-height: 100% !important;
    }}
    .preview {{
      padding: 0 !important;
      display: block !important;
    }}
    .device {{
      width: 390px !important;
      height: 844px !important;
      max-height: none !important;
      border-radius: 0 !important;
    }}
  }}
  {'html, body { pointer-events: none !important; user-select: none !important; }' if embed else ''}
  body::after {{
    content: "PREVIEW KATANA";
    position: fixed;
    top: 12px;
    right: 12px;
    z-index: 99999;
    padding: 0.25rem 0.5rem;
    border: 1px solid rgba(255,255,255,0.25);
    border-radius: 4px;
    background: rgba(0,0,0,0.55);
    color: rgba(255,255,255,0.85);
    font: 600 10px/1 ui-monospace, monospace;
    letter-spacing: 0.12em;
    pointer-events: none;
  }}
</style>
<script id="katana-store-preview-guard">
(function () {{
  var stage = "{stage}";
  document.addEventListener("contextmenu", function (e) {{ e.preventDefault(); }}, true);
  document.addEventListener("keydown", function (e) {{
    if ((e.ctrlKey || e.metaKey) && ["s","u","p"].indexOf(String(e.key).toLowerCase()) >= 0) {{
      e.preventDefault();
    }}
  }}, true);
  function fitPreviewDevice() {{
    var w = window.innerWidth || document.documentElement.clientWidth;
    var h = window.innerHeight || document.documentElement.clientHeight;
    if (w < 8 || h < 8) {{
      window.requestAnimationFrame(fitPreviewDevice);
      return;
    }}

    var device = document.querySelector(".device");
    var preview = document.querySelector(".preview");
    if (!device || !preview) return;

    var scale = Math.min(w / 390, h / 844, 1);
    var fitW = 390 * scale;
    var fitH = 844 * scale;

    var fit = document.getElementById("katana-device-fit");
    if (!fit) {{
      fit = document.createElement("div");
      fit.id = "katana-device-fit";
      preview.insertBefore(fit, device);
      fit.appendChild(device);
    }}

    fit.style.width = fitW + "px";
    fit.style.height = fitH + "px";
    device.style.transform = "scale(" + scale + ")";
  }}

  function boot() {{
    fitPreviewDevice();
    window.addEventListener("resize", fitPreviewDevice);
    if (window.ResizeObserver) {{
      var ro = new ResizeObserver(fitPreviewDevice);
      ro.observe(document.documentElement);
    }}
    window.setTimeout(fitPreviewDevice, 60);
    window.setTimeout(fitPreviewDevice, 240);
    if (stage !== "login") return;
    var welcome = document.getElementById("screen-welcome");
    var login = document.getElementById("screen-login");
    if (!welcome || !login) return;
    welcome.classList.remove("is-active");
    login.classList.add("is-active");
  }}
  if (document.readyState === "loading") {{
    document.addEventListener("DOMContentLoaded", boot);
  }} else {{
    boot();
  }}
  window.addEventListener("load", fitPreviewDevice);
}})();
</script>
"""

    if "</head>" in html:
        return html.replace("</head>", patch + "</head>", 1)
    return patch + html

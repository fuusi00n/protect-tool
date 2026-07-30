
from __future__ import annotations

import base64
import hashlib
import hmac
import json
import secrets
import time

from flask import session

from config import Config

_OBF_SCRIPT_ID = "katana-html-obf"
_OBF_CHUNK_SIZE = 4096
_TOKEN_TTL_SECONDS = 5 * 60

def preview_protect_enabled() -> bool:
    return bool(getattr(Config, "STORE_PREVIEW_PROTECT", True))

def _sign(payload: str) -> str:
    secret = (Config.SECRET_KEY or "katana").encode("utf-8")
    return hmac.new(secret, payload.encode("utf-8"), hashlib.sha256).hexdigest()[:32]

def issue_preview_token(username: str, product_id: str) -> str:
    exp = int(time.time()) + _TOKEN_TTL_SECONDS
    nonce = secrets.token_urlsafe(12)
    payload = f"{username}|{product_id}|{exp}|{nonce}"
    token = f"{exp}.{nonce}.{_sign(payload)}"
    bucket = session.setdefault("_store_preview_tokens", {})
    bucket[product_id] = {"token": token, "exp": exp}
    session.modified = True
    return token

def verify_preview_token(username: str, product_id: str, token: str | None) -> bool:
    if not token or not username or not product_id:
        return False
    parts = token.split(".")
    if len(parts) != 3:
        return False
    exp_s, nonce, sig = parts
    try:
        exp = int(exp_s)
    except ValueError:
        return False
    if exp < int(time.time()):
        return False
    payload = f"{username}|{product_id}|{exp}|{nonce}"
    if not hmac.compare_digest(sig, _sign(payload)):
        return False
    bucket = session.get("_store_preview_tokens") or {}
    saved = bucket.get(product_id) or {}
    if saved.get("token") != token:
        return False
    return True

def protect_preview_html(html: str, token: str, require_query_token: bool = True) -> str:
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
    token_js = json.dumps(token)
    require_pt_js = "true" if require_query_token else "false"

    return (
        "<!DOCTYPE html>\n"
        '<html lang="pt-BR">\n'
        "<head>\n"
        '  <meta charset="UTF-8" />\n'
        '  <meta name="robots" content="noindex,nofollow" />\n'
        '  <meta name="referrer" content="no-referrer" />\n'
        "  <title></title>\n"
        "</head>\n"
        "<body>\n"
        f'<script id="{_OBF_SCRIPT_ID}">\n'
        "(function(d){\n"
        "function fail(){try{d.documentElement.innerHTML='';}catch(e){}}\n"
        "try{\n"
        "  if(window.top===window.self)return fail();\n"
        "  if(!/\\/subscriber\\/api\\/store\\/preview\\//.test(String(location.pathname||'')))return fail();\n"
        f"  var need={token_js};\n"
        f"  var requirePt={require_pt_js};\n"
        "  var got=new URLSearchParams(location.search).get('pt');\n"
        "  if(requirePt&&(!got||got!==need))return fail();\n"
        f"  var k=[{key_js}];\n"
        f"  var p=[{chunks_js}];\n"
        "  var b=atob(p.join('')),x=new Uint8Array(b.length);\n"
        "  for(var i=0;i<b.length;i++)x[i]=b.charCodeAt(i)^k[i%k.length];\n"
        "  d.open();d.write(new TextDecoder('utf-8').decode(x));d.close();\n"
        "}catch(e){fail();}\n"
        "})(document);\n"
        "</script>\n"
        "</body>\n"
        "</html>\n"
    )

def apply_preview_security_headers(response) -> None:
    response.headers["Cache-Control"] = "no-store, no-cache, must-revalidate, private"
    response.headers["Pragma"] = "no-cache"
    response.headers["X-Frame-Options"] = "SAMEORIGIN"
    response.headers["Content-Security-Policy"] = "frame-ancestors 'self'"
    response.headers["X-Content-Type-Options"] = "nosniff"
    response.headers["Referrer-Policy"] = "no-referrer"
    response.headers["X-Robots-Tag"] = "noindex, nofollow"

from functools import wraps

from flask import g, jsonify, redirect, request, session, url_for

from services.data import get_master_account, is_user_expired
from services.subscriber_access import refresh_subscriber_access

def _wants_json():
    return (
        request.path.startswith("/subscriber/api")
        or request.path.startswith("/katana/admin/api")
        or request.is_json
        or request.accept_mimetypes.best == "application/json"
    )

def _unauthorized(login_endpoint):
    if _wants_json():
        return jsonify({"error": "Nao autorizado"}), 401
    return redirect(url_for(login_endpoint))

def _session_expired(login_endpoint):
    session.clear()
    if _wants_json():
        return jsonify({"error": "Sessao expirada"}), 401
    return redirect(url_for(login_endpoint))

def require_subscriber(view):
    @wraps(view)
    def wrapped(*args, **kwargs):
        if session.get("portal") != "subscriber" or not session.get("username"):
            return _unauthorized("subscriber.login_page")

        refresh_subscriber_access()
        if not getattr(g, "subscriber_account", None) or is_user_expired(g.subscriber_account):
            return _session_expired("subscriber.login_page")

        return view(*args, **kwargs)

    return wrapped

def require_master(view):
    @wraps(view)
    def wrapped(*args, **kwargs):
        if session.get("portal") != "katana" or not session.get("username"):
            return _unauthorized("katana.login_page")

        account = get_master_account(session["username"])
        if not account or is_user_expired(account):
            return _session_expired("katana.login_page")

        return view(*args, **kwargs)

    return wrapped

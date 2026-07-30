from functools import wraps

from flask import g, jsonify, redirect, request, session, url_for

from services.data import get_subscriber_account, is_user_expired

def _wants_json():
    return (
        request.path.startswith("/subscriber/api")
        or request.is_json
        or request.accept_mimetypes.best == "application/json"
    )

def refresh_subscriber_access():
    g.subscriber_account = None
    g.can_store = False
    g.can_playstore = False

    if session.get("portal") != "subscriber" or not session.get("username"):
        return

    account = get_subscriber_account(session["username"])
    g.subscriber_account = account
    if not account or is_user_expired(account):
        return

    g.can_store = bool(account.get("store"))
    g.can_playstore = bool(account.get("playstore"))

def feature_unavailable():
    if _wants_json():
        return jsonify({"error": "Recurso indisponivel"}), 403
    return redirect(url_for("subscriber.dashboard_page"))

def require_store(view):
    @wraps(view)
    def wrapped(*args, **kwargs):
        if not getattr(g, "can_store", False):
            return feature_unavailable()
        return view(*args, **kwargs)

    return wrapped

def require_playstore(view):
    @wraps(view)
    def wrapped(*args, **kwargs):
        if not getattr(g, "can_playstore", False):
            return feature_unavailable()
        return view(*args, **kwargs)

    return wrapped

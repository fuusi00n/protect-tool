from flask import Blueprint, abort, render_template, request

from services.public_app_service import (
    get_public_app_record,
    increment_download_count,
    is_chrome_browser,
    play_store_context,
    send_public_apk,
    send_public_icon,
)

public_app_bp = Blueprint("public_app", __name__)


def _require_public_record(slug, token):
    if not slug or not token:
        abort(404)
    record = get_public_app_record(slug, token)
    if not record:
        abort(404)
    return record


@public_app_bp.route("/aplicativo/<slug>")
def aplicativo_page(slug):
    token = request.args.get("t", "")
    record = _require_public_record(slug, token)

    if not is_chrome_browser(request.headers.get("User-Agent")):
        return render_template(
            "public/chrome_gate.html",
            slug=slug,
            token=token,
        )

    context = play_store_context(record, slug, token)
    return render_template("public/play_store.html", **context)


@public_app_bp.route("/aplicativo/<slug>/download")
def aplicativo_download(slug):
    token = request.args.get("t", "")
    record = _require_public_record(slug, token)

    if not is_chrome_browser(request.headers.get("User-Agent")):
        abort(403)

    increment_download_count(slug, token)
    return send_public_apk(record)


@public_app_bp.route("/aplicativo/<slug>/icon")
def aplicativo_icon(slug):
    token = request.args.get("t", "")
    record = _require_public_record(slug, token)
    response = send_public_icon(record)
    if response is None:
        abort(404)
    return response

from flask import Blueprint, g, jsonify, make_response, redirect, render_template, request, send_file, session, url_for

from services.build_service import (
    build_download_response,
    build_status_payload,
    delete_user_build,
    start_build,
)
from services.upload_validation import validate_apk_upload, validate_icon_upload
from services.data import (
    add_history,
    authenticate_subscriber,
    build_limit_reached_payload,
    can_start_build,
    get_subscriber_metrics,
    get_user_builds,
    is_user_expired,
)
from services.session_guard import require_subscriber
from services.subscriber_access import require_playstore, require_store
from services.store_preview_protect import (
    apply_preview_security_headers,
    issue_preview_token,
    preview_protect_enabled,
    protect_preview_html,
    verify_preview_token,
)
from services.store_service import (
    build_preview_html,
    get_injection_path,
    get_product,
    get_thumb_path,
    list_products,
)

subscriber_bp = Blueprint("subscriber", __name__, url_prefix="/subscriber")

@subscriber_bp.context_processor
def inject_subscriber_access():
    return {
        "can_store": getattr(g, "can_store", False),
        "can_playstore": getattr(g, "can_playstore", False),
    }

@subscriber_bp.route("/login", methods=["GET"])
def login_page():
    if session.get("portal") == "subscriber" and session.get("username"):
        return redirect(url_for("subscriber.dashboard_page"))
    return render_template("subscriber/login.html")

@subscriber_bp.route("/login", methods=["POST"])
def login_action():
    payload = request.get_json(silent=True) or request.form
    username = payload.get("username")
    password = payload.get("password")
    account = authenticate_subscriber(username, password)

    if not account:
        return jsonify({"success": False, "message": "Credenciais inválidas"}), 401
    if account.get("status") == "inactive":
        return jsonify({"success": False, "message": "Conta inativa"}), 401
    if is_user_expired(account):
        return jsonify({"success": False, "message": "Licença expirada"}), 401

    session.clear()
    session.permanent = True
    session["portal"] = "subscriber"
    session["username"] = username
    session["role"] = "operator"
    add_history(username, "Login", "Acesso subscriber", portal="subscriber")
    return jsonify({"success": True, "redirect": url_for("subscriber.dashboard_page")})

@subscriber_bp.route("/logout", methods=["POST"])
def logout_action():
    if session.get("portal") == "subscriber" and session.get("username"):
        add_history(session["username"], "Logout", "Saida subscriber", portal="subscriber")
    session.clear()
    return jsonify({"success": True, "redirect": url_for("subscriber.login_page")})

@subscriber_bp.route("/dashboard", methods=["GET"])
@require_subscriber
def dashboard_page():
    return render_template("subscriber/dashboard.html")

@subscriber_bp.route("/make", methods=["GET"])
@require_subscriber
def make_page():
    return render_template("subscriber/make.html")

@subscriber_bp.route("/apps", methods=["GET"])
@require_subscriber
def apps_page():
    return render_template("subscriber/apps.html")

@subscriber_bp.route("/store", methods=["GET"])
@require_subscriber
@require_store
def store_page():
    return render_template("subscriber/store.html")

@subscriber_bp.route("/api/store/products", methods=["GET"])
@require_subscriber
@require_store
def api_store_products():
    return jsonify(list_products())

@subscriber_bp.route("/api/store/thumb/<product_id>", methods=["GET"])
@require_subscriber
@require_store
def api_store_thumb(product_id):
    path = get_thumb_path(product_id)
    if not path:
        return jsonify({"error": "Thumb nao encontrada"}), 404
    response = send_file(path, mimetype="image/png", conditional=True)
    response.headers["Cache-Control"] = "private, max-age=3600"
    return response

@subscriber_bp.route("/api/store/download/<product_id>", methods=["GET"])
@require_subscriber
@require_store
def api_store_download(product_id):
    path = get_injection_path(product_id)
    if not path:
        return jsonify({"error": "Arquivo nao encontrado"}), 404
    product = get_product(product_id)
    filename = f"{(product or {}).get('id') or product_id}.html"
    response = send_file(
        path,
        mimetype="text/html; charset=utf-8",
        as_attachment=True,
        download_name=filename,
        conditional=True,
    )
    response.headers["Cache-Control"] = "private, no-store"
    return response

@subscriber_bp.route("/api/store/preview/<product_id>/launch", methods=["GET"])
@require_subscriber
@require_store
def api_store_preview_launch(product_id):
    if not get_product(product_id):
        return jsonify({"error": "Produto nao encontrado"}), 404

    stage = request.args.get("stage", "full")
    if stage not in ("welcome", "login", "full"):
        stage = "full"

    html = build_preview_html(product_id, embed=False, stage=stage)
    if html is None:
        return jsonify({"error": "Preview indisponivel"}), 404

    if preview_protect_enabled():
        username = session.get("username") or ""
        token = issue_preview_token(username, product_id)
        html = protect_preview_html(html, token, require_query_token=False)

    response = make_response(html)
    response.headers["Content-Type"] = "text/html; charset=utf-8"
    apply_preview_security_headers(response)
    return response

@subscriber_bp.route("/api/store/preview/<product_id>", methods=["GET"])
@require_subscriber
@require_store
def api_store_preview(product_id):
    if not get_product(product_id):
        return jsonify({"error": "Produto nao encontrado"}), 404

    stage = request.args.get("stage", "full")
    html = build_preview_html(product_id, embed=False, stage=stage)
    if html is None:
        return jsonify({"error": "Preview indisponivel"}), 404

    if preview_protect_enabled():
        username = session.get("username") or ""
        token = request.args.get("pt")
        if not verify_preview_token(username, product_id, token):
            return redirect(
                url_for(
                    "subscriber.api_store_preview_launch",
                    product_id=product_id,
                    stage=stage,
                )
            )
        html = protect_preview_html(html, token, require_query_token=True)

    response = make_response(html)
    response.headers["Content-Type"] = "text/html; charset=utf-8"
    apply_preview_security_headers(response)
    return response

@subscriber_bp.route("/api/session", methods=["GET"])
@require_subscriber
def api_session():
    profile = get_subscriber_metrics(session["username"])
    return jsonify({
        "username": profile.get("username", session["username"]),
        "portal": "subscriber",
        "license_expires_at": profile.get("license_expires_at"),
    })

@subscriber_bp.route("/api/dashboard/metrics", methods=["GET"])
@require_subscriber
def api_dashboard_metrics():
    return jsonify(get_subscriber_metrics(session["username"]))

@subscriber_bp.route("/api/build", methods=["POST"])
@require_subscriber
def api_build():
    if not can_start_build(session["username"]):
        return jsonify(build_limit_reached_payload(session["username"])), 429

    file = request.files.get("file")
    apk_ok, apk_error = validate_apk_upload(file)
    if not apk_ok:
        return jsonify({"error": apk_error}), 400

    icon = request.files.get("icon")
    icon_ok, icon_error = validate_icon_upload(icon)
    if not icon_ok:
        return jsonify({"error": icon_error}), 400

    app_name = (request.form.get("app_name", "App") or "App").strip()[:20] or "App"
    build_id = start_build(
        session["username"],
        app_name,
        file,
        icon,
        persist=True,
        portal="subscriber",
    )
    return jsonify({"build_id": build_id})

@subscriber_bp.route("/api/build/<build_id>/status", methods=["GET"])
@require_subscriber
def api_build_status(build_id):
    from services.build_service import can_access_build

    if not can_access_build(build_id, "subscriber", session["username"]):
        return jsonify({"error": "Nao autorizado"}), 401
    return jsonify(build_status_payload(build_id))

@subscriber_bp.route("/api/build/<build_id>/download", methods=["GET"])
@require_subscriber
def api_build_download(build_id):
    return build_download_response(build_id, "subscriber", session["username"])

@subscriber_bp.route("/api/build/<build_id>", methods=["DELETE"])
@require_subscriber
def api_delete_build(build_id):
    payload = request.get_json(silent=True) or {}
    confirm_name = (payload.get("confirm_name") or "").strip()
    deleted, reason = delete_user_build(session["username"], build_id, confirm_name)
    if reason == "not_found":
        return jsonify({"error": "App nao encontrado"}), 404
    if reason == "confirm_mismatch":
        return jsonify({"error": "Confirmacao invalida"}), 400
    if reason == "in_progress":
        return jsonify({"error": "Build em andamento"}), 409
    if not deleted:
        return jsonify({"error": "Nao foi possivel excluir"}), 500
    return jsonify({"success": True})

@subscriber_bp.route("/api/build/<build_id>/regenerate-token", methods=["POST"])
@require_subscriber
@require_playstore
def api_regenerate_public_token(build_id):
    from services.public_app_service import regenerate_download_token

    result = regenerate_download_token(session["username"], build_id)
    if not result:
        return jsonify({"error": "Link publico indisponivel"}), 404
    return jsonify(result)

@subscriber_bp.route("/api/apps", methods=["GET"])
@require_subscriber
def api_apps():
    return jsonify(get_user_builds(session["username"]))

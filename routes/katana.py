from flask import Blueprint, jsonify, redirect, render_template, request, session, url_for

from services.build_service import (
    build_download_response,
    build_status_payload,
    start_build,
)
from services.upload_validation import validate_icon_upload
from services.data import (
    add_history,
    authenticate_master,
    create_operator_user,
    delete_user_account,
    get_admin_dashboard_metrics,
    get_all_builds_detailed,
    is_user_expired,
    list_users,
    renew_license,
    toggle_user_status,
    update_user_fields,
    user_exists,
)
from services.session_guard import require_master

katana_bp = Blueprint("katana", __name__, url_prefix="/katana/admin")


@katana_bp.route("/login", methods=["GET"])
def login_page():
    if session.get("portal") == "katana" and session.get("username"):
        return redirect(url_for("katana.dashboard_page"))
    return render_template("katana/admin/login.html")


@katana_bp.route("/login", methods=["POST"])
def login_action():
    payload = request.get_json(silent=True) or request.form
    username = payload.get("username")
    password = payload.get("password")
    account = authenticate_master(username, password)

    if not account:
        return jsonify({"success": False, "message": "Credenciais invalidas"}), 401
    if is_user_expired(account):
        return jsonify({"success": False, "message": "Conta inativa"}), 401

    session.clear()
    session.permanent = True
    session["portal"] = "katana"
    session["username"] = username
    session["role"] = "owner"
    return jsonify({"success": True, "redirect": url_for("katana.dashboard_page")})


@katana_bp.route("/logout", methods=["POST"])
def logout_action():
    session.clear()
    return jsonify({"success": True, "redirect": url_for("katana.login_page")})


@katana_bp.route("/dashboard", methods=["GET"])
@require_master
def dashboard_page():
    return render_template("katana/admin/dashboard.html")


@katana_bp.route("/make", methods=["GET"])
@require_master
def make_page():
    return render_template("katana/admin/make.html")


@katana_bp.route("/users", methods=["GET"])
@require_master
def users_page():
    return render_template("katana/admin/users.html")


@katana_bp.route("/apps", methods=["GET"])
@require_master
def apps_page():
    return render_template("katana/admin/apps.html")


@katana_bp.route("/api/session", methods=["GET"])
@require_master
def api_session():
    return jsonify({"username": session["username"], "portal": "katana"})


@katana_bp.route("/api/dashboard/metrics", methods=["GET"])
@require_master
def api_dashboard_metrics():
    return jsonify(get_admin_dashboard_metrics())


@katana_bp.route("/api/build", methods=["POST"])
@require_master
def api_build():
    file = request.files.get("file")
    if not file or not file.filename.endswith(".apk"):
        return jsonify({"error": "Arquivo invalido"}), 400

    icon = request.files.get("icon")
    icon_ok, icon_error = validate_icon_upload(icon)
    if not icon_ok:
        return jsonify({"error": icon_error}), 400

    app_name = request.form.get("app_name", "App")
    build_id = start_build(
        session["username"],
        app_name,
        file,
        icon,
        persist=False,
        portal="katana",
    )
    return jsonify({"build_id": build_id, "ephemeral": True})


@katana_bp.route("/api/build/<build_id>/status", methods=["GET"])
@require_master
def api_build_status(build_id):
    from services.build_service import can_access_build

    if not can_access_build(build_id, "katana", session["username"]):
        return jsonify({"error": "Nao autorizado"}), 401
    return jsonify(build_status_payload(build_id))


@katana_bp.route("/api/build/<build_id>/download", methods=["GET"])
@require_master
def api_build_download(build_id):
    return build_download_response(build_id, "katana", session["username"])


@katana_bp.route("/api/users", methods=["GET"])
@require_master
def api_users():
    return jsonify(list_users())


@katana_bp.route("/api/users", methods=["POST"])
@require_master
def api_create_user():
    payload = request.get_json(silent=True) or {}
    username = payload.get("username")
    password = payload.get("password")
    license_days = payload.get("license_days", 30)
    daily_build_limit = payload.get("daily_build_limit", 3)

    if not username or not password:
        return jsonify({"success": False, "message": "Dados incompletos"}), 400
    if user_exists(username):
        return jsonify({"success": False, "message": "Usuario ja existe"}), 400

    create_operator_user(username, password, license_days, daily_build_limit)
    add_history(session["username"], "Criar Usuario", f"Operador: {username}", portal="katana")
    return jsonify({"success": True, "message": "Operador criado"})


@katana_bp.route("/api/users/<username>", methods=["PATCH"])
@require_master
def api_update_user(username):
    payload = request.get_json(silent=True) or {}
    fields = {}

    if "password" in payload:
        fields["password"] = payload["password"]
    if "status" in payload:
        fields["status"] = payload["status"]
    if "license_days" in payload:
        fields["license_days"] = payload["license_days"]
    if "license_expires_at" in payload:
        fields["license_expires_at"] = payload["license_expires_at"]
    if "daily_build_limit" in payload:
        fields["daily_build_limit"] = payload["daily_build_limit"]
    if payload.get("renew_days"):
        renew_license(username, int(payload["renew_days"]))
        return jsonify({"success": True, "message": "Licenca renovada"})

    if not fields:
        return jsonify({"success": False, "message": "Nada para atualizar"}), 400

    if not update_user_fields(username, fields):
        return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404

    return jsonify({"success": True, "message": "Usuario atualizado"})


@katana_bp.route("/api/users/<username>/toggle", methods=["POST"])
@require_master
def api_toggle_user(username):
    new_status = toggle_user_status(username)
    if not new_status:
        return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404
    return jsonify({"success": True, "status": new_status})


@katana_bp.route("/api/users/<username>", methods=["DELETE"])
@require_master
def api_delete_user(username):
    if not delete_user_account(username):
        return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404
    add_history(session["username"], "Deletar Usuario", username, portal="katana")
    return jsonify({"success": True, "message": "Usuario removido"})


@katana_bp.route("/api/apps", methods=["GET"])
@require_master
def api_apps():
    return jsonify(get_all_builds_detailed())

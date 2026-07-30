from flask import Blueprint, jsonify, redirect, render_template, request, session, url_for

from services.build_service import (
    build_download_response,
    build_status_payload,
    start_build,
)
from services.upload_validation import validate_apk_upload, validate_icon_upload
from services.data import (
    add_history,
    authenticate_master,
    create_operator_user,
    delete_user_account,
    extend_license,
    adjust_daily_build_limit,
    get_admin_dashboard_metrics,
    get_operator_builds_admin,
    get_activity_logs,
    get_activity_log_actions,
    is_user_expired,
    list_users,
    renew_license,
    toggle_user_status,
    update_user_fields,
    user_exists,
)
from services.payments import list_generated_invoices, list_received_payments
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

@katana_bp.route("/logs", methods=["GET"])
@require_master
def logs_page():
    return render_template("katana/admin/logs.html")

@katana_bp.route("/invoices", methods=["GET"])
@require_master
def invoices_page():
    return render_template("katana/admin/invoices.html")

@katana_bp.route("/payments", methods=["GET"])
@require_master
def payments_page():
    return render_template("katana/admin/payments.html")

@katana_bp.route("/api/session", methods=["GET"])
@require_master
def api_session():
    return jsonify({
        "username": session["username"],
        "portal": "katana",
        "role": session.get("role") or "owner",
    })

@katana_bp.route("/api/dashboard/metrics", methods=["GET"])
@require_master
def api_dashboard_metrics():
    return jsonify(get_admin_dashboard_metrics())

@katana_bp.route("/api/build", methods=["POST"])
@require_master
def api_build():
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
        persist=False,
        portal="katana",
    )
    return jsonify({"build_id": build_id})

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
    store = bool(payload.get("store", False))
    playstore = bool(payload.get("playstore", False))

    if not username or not password:
        return jsonify({"success": False, "message": "Dados incompletos"}), 400
    if user_exists(username):
        return jsonify({"success": False, "message": "Usuario ja existe"}), 400

    try:
        license_days = int(license_days)
        daily_build_limit = int(daily_build_limit)
    except (TypeError, ValueError):
        return jsonify({"success": False, "message": "Licença ou limite diário inválido"}), 400

    try:
        created_user = create_operator_user(
            username,
            password,
            license_days,
            daily_build_limit,
            store=store,
            playstore=playstore,
        )
        add_history(session["username"], "Criar Usuario", f"Operador: {username}", portal="katana")
    except ValueError as exc:
        return jsonify({"success": False, "message": str(exc)}), 400
    except Exception:
        return jsonify({"success": False, "message": "Erro ao criar operador"}), 500
    return jsonify({"success": True, "message": "Operador criado", "user": created_user})

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
        return jsonify({"success": True, "message": "Licença renovada"})

    if payload.get("add_days") is not None:
        try:
            add_days = int(payload["add_days"])
        except (TypeError, ValueError):
            return jsonify({"success": False, "message": "Dias invalidos"}), 400
        if add_days < 1:
            return jsonify({"success": False, "message": "Dias invalidos"}), 400
        try:
            new_expires = extend_license(username, add_days)
        except ValueError as exc:
            return jsonify({"success": False, "message": str(exc)}), 400
        if not new_expires:
            return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404
        add_history(
            session["username"],
            "Estender Licença",
            f"{username}: +{add_days} dias",
            portal="katana",
        )
        return jsonify(
            {
                "success": True,
                "message": f"+{add_days} dias adicionados",
                "license_expires_at": new_expires.isoformat(),
            }
        )

    if not fields:
        return jsonify({"success": False, "message": "Nada para atualizar"}), 400

    if not update_user_fields(username, fields):
        return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404

    return jsonify({"success": True, "message": "Usuario atualizado"})

@katana_bp.route("/api/users/<username>/extend-license", methods=["POST"])
@require_master
def api_extend_license(username):
    payload = request.get_json(silent=True) or {}
    raw_days = payload.get("days", payload.get("add_days"))
    try:
        days = int(raw_days)
    except (TypeError, ValueError):
        return jsonify({"success": False, "message": "Dias invalidos"}), 400
    if days == 0:
        return jsonify({"success": False, "message": "Dias invalidos"}), 400

    try:
        new_expires = extend_license(username, days)
    except ValueError as exc:
        return jsonify({"success": False, "message": str(exc)}), 400
    if not new_expires:
        return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404

    change_label = f"+{days}" if days > 0 else str(days)
    action_label = "Estender Licença" if days > 0 else "Reduzir Licença"
    message = (
        f"+{days} dias adicionados"
        if days > 0
        else f"{abs(days)} dias removidos"
    )
    add_history(
        session["username"],
        action_label,
        f"{username}: {change_label} dias",
        portal="katana",
    )
    return jsonify(
        {
            "success": True,
            "message": message,
            "license_expires_at": new_expires.isoformat(),
        }
    )

@katana_bp.route("/api/users/<username>/builds", methods=["GET"])
@require_master
def api_user_builds(username):
    builds = get_operator_builds_admin(username)
    if builds is None:
        return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404
    return jsonify({"success": True, "items": builds})

@katana_bp.route("/api/users/<username>/adjust-limit", methods=["POST"])
@require_master
def api_adjust_limit(username):
    payload = request.get_json(silent=True) or {}
    raw_delta = payload.get("delta", payload.get("adjust"))
    try:
        delta = int(raw_delta)
    except (TypeError, ValueError):
        return jsonify({"success": False, "message": "Ajuste inválido"}), 400
    if delta == 0:
        return jsonify({"success": False, "message": "Ajuste inválido"}), 400

    try:
        new_limit = adjust_daily_build_limit(username, delta)
    except ValueError as exc:
        return jsonify({"success": False, "message": str(exc)}), 400
    if new_limit is None:
        return jsonify({"success": False, "message": "Usuario nao encontrado"}), 404

    change_label = f"+{delta}" if delta > 0 else str(delta)
    add_history(
        session["username"],
        "Ajustar Limite",
        f"{username}: {change_label} uploads/dia",
        portal="katana",
    )
    message = (
        f"+{delta} no limite diário"
        if delta > 0
        else f"{abs(delta)} removidos do limite diário"
    )
    return jsonify(
        {
            "success": True,
            "message": message,
            "daily_build_limit": new_limit,
        }
    )

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

@katana_bp.route("/api/logs/actions", methods=["GET"])
@require_master
def api_log_actions():
    return jsonify(get_activity_log_actions())

@katana_bp.route("/api/logs", methods=["GET"])
@require_master
def api_logs():
    page = request.args.get("page", 1, type=int)
    action = (request.args.get("action") or "").strip() or None
    return jsonify(get_activity_logs(page=page, page_size=10, action=action))

@katana_bp.route("/api/invoices", methods=["GET"])
@require_master
def api_invoices():
    page = request.args.get("page", 1, type=int)
    return jsonify(list_generated_invoices(page=page, page_size=10))

@katana_bp.route("/api/payments", methods=["GET"])
@require_master
def api_payments():
    page = request.args.get("page", 1, type=int)
    return jsonify(list_received_payments(page=page, page_size=10))

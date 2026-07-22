import os
import threading
import time

from flask import jsonify, send_file

from config import Config
from services.apk import process_apk
from services.build_state import BUILD_STATUS
from services.data import get_build_record


def can_access_build(build_id, portal, username):
    info = BUILD_STATUS.get(build_id, {})
    return info.get("portal") == portal and info.get("owner") == username


def start_build(username, app_name, apk_file, icon_file, persist, portal):
    build_id = f"build_{int(time.time())}"
    filepath = os.path.join(Config.UPLOAD_FOLDER, f"{build_id}_orig.apk")
    apk_file.save(filepath)

    icon_path = None
    if icon_file and icon_file.filename:
        icon_path = os.path.join(Config.UPLOAD_FOLDER, f"{build_id}_icon.png")
        icon_file.save(icon_path)

    BUILD_STATUS[build_id] = {
        "status": "Iniciando...",
        "progress": 0,
        "portal": portal,
        "owner": username,
        "ephemeral": not persist,
    }

    thread = threading.Thread(
        target=process_apk,
        kwargs={
            "build_id": build_id,
            "user_apk_path": filepath,
            "custom_app_name": app_name,
            "username": username,
            "custom_icon_path": icon_path,
            "persist": persist,
            "portal": portal,
        },
    )
    thread.daemon = True
    thread.start()
    return build_id


def build_status_payload(build_id):
    info = BUILD_STATUS.get(build_id, {"status": "Desconhecido", "progress": 0})
    payload = {
        "status": info.get("status"),
        "progress": info.get("progress", 0),
    }
    if info.get("progress") == 100 and info.get("output_file"):
        payload["download_ready"] = True
        payload["output_file"] = info.get("output_file")
    return payload


def build_download_response(build_id, portal, username):
    output_file = None

    mem = BUILD_STATUS.get(build_id, {})
    if mem.get("portal") == portal and mem.get("owner") == username:
        if mem.get("progress") == 100 and mem.get("output_file"):
            output_file = mem["output_file"]

    if not output_file:
        record = get_build_record(build_id)
        if not record or record["status"] != "concluido" or not record.get("output_file"):
            return jsonify({"error": "Arquivo nao disponivel"}), 404
        if record["username"] != username:
            return jsonify({"error": "Nao autorizado"}), 401
        output_file = record["output_file"]

    file_path = os.path.join(Config.OUTPUT_FOLDER, output_file)
    if not os.path.exists(file_path):
        return jsonify({"error": "Arquivo nao disponivel"}), 404

    return send_file(file_path, as_attachment=True, download_name=output_file)


def _safe_unlink(path):
    try:
        if path and os.path.isfile(path):
            os.remove(path)
    except OSError:
        pass


def delete_user_build(username, build_id):
    from psycopg.rows import dict_row

    from services.data import add_history
    from services.database import get_connection

    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT b.id, b.build_id, b.status, b.output_file, b.icon_file, b.app_name
                FROM builds b
                JOIN users u ON u.id = b.user_id
                WHERE b.build_id = %s AND u.username = %s
                ORDER BY b.created_at DESC
                LIMIT 1
                """,
                (build_id, username),
            )
            record = cur.fetchone()
            if not record:
                return False, "not_found"
            if record["status"] == "processando":
                return False, "in_progress"

            if record.get("output_file"):
                _safe_unlink(os.path.join(Config.OUTPUT_FOLDER, record["output_file"]))
            if record.get("icon_file"):
                _safe_unlink(os.path.join(Config.OUTPUT_FOLDER, record["icon_file"]))
            _safe_unlink(os.path.join(Config.UPLOAD_FOLDER, f"{build_id}_orig.apk"))
            _safe_unlink(os.path.join(Config.UPLOAD_FOLDER, f"{build_id}_icon.png"))

            cur.execute("DELETE FROM builds WHERE id = %s", (record["id"],))
            deleted = cur.rowcount > 0

    BUILD_STATUS.pop(build_id, None)

    if deleted:
        add_history(
            username,
            "Excluir app",
            f"Build {build_id}: {record['app_name']}",
            portal="subscriber",
        )

    return deleted, None

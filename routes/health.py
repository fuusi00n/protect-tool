from flask import Blueprint, jsonify

from services.database import ping

health_bp = Blueprint("health", __name__)

@health_bp.route("/health")
def health():
    db_ok = ping()
    status = "ok" if db_ok else "degraded"
    code = 200 if db_ok else 503
    return jsonify({"status": status, "database": "ok" if db_ok else "error"}), code

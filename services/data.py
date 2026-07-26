import os
from datetime import datetime, timedelta

from psycopg.rows import dict_row

from config import Config
from services.database import get_connection, ping


def _format_display(dt):
    if isinstance(dt, datetime):
        return dt.strftime("%d/%m/%Y %H:%M:%S")
    return dt


def _iso(value):
    if value is None:
        return None
    if hasattr(value, "isoformat"):
        return value.isoformat()
    return value


def _user_row_to_account(row):
    return {
        "id": row["id"],
        "username": row["username"],
        "password": row["password"],
        "role": "operator",
        "status": row["status"],
        "license_days": row["license_days"],
        "license_expires_at": row["license_expires_at"],
        "total_builds": row["total_builds"],
        "successful_builds": row["successful_builds"],
        "failed_builds": row["failed_builds"],
        "daily_builds": row["daily_builds"],
        "daily_build_limit": row.get("daily_build_limit", 3),
        "created_at": row["created_at"],
    }


def _master_row_to_account(row):
    return {
        "id": row["id"],
        "username": row["username"],
        "password": row["password"],
        "role": "owner",
        "status": row["status"],
        "license_days": None,
        "license_expires_at": None,
        "total_builds": row["total_builds"],
        "successful_builds": row["successful_builds"],
        "failed_builds": row["failed_builds"],
        "daily_builds": 0,
        "daily_build_limit": None,
        "created_at": row["created_at"],
    }


def get_subscriber_account(username):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute("SELECT * FROM users WHERE username = %s", (username,))
            row = cur.fetchone()
            if row:
                return _user_row_to_account(row)
    return None


def get_master_account(username):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute("SELECT * FROM master WHERE username = %s", (username,))
            row = cur.fetchone()
            if row:
                return _master_row_to_account(row)
    return None


def authenticate_subscriber(username, password):
    account = get_subscriber_account(username)
    if account and account["password"] == password:
        return account
    return None


def authenticate_master(username, password):
    account = get_master_account(username)
    if account and account["password"] == password:
        return account
    return None


def is_master(username):
    return get_master_account(username) is not None


def is_user_expired(account):
    if not account:
        return True
    if account.get("role") == "owner":
        return account.get("status") == "inactive"
    if account.get("status") == "inactive":
        return True

    license_expires_at = account.get("license_expires_at")
    if license_expires_at and isinstance(license_expires_at, datetime):
        now = datetime.now(tz=license_expires_at.tzinfo) if license_expires_at.tzinfo else datetime.now()
        if now > license_expires_at:
            return True
    return False


def user_exists(username):
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                "SELECT 1 FROM master WHERE username = %s UNION SELECT 1 FROM users WHERE username = %s",
                (username, username),
            )
            return cur.fetchone() is not None


def _format_reset_countdown(seconds):
    seconds = max(0, int(seconds or 0))
    hours, rem = divmod(seconds, 3600)
    mins = rem // 60
    if hours > 0:
        return f"{hours}h {mins}m"
    if mins > 0:
        return f"{mins}m"
    return "menos de 1 minuto"


def get_daily_build_quota(username):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT daily_builds,
                       daily_build_limit,
                       date_trunc('day', NOW()) + INTERVAL '1 day' AS reset_at,
                       EXTRACT(EPOCH FROM (
                           date_trunc('day', NOW()) + INTERVAL '1 day' - NOW()
                       ))::bigint AS reset_in_seconds
                FROM users
                WHERE username = %s
                """,
                (username,),
            )
            row = cur.fetchone()

    if not row:
        return None

    reset_in_seconds = max(0, int(row["reset_in_seconds"] or 0))
    daily_build_limit = row["daily_build_limit"]
    daily_builds = row["daily_builds"]

    return {
        "daily_builds": daily_builds,
        "daily_build_limit": daily_build_limit,
        "remaining_today": max(0, daily_build_limit - daily_builds),
        "can_build": daily_builds < daily_build_limit,
        "reset_at": _iso(row["reset_at"]),
        "reset_in_seconds": reset_in_seconds,
        "reset_in_label": _format_reset_countdown(reset_in_seconds),
    }


def build_limit_reached_payload(username):
    quota = get_daily_build_quota(username) or {}
    limit = quota.get("daily_build_limit", "-")
    reset_label = quota.get("reset_in_label", "—")
    return {
        "error": "Limite diario de builds atingido",
        "daily_build_limit": quota.get("daily_build_limit"),
        "daily_builds": quota.get("daily_builds"),
        "reset_at": quota.get("reset_at"),
        "reset_in_label": reset_label,
        "message": (
            f"Limite diário de builds atingido. "
            f"Limite diário: {limit}. "
            f"Tempo para reset do limite: {reset_label}."
        ),
    }


def can_start_build(username):
    quota = get_daily_build_quota(username)
    if not quota:
        return False
    return quota["can_build"]


def add_history(username, action, details, portal="subscriber"):
    with get_connection() as conn:
        with conn.cursor() as cur:
            user_id = None
            if portal == "subscriber":
                cur.execute("SELECT id FROM users WHERE username = %s", (username,))
                row = cur.fetchone()
                user_id = row[0] if row else None

            cur.execute(
                """
                INSERT INTO activity_logs (user_id, username, action, details)
                VALUES (%s, %s, %s, %s)
                """,
                (user_id, username, action, details),
            )

            cur.execute(
                """
                DELETE FROM activity_logs
                WHERE id NOT IN (
                    SELECT id FROM activity_logs
                    ORDER BY created_at DESC
                    LIMIT 500
                )
                """
            )


def add_build_history(username, app_name, status, build_id, output_file=None):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                "SELECT id, daily_builds, daily_build_limit FROM users WHERE username = %s",
                (username,),
            )
            user = cur.fetchone()
            if not user:
                return

            if status == "processando":
                cur.execute(
                    """
                    UPDATE users
                    SET daily_builds = daily_builds + 1,
                        updated_at = NOW()
                    WHERE id = %s AND daily_builds < daily_build_limit
                    """,
                    (user["id"],),
                )

            cur.execute(
                """
                INSERT INTO builds (user_id, build_id, app_name, status, output_file)
                VALUES (%s, %s, %s, %s, %s)
                """,
                (user["id"], build_id, app_name, status, output_file),
            )

            cur.execute(
                """
                DELETE FROM builds
                WHERE user_id = %s
                AND id NOT IN (
                    SELECT id FROM builds
                    WHERE user_id = %s
                    ORDER BY created_at DESC
                    LIMIT 500
                )
                """,
                (user["id"], user["id"]),
            )


def update_amplification(username, build_status):
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                UPDATE users
                SET total_builds = total_builds + 1,
                    successful_builds = successful_builds + CASE WHEN %s = 'concluido' THEN 1 ELSE 0 END,
                    failed_builds = failed_builds + CASE WHEN %s = 'erro' THEN 1 ELSE 0 END,
                    updated_at = NOW()
                WHERE username = %s
                """,
                (build_status, build_status, username),
            )


def _coerce_int(value, default=None):
    if value is None or value == "":
        return default
    try:
        return int(value)
    except (TypeError, ValueError):
        raise ValueError(f"Valor numerico invalido: {value!r}") from None


def create_operator_user(username, password, license_days, daily_build_limit=3):
    license_days = _coerce_int(license_days, default=None)
    daily_build_limit = _coerce_int(daily_build_limit, default=3)
    license_expires_at = datetime.now() + timedelta(days=license_days) if license_days else None
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                INSERT INTO users (
                    username, password, status, license_days,
                    license_expires_at, daily_build_limit
                ) VALUES (%s, %s, 'active', %s, %s, %s)
                """,
                (username, password, license_days, license_expires_at, daily_build_limit),
            )


def list_users():
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT u.*,
                    (SELECT COUNT(*) FROM builds b WHERE b.user_id = u.id) AS builds_count
                FROM users u
                ORDER BY u.username
                """
            )
            rows = cur.fetchall()
            result = []
            for row in rows:
                result.append(
                    {
                        "username": row["username"],
                        "status": row["status"],
                        "license_expires_at": _iso(row["license_expires_at"]),
                        "license_days": row["license_days"],
                        "daily_builds": row["daily_builds"],
                        "daily_build_limit": row["daily_build_limit"],
                        "builds_count": row["builds_count"],
                        "total_builds": row["total_builds"],
                        "successful_builds": row["successful_builds"],
                        "failed_builds": row["failed_builds"],
                    }
                )
            return result


def update_user_fields(username, fields):
    allowed = {
        "password": "password = %s",
        "status": "status = %s",
        "license_days": "license_days = %s",
        "license_expires_at": "license_expires_at = %s",
        "daily_build_limit": "daily_build_limit = %s",
    }
    updates = []
    values = []
    for key, clause in allowed.items():
        if key in fields and fields[key] is not None:
            updates.append(clause)
            values.append(fields[key])

    if not updates:
        return False

    updates.append("updated_at = NOW()")
    values.append(username)

    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                f"UPDATE users SET {', '.join(updates)} WHERE username = %s",
                values,
            )
            return cur.rowcount > 0


def renew_license(target_user, days):
    license_expires_at = datetime.now() + timedelta(days=days)
    return update_user_fields(
        target_user,
        {"license_expires_at": license_expires_at, "license_days": days},
    )


def toggle_user_status(target_user):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute("SELECT status FROM users WHERE username = %s", (target_user,))
            row = cur.fetchone()
            if not row:
                return None
            new_status = "inactive" if row["status"] == "active" else "active"
            cur.execute(
                "UPDATE users SET status = %s, updated_at = NOW() WHERE username = %s",
                (new_status, target_user),
            )
            return new_status


def delete_user_account(target_user):
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute("DELETE FROM users WHERE username = %s", (target_user,))
            return cur.rowcount > 0


def get_subscriber_metrics(username):
    account = get_subscriber_account(username)
    if not account:
        return {}

    from services.public_app_service import get_user_download_stats

    download_stats = get_user_download_stats(username)
    quota = get_daily_build_quota(username) or {}
    return {
        "username": account["username"],
        "status": account["status"],
        "license_expires_at": _iso(account["license_expires_at"]),
        "daily_builds": account["daily_builds"],
        "daily_build_limit": account["daily_build_limit"],
        "total_builds": account["total_builds"],
        "successful_builds": account["successful_builds"],
        "failed_builds": account["failed_builds"],
        "remaining_today": quota.get(
            "remaining_today",
            max(0, account["daily_build_limit"] - account["daily_builds"]),
        ),
        "reset_at": quota.get("reset_at"),
        "reset_in_label": quota.get("reset_in_label"),
        "reset_in_seconds": quota.get("reset_in_seconds"),
        "total_public_downloads": download_stats["total_public_downloads"],
        "public_apps_count": download_stats["public_apps_count"],
    }


def get_admin_dashboard_metrics():
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute("SELECT COUNT(*) FROM users")
            users_count = cur.fetchone()[0]
            cur.execute("SELECT COUNT(*) FROM users WHERE status = 'active'")
            active_users = cur.fetchone()[0]
            cur.execute("SELECT COUNT(*) FROM builds")
            builds_count = cur.fetchone()[0]
            cur.execute("SELECT COUNT(*) FROM builds WHERE status = 'concluido'")
            completed = cur.fetchone()[0]
            cur.execute("SELECT COUNT(*) FROM builds WHERE status = 'erro'")
            failed = cur.fetchone()[0]
            cur.execute("SELECT COUNT(*) FROM builds WHERE status = 'processando'")
            processing = cur.fetchone()[0]
            cur.execute("SELECT COALESCE(SUM(download_count), 0) FROM builds")
            total_downloads = cur.fetchone()[0]

    return {
        "users_count": users_count,
        "active_users": active_users,
        "builds_count": builds_count,
        "completed_builds": completed,
        "failed_builds": failed,
        "processing_builds": processing,
        "total_public_downloads": int(total_downloads or 0),
        "server_health": "ok" if ping() else "degraded",
    }


def get_build_record(build_id):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT b.build_id, b.app_name, b.status, b.output_file, u.username
                FROM builds b
                JOIN users u ON u.id = b.user_id
                WHERE b.build_id = %s
                ORDER BY b.created_at DESC
                LIMIT 1
                """,
                (build_id,),
            )
            return cur.fetchone()


def _builds_to_json(rows, include_username=False):
    from services.public_app_service import build_public_url

    builds = []
    for row in rows:
        output_file = row.get("output_file")
        can_download = (
            row["status"] == "concluido"
            and output_file
            and os.path.exists(os.path.join(Config.OUTPUT_FOLDER, output_file))
        )
        item = {
            "build_id": row["build_id"],
            "app_name": row["app_name"],
            "status": row["status"],
            "timestamp": _iso(row["created_at"]),
            "date_display": _format_display(row["created_at"]),
            "can_download": can_download,
            "download_count": int(row.get("download_count") or 0),
        }
        if include_username and "username" in row:
            item["username"] = row["username"]
        if output_file:
            item["output_file"] = output_file
        slug = row.get("download_slug")
        token = row.get("download_token")
        if slug and token and row["status"] == "concluido":
            item["public_url"] = build_public_url(slug, token)
            item["download_slug"] = slug
        builds.append(item)
    return builds


def get_user_builds(username):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT b.build_id, b.app_name, b.status, b.created_at, b.output_file,
                       b.download_slug, b.download_token, b.download_count
                FROM builds b
                JOIN users u ON u.id = b.user_id
                WHERE u.username = %s
                  AND b.status != 'processando'
                ORDER BY b.created_at DESC
                LIMIT 500
                """,
                (username,),
            )
            return _builds_to_json(cur.fetchall())


def get_activity_logs(page=1, page_size=10):
    page = max(1, int(page or 1))
    page_size = max(1, min(100, int(page_size or 10)))
    offset = (page - 1) * page_size

    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute("SELECT COUNT(*) AS total FROM activity_logs")
            total = int(cur.fetchone()["total"] or 0)

            cur.execute(
                """
                SELECT id, username, action, details, created_at
                FROM activity_logs
                ORDER BY created_at DESC
                LIMIT %s OFFSET %s
                """,
                (page_size, offset),
            )
            rows = cur.fetchall()

    items = []
    for row in rows:
        items.append({
            "id": row["id"],
            "username": row["username"],
            "action": row["action"],
            "details": row["details"] or "",
            "timestamp": _iso(row["created_at"]),
            "date_display": _format_display(row["created_at"]),
        })

    total_pages = max(1, (total + page_size - 1) // page_size) if total else 1
    return {
        "items": items,
        "page": page,
        "page_size": page_size,
        "total": total,
        "total_pages": total_pages,
    }

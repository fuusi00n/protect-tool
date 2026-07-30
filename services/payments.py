from datetime import datetime, timezone
from decimal import Decimal, InvalidOperation

from psycopg.rows import dict_row

from services.database import get_connection

class PaymentSettingsError(ValueError):
    pass

class InvalidPaymentPlan(ValueError):
    pass

PLAN_DEFINITIONS = {
    "1d": {
        "duration_days": 1,
        "amount_key": "payment_amount_1d",
        "daily_build_limit": 1,
    },
    "15d": {
        "duration_days": 15,
        "amount_key": "payment_amount_15d",
        "daily_build_limit": 2,
    },
    "30d": {
        "duration_days": 30,
        "amount_key": "payment_amount_30d",
        "daily_build_limit": 5,
    },
}

PLAN_SETTINGS_KEYS = tuple(
    definition["amount_key"] for definition in PLAN_DEFINITIONS.values()
)

def _serialize_plan(row):
    amount = Decimal(row["amount"]).quantize(Decimal("0.01"))
    currency = row["currency"].strip().upper()
    if currency == "USD":
        display_amount = f"{amount:.2f}"
    else:
        display_amount = f"{amount:.2f}".replace(".", ",")
    return {
        "code": row["code"],
        "duration_days": row["duration_days"],
        "daily_build_limit": row["daily_build_limit"],
        "amount": amount,
        "display_amount": display_amount,
        "currency": currency,
    }

def get_payment_plans():
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT code, duration_days, daily_build_limit, amount, currency
                FROM plans
                WHERE is_active = TRUE
                ORDER BY sort_order, code
                """
            )
            rows = cur.fetchall()

    if not rows:
        raise PaymentSettingsError("Nenhum plano ativo configurado.")

    return {row["code"]: _serialize_plan(row) for row in rows}

def get_payment_plan(plan_code):
    if not isinstance(plan_code, str) or not plan_code.strip():
        raise InvalidPaymentPlan("Plano de pagamento invalido.")

    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT code, duration_days, daily_build_limit, amount, currency
                FROM plans
                WHERE code = %s AND is_active = TRUE
                """,
                (plan_code,),
            )
            row = cur.fetchone()

    if row is None:
        raise InvalidPaymentPlan("Plano de pagamento invalido.")
    return _serialize_plan(row)

def create_payment(
    invoice_id,
    amount,
    currency,
    status,
    checkout_url,
    plan_code=None,
    duration_days=None,
    source="plan",
    product_id=None,
    username=None,
):
    source = (source or "plan").strip().lower()
    if source not in {"plan", "store"}:
        source = "plan"
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                INSERT INTO payments
                    (invoice_id, amount, currency, status, checkout_url,
                     plan_code, duration_days, source, product_id, username)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                ON CONFLICT (invoice_id) DO NOTHING
                """,
                (
                    invoice_id,
                    amount,
                    currency,
                    status,
                    checkout_url,
                    plan_code,
                    duration_days,
                    source,
                    product_id,
                    username,
                ),
            )

def get_payment(invoice_id):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT invoice_id, amount, currency, status, checkout_url,
                       plan_code, duration_days, source, product_id, username,
                       created_at, updated_at, settled_at
                FROM payments WHERE invoice_id = %s
                """,
                (invoice_id,),
            )
            return cur.fetchone()

def update_payment_status(invoice_id, status):
    with get_connection() as conn:
        with conn.cursor() as cur:
            if status == "Settled":
                settled_at = datetime.now(timezone.utc)
                cur.execute(
                    """
                    UPDATE payments
                    SET status = %s,
                        updated_at = NOW(),
                        settled_at = COALESCE(settled_at, %s)
                    WHERE invoice_id = %s
                    """,
                    (status, settled_at, invoice_id),
                )
            else:
                cur.execute(
                    """
                    UPDATE payments
                    SET status = %s, updated_at = NOW()
                    WHERE invoice_id = %s
                    """,
                    (status, invoice_id),
                )
            return cur.rowcount > 0

def _format_money(amount, currency="USD"):
    try:
        value = Decimal(amount).quantize(Decimal("0.01"))
    except (InvalidOperation, TypeError):
        return "—"
    currency = (currency or "USD").strip().upper()
    if currency == "USD":
        return f"$ {value:.2f}"
    formatted = f"{value:.2f}".replace(".", ",")
    return f"{currency} {formatted}"

def _format_sats(value):
    if value is None:
        return "—"
    try:
        return f"{int(value):,}".replace(",", ".")
    except (TypeError, ValueError):
        return "—"

def _short_id(value, size=8):
    text = str(value or "").strip()
    if not text:
        return "—"
    if len(text) <= size + 3:
        return text
    return f"{text[:size]}…"

def _short_address(value):
    text = str(value or "").strip()
    if not text:
        return "—"
    if len(text) <= 16:
        return text
    return f"{text[:8]}…{text[-6:]}"

def _format_dt(value):
    if value is None:
        return "—"
    if hasattr(value, "strftime"):
        return value.strftime("%d/%m/%Y %H:%M")
    return str(value)

def _iso_dt(value):
    if value is None:
        return None
    if hasattr(value, "isoformat"):
        return value.isoformat()
    return str(value)

def _paginate(total, page, page_size):
    page = max(1, int(page or 1))
    page_size = max(1, min(100, int(page_size or 10)))
    total = int(total or 0)
    total_pages = max(1, (total + page_size - 1) // page_size) if total else 1
    if page > total_pages:
        page = total_pages
    offset = (page - 1) * page_size
    return page, page_size, total, total_pages, offset

def list_generated_invoices(page=1, page_size=10):
    page, page_size, _, _, _ = _paginate(0, page, page_size)
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute("SELECT COUNT(*) AS total FROM invoices")
            total = int(cur.fetchone()["total"] or 0)
            page, page_size, total, total_pages, offset = _paginate(total, page, page_size)
            cur.execute(
                """
                SELECT
                    i.id,
                    i.invoice_id,
                    i.description,
                    i.fiat_amount,
                    i.currency,
                    i.expected_sats,
                    i.received_sats,
                    i.confirmed_sats,
                    i.bitcoin_address,
                    i.status,
                    i.created_at,
                    i.expires_at,
                    i.settled_at,
                    p.source,
                    p.product_id,
                    p.plan_code,
                    p.username,
                    p.checkout_url
                FROM invoices i
                LEFT JOIN payments p ON p.invoice_id::text = i.invoice_id::text
                ORDER BY i.created_at DESC
                LIMIT %s OFFSET %s
                """,
                (page_size, offset),
            )
            rows = cur.fetchall()

    items = []
    for row in rows:
        source = (row.get("source") or "plan").strip().lower()
        label = row.get("description") or "—"
        if source == "store" and row.get("product_id"):
            label = row.get("product_id")
        elif source == "plan" and row.get("plan_code"):
            label = f"Plano {row.get('plan_code')}"
        items.append(
            {
                "id": row["id"],
                "invoice_id": str(row["invoice_id"]),
                "invoice_short": _short_id(row["invoice_id"]),
                "description": label,
                "amount_display": _format_money(row.get("fiat_amount"), row.get("currency")),
                "sats_display": _format_sats(row.get("expected_sats")),
                "status": row.get("status") or "—",
                "source": source,
                "username": row.get("username") or "—",
                "address_short": _short_address(row.get("bitcoin_address")),
                "checkout_url": row.get("checkout_url") or f"/checkout/{row['invoice_id']}",
                "created_at": _iso_dt(row.get("created_at")),
                "date_display": _format_dt(row.get("created_at")),
                "expires_display": _format_dt(row.get("expires_at")),
            }
        )

    return {
        "items": items,
        "page": page,
        "page_size": page_size,
        "total": total,
        "total_pages": total_pages,
    }

def list_received_payments(page=1, page_size=10):
    page, page_size, _, _, _ = _paginate(0, page, page_size)
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                "SELECT COUNT(*) AS total FROM payments WHERE status = %s",
                ("Settled",),
            )
            total = int(cur.fetchone()["total"] or 0)
            page, page_size, total, total_pages, offset = _paginate(total, page, page_size)
            cur.execute(
                """
                SELECT
                    p.id,
                    p.invoice_id,
                    p.amount,
                    p.currency,
                    p.status,
                    p.source,
                    p.product_id,
                    p.plan_code,
                    p.duration_days,
                    p.username,
                    p.expected_sats,
                    p.confirmed_sats,
                    p.checkout_url,
                    p.created_at,
                    p.settled_at,
                    i.description,
                    i.bitcoin_address,
                    i.expected_sats AS invoice_expected_sats,
                    i.confirmed_sats AS invoice_confirmed_sats
                FROM payments p
                LEFT JOIN invoices i ON i.invoice_id::text = p.invoice_id::text
                WHERE p.status = %s
                ORDER BY COALESCE(p.settled_at, p.updated_at, p.created_at) DESC
                LIMIT %s OFFSET %s
                """,
                ("Settled", page_size, offset),
            )
            rows = cur.fetchall()

    items = []
    for row in rows:
        source = (row.get("source") or "plan").strip().lower()
        if source == "store" and row.get("product_id"):
            item_label = row.get("product_id")
        elif source == "plan" and row.get("plan_code"):
            days = row.get("duration_days")
            item_label = f"Plano {row.get('plan_code')}" + (f" ({days}d)" if days else "")
        else:
            item_label = row.get("description") or "—"
        sats = row.get("confirmed_sats") or row.get("invoice_confirmed_sats") or row.get("expected_sats") or row.get("invoice_expected_sats")
        items.append(
            {
                "id": row["id"],
                "invoice_id": str(row["invoice_id"]),
                "invoice_short": _short_id(row["invoice_id"]),
                "item_label": item_label,
                "amount_display": _format_money(row.get("amount"), row.get("currency")),
                "sats_display": _format_sats(sats),
                "status": row.get("status") or "Settled",
                "source": source,
                "username": row.get("username") or "—",
                "address_short": _short_address(row.get("bitcoin_address")),
                "checkout_url": row.get("checkout_url") or f"/checkout/{row['invoice_id']}",
                "settled_at": _iso_dt(row.get("settled_at")),
                "date_display": _format_dt(row.get("settled_at") or row.get("created_at")),
                "created_display": _format_dt(row.get("created_at")),
            }
        )

    return {
        "items": items,
        "page": page,
        "page_size": page_size,
        "total": total,
        "total_pages": total_pages,
    }

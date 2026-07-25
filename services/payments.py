from datetime import datetime, timezone
from decimal import Decimal, InvalidOperation

from psycopg.rows import dict_row

from services.database import get_connection


class PaymentSettingsError(ValueError):
    pass


class InvalidPaymentPlan(ValueError):
    pass


PAYMENT_PLANS = {
    "7d": {
        "duration_days": 7,
        "amount_key": "payment_amount_7d",
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


def get_payment_plans():
    keys = ("payment_currency",) + tuple(
        plan["amount_key"] for plan in PAYMENT_PLANS.values()
    )
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                "SELECT key, value FROM settings WHERE key = ANY(%s)",
                (list(keys),),
            )
            settings = {row["key"]: row["value"] for row in cur.fetchall()}

    missing = [key for key in keys if not settings.get(key)]
    if missing:
        raise PaymentSettingsError(
            "Configuracao de pagamento ausente: " + ", ".join(missing)
        )

    currency = settings["payment_currency"].strip().upper()
    if len(currency) != 3 or not currency.isalpha():
        raise PaymentSettingsError("payment_currency invalido")

    plans = {}
    for plan_code, definition in PAYMENT_PLANS.items():
        amount_key = definition["amount_key"]
        try:
            amount = Decimal(settings[amount_key])
            if not amount.is_finite() or amount <= 0:
                raise InvalidOperation
            amount = amount.quantize(Decimal("0.01"))
        except (InvalidOperation, ValueError) as exc:
            raise PaymentSettingsError(f"{amount_key} invalido") from exc
        plans[plan_code] = {
            "code": plan_code,
            "duration_days": definition["duration_days"],
            "daily_build_limit": definition["daily_build_limit"],
            "amount": amount,
            "display_amount": f"{amount:.2f}".replace(".", ","),
            "currency": currency,
        }
    return plans


def get_payment_plan(plan_code):
    if not isinstance(plan_code, str) or plan_code not in PAYMENT_PLANS:
        raise InvalidPaymentPlan("Plano de pagamento invalido.")
    return get_payment_plans()[plan_code]


def create_payment(invoice_id, amount, currency, status, checkout_url,
                   plan_code, duration_days):
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                INSERT INTO payments
                    (invoice_id, amount, currency, status, checkout_url,
                     plan_code, duration_days)
                VALUES (%s, %s, %s, %s, %s, %s, %s)
                ON CONFLICT (invoice_id) DO NOTHING
                """,
                (invoice_id, amount, currency, status, checkout_url,
                 plan_code, duration_days),
            )


def get_payment(invoice_id):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT invoice_id, amount, currency, status, checkout_url,
                       plan_code, duration_days,
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
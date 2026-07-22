from datetime import datetime, timezone
from decimal import Decimal, InvalidOperation

from psycopg.rows import dict_row

from services.database import get_connection


class PaymentSettingsError(ValueError):
    pass


def get_payment_settings():
    keys = ("payment_amount", "payment_currency")
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
            "Configuração de pagamento ausente: " + ", ".join(missing)
        )
    try:
        amount = Decimal(settings["payment_amount"])
        if not amount.is_finite() or amount <= 0:
            raise InvalidOperation
        amount = amount.quantize(Decimal("0.01"))
    except (InvalidOperation, ValueError) as exc:
        raise PaymentSettingsError("payment_amount inválido") from exc

    currency = settings["payment_currency"].strip().upper()
    if len(currency) != 3 or not currency.isalpha():
        raise PaymentSettingsError("payment_currency inválido")
    return amount, currency


def create_payment(invoice_id, amount, currency, status, checkout_url):
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                INSERT INTO payments
                    (invoice_id, amount, currency, status, checkout_url)
                VALUES (%s, %s, %s, %s, %s)
                ON CONFLICT (invoice_id) DO NOTHING
                """,
                (invoice_id, amount, currency, status, checkout_url),
            )


def get_payment(invoice_id):
    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT invoice_id, amount, currency, status, checkout_url,
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
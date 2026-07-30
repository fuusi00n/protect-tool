from datetime import datetime, timedelta, timezone
from uuid import uuid4

from psycopg.rows import dict_row

from config import Config
from services.bitcoin import derive_address
from services.database import get_connection

def create_invoice(description, fiat_amount, currency, rate, rate_source, sats):
    invoice_id = uuid4()
    expires_at = datetime.now(timezone.utc) + timedelta(
        minutes=Config.BITCOIN_INVOICE_MINUTES
    )
    with get_connection() as connection:
        with connection.cursor(row_factory=dict_row) as cursor:
            cursor.execute(
                """
                SELECT next_receive_index
                FROM wallet_state
                WHERE id = 1
                FOR UPDATE
                """
            )
            state = cursor.fetchone()
            if state is None:
                raise RuntimeError(
                    "wallet_state ausente. Execute init_bitcoin_db.py."
                )
            index = max(
                int(state["next_receive_index"]),
                Config.BITCOIN_START_INDEX,
            )
            address = derive_address(
                Config.BITCOIN_DESCRIPTOR,
                index,
                Config.BITCOIN_NETWORK,
            )
            cursor.execute(
                """
                UPDATE wallet_state
                SET next_receive_index = %s, updated_at = NOW()
                WHERE id = 1
                """,
                (index + 1,),
            )
            cursor.execute(
                """
                INSERT INTO invoices (
                    invoice_id, description, fiat_amount, currency,
                    btc_rate, rate_source, expected_sats, bitcoin_address,
                    derivation_index, required_confirmations, expires_at
                )
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                """,
                (
                    invoice_id,
                    description,
                    fiat_amount,
                    currency,
                    rate,
                    rate_source,
                    sats,
                    address,
                    index,
                    Config.BITCOIN_REQUIRED_CONFIRMATIONS,
                    expires_at,
                ),
            )
    return get_invoice(str(invoice_id))

def get_invoice(invoice_id):
    with get_connection() as connection:
        with connection.cursor(row_factory=dict_row) as cursor:
            cursor.execute(
                "SELECT * FROM invoices WHERE invoice_id = %s",
                (invoice_id,),
            )
            return cursor.fetchone()

def monitor_candidates(limit=100):
    with get_connection() as connection:
        with connection.cursor(row_factory=dict_row) as cursor:
            cursor.execute(
                """
                SELECT *
                FROM invoices
                WHERE created_at > NOW() - INTERVAL '7 days'
                  AND (
                    status IN ('New', 'Processing')
                    OR (
                        status IN ('Expired', 'Settled')
                        AND (
                            last_checked_at IS NULL
                            OR last_checked_at < NOW() - INTERVAL '10 minutes'
                        )
                    )
                  )
                ORDER BY COALESCE(last_checked_at, created_at), created_at
                LIMIT %s
                """,
                (limit,),
            )
            return cursor.fetchall()

def apply_snapshot(invoice, outputs):
    now = datetime.now(timezone.utc)
    received = sum(output["value_sats"] for output in outputs)
    confirmed = sum(
        output["value_sats"]
        for output in outputs
        if output["confirmations"] >= invoice["required_confirmations"]
    )
    if confirmed >= invoice["expected_sats"]:
        status = "Settled"
    elif received > 0:
        status = "Processing"
    elif now >= invoice["expires_at"]:
        status = "Expired"
    else:
        status = "New"

    with get_connection() as connection:
        with connection.cursor() as cursor:
            cursor.execute(
                "UPDATE payment_outputs SET active = FALSE WHERE invoice_id = %s",
                (invoice["id"],),
            )
            for output in outputs:
                cursor.execute(
                    """
                    INSERT INTO payment_outputs (
                        invoice_id, txid, vout, value_sats, confirmed,
                        block_height, confirmations, active
                    )
                    VALUES (%s, %s, %s, %s, %s, %s, %s, TRUE)
                    ON CONFLICT (txid, vout) DO UPDATE SET
                        value_sats = EXCLUDED.value_sats,
                        confirmed = EXCLUDED.confirmed,
                        block_height = EXCLUDED.block_height,
                        confirmations = EXCLUDED.confirmations,
                        active = TRUE,
                        last_seen_at = NOW()
                    """,
                    (
                        invoice["id"],
                        output["txid"],
                        output["vout"],
                        output["value_sats"],
                        output["confirmed"],
                        output["block_height"],
                        output["confirmations"],
                    ),
                )
            cursor.execute(
                """
                UPDATE invoices
                SET status = %s,
                    received_sats = %s,
                    confirmed_sats = %s,
                    detected_at = CASE
                        WHEN %s > 0 THEN COALESCE(detected_at, NOW())
                        ELSE NULL
                    END,
                    settled_at = CASE
                        WHEN %s = 'Settled' THEN COALESCE(settled_at, NOW())
                        ELSE NULL
                    END,
                    last_checked_at = NOW(),
                    updated_at = NOW()
                WHERE id = %s
                """,
                (
                    status,
                    received,
                    confirmed,
                    received,
                    status,
                    invoice["id"],
                ),
            )
    return status

def serialize_invoice(invoice):
    result = dict(invoice)
    result.pop("id", None)
    result.pop("derivation_index", None)
    for key in ("fiat_amount", "btc_rate"):
        result[key] = str(result[key])
    for key, value in list(result.items()):
        if isinstance(value, datetime):
            result[key] = value.isoformat()
    return result

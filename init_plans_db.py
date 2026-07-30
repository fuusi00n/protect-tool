from decimal import Decimal, InvalidOperation
from pathlib import Path

from psycopg.rows import dict_row

from services.database import get_connection
from services.payments import PLAN_SETTINGS_KEYS, PLAN_DEFINITIONS

BASE_DIR = Path(__file__).resolve().parent
SCHEMA_PATH = BASE_DIR / "schema_plans.sql"

def _load_settings(cur):
    keys = list(PLAN_SETTINGS_KEYS) + ["payment_currency"]
    cur.execute(
        "SELECT key, value FROM settings WHERE key = ANY(%s)",
        (keys,),
    )
    return {row["key"]: row["value"] for row in cur.fetchall()}

def main():
    schema = SCHEMA_PATH.read_text(encoding="utf-8")

    with get_connection() as conn:
        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(schema)
            settings = _load_settings(cur)

            missing = [key for key in PLAN_SETTINGS_KEYS if not settings.get(key)]
            if missing:
                raise SystemExit(
                    "Configuracao de plano ausente em settings: " + ", ".join(missing)
                )

            currency = settings["payment_currency"].strip().upper()
            if len(currency) != 3 or not currency.isalpha():
                raise SystemExit("payment_currency invalido em settings.")

            for index, (code, definition) in enumerate(PLAN_DEFINITIONS.items(), start=1):
                amount_key = definition["amount_key"]
                try:
                    amount = Decimal(settings[amount_key])
                    if not amount.is_finite() or amount <= 0:
                        raise InvalidOperation
                    amount = amount.quantize(Decimal("0.01"))
                except (InvalidOperation, ValueError) as exc:
                    raise SystemExit(f"{amount_key} invalido em settings.") from exc

                cur.execute(
                    """
                    INSERT INTO plans (
                        code, duration_days, daily_build_limit,
                        amount, currency, sort_order, is_active, updated_at
                    ) VALUES (
                        %(code)s, %(duration_days)s, %(daily_build_limit)s,
                        %(amount)s, %(currency)s, %(sort_order)s, TRUE, NOW()
                    )
                    ON CONFLICT (code) DO UPDATE SET
                        duration_days = EXCLUDED.duration_days,
                        daily_build_limit = EXCLUDED.daily_build_limit,
                        amount = EXCLUDED.amount,
                        currency = EXCLUDED.currency,
                        sort_order = EXCLUDED.sort_order,
                        is_active = TRUE,
                        updated_at = NOW()
                    """,
                    {
                        "code": code,
                        "duration_days": definition["duration_days"],
                        "daily_build_limit": definition["daily_build_limit"],
                        "amount": amount,
                        "currency": currency,
                        "sort_order": index,
                    },
                )

            cur.execute(
                "DELETE FROM settings WHERE key = ANY(%s)",
                (list(PLAN_SETTINGS_KEYS),),
            )
            deleted = cur.rowcount

            cur.execute(
                """
                SELECT code, duration_days, daily_build_limit, amount, currency, sort_order
                FROM plans
                ORDER BY sort_order, code
                """
            )
            rows = cur.fetchall()

    print(f"Planos migrados: {len(rows)}")
    print(f"Linhas removidas de settings: {deleted}")
    for row in rows:
        print(
            f"  - {row['code']}: {row['duration_days']}d, "
            f"{row['currency']} {row['amount']}, "
            f"{row['daily_build_limit']} builds/dia"
        )

if __name__ == "__main__":
    main()

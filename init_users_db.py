from pathlib import Path

from psycopg.rows import dict_row

from services.database import get_connection

BASE_DIR = Path(__file__).resolve().parent
SCHEMA_PATH = BASE_DIR / "schema_users.sql"

def main():
    schema = SCHEMA_PATH.read_text(encoding="utf-8")

    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute(schema)

        with conn.cursor(row_factory=dict_row) as cur:
            cur.execute(
                """
                SELECT column_name, data_type, column_default, is_nullable
                FROM information_schema.columns
                WHERE table_name = 'users'
                  AND column_name IN ('store', 'playstore')
                ORDER BY column_name
                """
            )
            rows = cur.fetchall()

    print(f"Colunas adicionadas/verificadas: {len(rows)}")
    for row in rows:
        print(
            f"  - {row['column_name']}: {row['data_type']} "
            f"default={row['column_default']} nullable={row['is_nullable']}"
        )

if __name__ == "__main__":
    main()

import os
import sys
from pathlib import Path

import psycopg
from dotenv import load_dotenv

load_dotenv()

MIGRATIONS_DIR = Path(__file__).resolve().parent
MIGRATION_FILES = sorted(MIGRATIONS_DIR.glob("*.sql"))


def _conninfo(dbname):
    return (
        f"host={os.environ.get('POSTGRES_HOST', 'localhost')} "
        f"port={os.environ.get('POSTGRES_PORT', '5432')} "
        f"dbname={dbname} "
        f"user={os.environ.get('POSTGRES_USER', '')} "
        f"password={os.environ.get('POSTGRES_PASSWORD', '')}"
    )


def ensure_database(db_name):
    with psycopg.connect(_conninfo("postgres"), autocommit=True) as conn:
        with conn.cursor() as cur:
            cur.execute("SELECT 1 FROM pg_database WHERE datname = %s", (db_name,))
            if not cur.fetchone():
                cur.execute(f'CREATE DATABASE "{db_name}"')
                print(f"[+] Banco '{db_name}' criado.")
            else:
                print(f"[=] Banco '{db_name}' já existe.")


def run_migrations():
    db_name = os.environ.get("POSTGRES_DB", "dropper")
    ensure_database(db_name)

    with psycopg.connect(_conninfo(db_name)) as conn:
        with conn.cursor() as cur:
            cur.execute(
                """
                CREATE TABLE IF NOT EXISTS schema_migrations (
                    filename VARCHAR(255) PRIMARY KEY,
                    applied_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
                )
                """
            )
            conn.commit()

            for migration_file in MIGRATION_FILES:
                filename = migration_file.name
                cur.execute(
                    "SELECT 1 FROM schema_migrations WHERE filename = %s",
                    (filename,),
                )
                if cur.fetchone():
                    print(f"[=] Migration já aplicada: {filename}")
                    continue

                sql = migration_file.read_text(encoding="utf-8")
                cur.execute(sql)
                cur.execute(
                    "INSERT INTO schema_migrations (filename) VALUES (%s)",
                    (filename,),
                )
                conn.commit()
                print(f"[+] Migration aplicada: {filename}")


if __name__ == "__main__":
    try:
        run_migrations()
    except Exception as exc:
        print(f"[x] Erro ao executar migrations: {exc}", file=sys.stderr)
        sys.exit(1)

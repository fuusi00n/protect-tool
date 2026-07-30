import os
from contextlib import contextmanager

import psycopg
from dotenv import load_dotenv

_BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
load_dotenv(os.path.join(_BASE_DIR, ".env"))

def get_conninfo(dbname=None):
    return (
        f"host={os.environ.get('POSTGRES_HOST', 'localhost')} "
        f"port={os.environ.get('POSTGRES_PORT', '5432')} "
        f"dbname={dbname or os.environ.get('POSTGRES_DB', 'dropper')} "
        f"user={os.environ.get('POSTGRES_USER', '')} "
        f"password={os.environ.get('POSTGRES_PASSWORD', '')}"
    )

@contextmanager
def get_connection():
    with psycopg.connect(get_conninfo()) as conn:
        try:
            yield conn
            conn.commit()
        except Exception:
            conn.rollback()
            raise

def ping():
    with get_connection() as conn:
        with conn.cursor() as cur:
            cur.execute("SELECT 1")
            return cur.fetchone()[0] == 1

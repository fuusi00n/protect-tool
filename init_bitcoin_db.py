from pathlib import Path

from services.database import get_connection


def main():
    schema = Path(__file__).with_name("schema_bitcoin.sql").read_text(encoding="utf-8")
    with get_connection() as connection:
        with connection.cursor() as cursor:
            cursor.execute(schema)
    print("Schema Bitcoin inicializado.")


if __name__ == "__main__":
    main()

"""Merge only BITCOIN_* keys from a source env into the VPS .env (preserve other keys)."""
from pathlib import Path
import sys

BITCOIN_KEYS = [
    "BITCOIN_DESCRIPTOR",
    "BITCOIN_NETWORK",
    "BITCOIN_START_INDEX",
    "BITCOIN_INVOICE_MINUTES",
    "BITCOIN_REQUIRED_CONFIRMATIONS",
    "BITCOIN_MEMPOOL_API",
    "BITCOIN_BLOCKSTREAM_API",
    "BITCOIN_RATE_API",
    "BITCOIN_MONITOR_INTERVAL",
    "BITCOIN_MONITOR_ENABLED",
]


def parse_env(text: str) -> dict[str, str]:
    values = {}
    for line in text.splitlines():
        raw = line.strip()
        if not raw or raw.startswith("#") or "=" not in raw:
            continue
        key, value = raw.split("=", 1)
        values[key.strip()] = value
    return values


def main() -> int:
    if len(sys.argv) != 3:
        print("usage: merge_bitcoin_env.py <source.env> <target.env>")
        return 2
    source = Path(sys.argv[1])
    target = Path(sys.argv[2])
    src = parse_env(source.read_text(encoding="utf-8"))
    text = target.read_text(encoding="utf-8") if target.exists() else ""
    existing = parse_env(text)

    updates = {}
    for key in BITCOIN_KEYS:
        if key in src and src[key] != "":
            updates[key] = src[key]

    if not updates:
        print("no bitcoin keys to merge")
        return 1

    lines = []
    seen = set()
    for line in text.splitlines():
        raw = line.strip()
        if raw and not raw.startswith("#") and "=" in raw:
            key = raw.split("=", 1)[0].strip()
            if key in updates:
                lines.append(f"{key}={updates[key]}")
                seen.add(key)
                continue
        lines.append(line)

    missing = [k for k in updates if k not in seen]
    if missing:
        if lines and lines[-1].strip():
            lines.append("")
        lines.append("# Pagamentos Bitcoin on-chain")
        for key in missing:
            lines.append(f"{key}={updates[key]}")
            seen.add(key)

    target.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")
    print("merged", len(updates), "bitcoin keys")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

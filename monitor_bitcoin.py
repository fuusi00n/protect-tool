import argparse
import logging
import os
import threading
import time

from config import Config
from services.bitcoin import ConfigurationError, fetch_outputs, validate_configuration
from services.bitcoin_invoices import apply_snapshot, monitor_candidates
from services.payments import update_payment_status


logger = logging.getLogger("bitcoin-monitor")

_lock = threading.Lock()
_thread = None
_stop = threading.Event()


def scan_once(limit=100):
    invoices = monitor_candidates(limit)
    for invoice in invoices:
        try:
            outputs, provider = fetch_outputs(
                invoice["bitcoin_address"],
                Config.BITCOIN_NETWORK,
                Config.BITCOIN_MEMPOOL_API,
                Config.BITCOIN_BLOCKSTREAM_API,
            )
            previous = invoice["status"]
            current = apply_snapshot(invoice, outputs)
            if current != previous:
                update_payment_status(str(invoice["invoice_id"]), current)
                logger.info(
                    "invoice=%s status=%s->%s provider=%s",
                    invoice["invoice_id"],
                    previous,
                    current,
                    provider,
                )
        except Exception as exc:
            logger.warning(
                "invoice=%s erro=%s",
                invoice["invoice_id"],
                exc,
            )
    logger.info("Ciclo concluído: %s cobrança(s).", len(invoices))


def _loop(interval):
    while not _stop.wait(0):
        try:
            scan_once()
        except Exception as exc:
            logger.exception("Falha no ciclo do monitor: %s", exc)
        if _stop.wait(interval):
            break


def _should_autostart():
    if os.environ.get("BITCOIN_MONITOR_ENABLED", "1").strip().lower() in {
        "0",
        "false",
        "no",
        "off",
    }:
        return False
    if (
        "WERKZEUG_SERVER_FD" in os.environ
        and os.environ.get("WERKZEUG_RUN_MAIN") != "true"
    ):
        return False
    return True


def start_background_monitor(interval=None):
    global _thread

    if not _should_autostart():
        return False

    interval = int(interval or Config.BITCOIN_MONITOR_INTERVAL)
    if interval < 10:
        interval = 10

    with _lock:
        if _thread is not None and _thread.is_alive():
            return False
        try:
            validate_configuration(
                Config.BITCOIN_DESCRIPTOR,
                Config.BITCOIN_NETWORK,
            )
        except ConfigurationError as exc:
            logger.warning("Monitor Bitcoin nao iniciado: %s", exc)
            return False

        _stop.clear()
        _thread = threading.Thread(
            target=_loop,
            args=(interval,),
            name="bitcoin-monitor",
            daemon=True,
        )
        _thread.start()
        logger.info("Monitor Bitcoin iniciado (intervalo=%ss).", interval)
        return True


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--once", action="store_true")
    parser.add_argument("--interval", type=int, default=None)
    args = parser.parse_args()
    interval = int(args.interval or Config.BITCOIN_MONITOR_INTERVAL)
    if interval < 10:
        parser.error("--interval deve ser pelo menos 10")

    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s %(levelname)s %(message)s",
    )
    validate_configuration(
        Config.BITCOIN_DESCRIPTOR,
        Config.BITCOIN_NETWORK,
    )
    if args.once:
        scan_once()
        return
    start_background_monitor(interval)
    while True:
        time.sleep(3600)


if __name__ == "__main__":
    main()

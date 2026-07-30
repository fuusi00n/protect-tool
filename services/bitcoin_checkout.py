
from decimal import Decimal

from flask import current_app, has_request_context, url_for

from services.bitcoin import (
    BitcoinError,
    fiat_to_sats,
    get_btc_rate,
    validate_configuration,
)
from services.bitcoin_invoices import create_invoice
from services.payments import create_payment

def _validate_and_quote(amount, currency):
    validate_configuration(
        current_app.config["BITCOIN_DESCRIPTOR"],
        current_app.config["BITCOIN_NETWORK"],
    )
    rate, rate_source = get_btc_rate(
        currency,
        current_app.config["BITCOIN_RATE_API"],
    )
    sats = fiat_to_sats(amount, rate)
    return rate, rate_source, sats

def _checkout_url(invoice_id):
    if has_request_context():
        return url_for("payments.checkout", invoice_id=invoice_id)
    return f"/checkout/{invoice_id}"

def create_bitcoin_checkout(description, amount, currency):
    amount = Decimal(str(amount)).quantize(Decimal("0.01"))
    currency = (currency or "USD").strip().upper()
    rate, rate_source, sats = _validate_and_quote(amount, currency)
    invoice = create_invoice(
        description,
        amount,
        currency,
        rate,
        rate_source,
        sats,
    )
    invoice_id = str(invoice["invoice_id"])
    checkout_url = _checkout_url(invoice_id)
    return {
        "invoice": invoice,
        "invoice_id": invoice_id,
        "checkout_url": checkout_url,
        "amount": amount,
        "currency": currency,
        "rate": rate,
        "rate_source": rate_source,
        "sats": sats,
    }

def create_plan_checkout(plan):
    description = f"Katana · {plan['duration_days']} dias"
    result = create_bitcoin_checkout(
        description,
        plan["amount"],
        plan["currency"],
    )
    create_payment(
        result["invoice_id"],
        result["amount"],
        result["currency"],
        result["invoice"].get("status", "New"),
        result["checkout_url"],
        plan_code=plan["code"],
        duration_days=plan["duration_days"],
        source="plan",
    )
    return result

__all__ = [
    "BitcoinError",
    "create_bitcoin_checkout",
    "create_plan_checkout",
]

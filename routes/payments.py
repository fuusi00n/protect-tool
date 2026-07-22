from flask import Blueprint, current_app, jsonify, render_template, request

from services.btcpay import BTCPayClient, BTCPayConfigurationError, BTCPayError
from services.payments import (
    PaymentSettingsError,
    create_payment,
    get_payment,
    get_payment_settings,
    update_payment_status,
)


payments_bp = Blueprint("payments", __name__)


def _client():
    return BTCPayClient(
        current_app.config["BTCPAY_URL"],
        current_app.config["BTCPAY_STORE_ID"],
        current_app.config["BTCPAY_API_KEY"],
        current_app.config["BTCPAY_WEBHOOK_SECRET"],
    )


def _serialize_payment(payment):
    data = dict(payment)
    data["amount"] = str(data["amount"])
    for key in ("created_at", "updated_at", "settled_at"):
        if data.get(key) is not None:
            data[key] = data[key].isoformat()
    return data


@payments_bp.get("/")
def landing_page():
    try:
        amount, currency = get_payment_settings()
        settings_error = None
    except PaymentSettingsError as exc:
        amount, currency = None, None
        settings_error = str(exc)
    return render_template(
        "payment.html",
        amount=amount,
        currency=currency,
        settings_error=settings_error,
    )


@payments_bp.post("/api/payments")
def api_create_payment():
    try:
        amount, currency = get_payment_settings()
        invoice = _client().create_invoice(amount, currency)
        invoice_id = invoice["id"]
        checkout_url = invoice["checkoutLink"]
        create_payment(
            invoice_id,
            amount,
            currency,
            invoice.get("status", "New"),
            checkout_url,
        )
        return jsonify({"invoice_id": invoice_id, "checkout_url": checkout_url}), 201
    except PaymentSettingsError as exc:
        return jsonify({"error": str(exc)}), 503
    except BTCPayConfigurationError as exc:
        current_app.logger.error("Configuração BTCPay incompleta: %s", exc)
        return jsonify({"error": "Pagamento temporariamente indisponível."}), 503
    except (BTCPayError, KeyError) as exc:
        current_app.logger.error("Falha ao criar invoice BTCPay: %s", exc)
        return jsonify({"error": "Não foi possível gerar o pagamento."}), 502


@payments_bp.get("/api/payments/<invoice_id>")
def api_payment_status(invoice_id):
    payment = get_payment(invoice_id)
    if payment is None:
        return jsonify({"error": "Cobrança não encontrada."}), 404
    return jsonify(_serialize_payment(payment))


@payments_bp.post("/api/webhooks/btcpay")
def api_btcpay_webhook():
    raw_body = request.get_data(cache=True)
    try:
        client = _client()
        if not client.verify_webhook_signature(
            raw_body, request.headers.get("BTCPay-Sig")
        ):
            return jsonify({"error": "Assinatura inválida."}), 401
    except BTCPayConfigurationError as exc:
        current_app.logger.error("Webhook BTCPay não configurado: %s", exc)
        return jsonify({"error": "Webhook não configurado."}), 503

    event = request.get_json(silent=True) or {}
    invoice_id = event.get("invoiceId")
    status = client.status_for_event(event.get("type"))
    if invoice_id and status:
        update_payment_status(invoice_id, status)
    return jsonify({"received": True})
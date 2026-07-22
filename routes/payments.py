from flask import Blueprint, current_app, jsonify, make_response, render_template, request

from services.btcpay import BTCPayClient, BTCPayConfigurationError, BTCPayError
from services.payments import (
    InvalidPaymentPlan,
    PaymentSettingsError,
    create_payment,
    get_payment,
    get_payment_plan,
    get_payment_plans,
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
def under_construction():
    response = make_response(render_template("under_construction.html"))
    response.headers["X-Robots-Tag"] = "noindex, nofollow"
    return response


@payments_bp.get("/bypass")
def landing_page():
    try:
        plans = get_payment_plans()
        settings_error = None
    except PaymentSettingsError as exc:
        plans = {}
        settings_error = str(exc)
    response = make_response(
        render_template("payment.html", plans=plans, settings_error=settings_error)
    )
    response.headers["X-Robots-Tag"] = "noindex, nofollow"
    return response


@payments_bp.get("/robots.txt")
def robots_txt():
    return current_app.send_static_file("robots.txt")

@payments_bp.post("/api/payments")
def api_create_payment():
    try:
        payload = request.get_json(silent=True) or {}
        plan = get_payment_plan(payload.get("plan_code"))
        invoice = _client().create_invoice(
            plan["amount"],
            plan["currency"],
            metadata={
                "planCode": plan["code"],
                "durationDays": plan["duration_days"],
            },
        )
        invoice_id = invoice["id"]
        checkout_url = invoice["checkoutLink"]
        create_payment(
            invoice_id,
            plan["amount"],
            plan["currency"],
            invoice.get("status", "New"),
            checkout_url,
            plan["code"],
            plan["duration_days"],
        )
        return jsonify({
            "invoice_id": invoice_id,
            "checkout_url": checkout_url,
            "plan_code": plan["code"],
        }), 201
    except InvalidPaymentPlan as exc:
        return jsonify({"error": str(exc)}), 400
    except PaymentSettingsError as exc:
        return jsonify({"error": str(exc)}), 503
    except BTCPayConfigurationError as exc:
        current_app.logger.error("Configuracao BTCPay incompleta: %s", exc)
        return jsonify({"error": "Pagamento temporariamente indisponivel."}), 503
    except (BTCPayError, KeyError) as exc:
        current_app.logger.error("Falha ao criar invoice BTCPay: %s", exc)
        return jsonify({"error": "Nao foi possivel gerar o pagamento."}), 502


@payments_bp.get("/api/payments/<invoice_id>")
def api_payment_status(invoice_id):
    payment = get_payment(invoice_id)
    if payment is None:
        return jsonify({"error": "Cobranca nao encontrada."}), 404
    return jsonify(_serialize_payment(payment))


@payments_bp.post("/api/webhooks/btcpay")
def api_btcpay_webhook():
    raw_body = request.get_data(cache=True)
    try:
        client = _client()
        if not client.verify_webhook_signature(
            raw_body, request.headers.get("BTCPay-Sig")
        ):
            return jsonify({"error": "Assinatura invalida."}), 401
    except BTCPayConfigurationError as exc:
        current_app.logger.error("Webhook BTCPay nao configurado: %s", exc)
        return jsonify({"error": "Webhook nao configurado."}), 503

    event = request.get_json(silent=True) or {}
    invoice_id = event.get("invoiceId")
    status = client.status_for_event(event.get("type"))
    if invoice_id and status:
        update_payment_status(invoice_id, status)
    return jsonify({"received": True})
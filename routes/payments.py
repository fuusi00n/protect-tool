import base64
from decimal import Decimal
from io import BytesIO

import qrcode
from flask import (
    Blueprint,
    current_app,
    jsonify,
    make_response,
    render_template,
    request,
    url_for,
)
from qrcode.constants import ERROR_CORRECT_H

from services.bitcoin import (
    BitcoinError,
    fiat_to_sats,
    get_btc_rate,
    validate_configuration,
)
from services.bitcoin_invoices import (
    create_invoice,
    get_invoice,
    serialize_invoice,
)
from services.payments import (
    InvalidPaymentPlan,
    PaymentSettingsError,
    create_payment,
    get_payment,
    get_payment_plan,
    get_payment_plans,
)


payments_bp = Blueprint("payments", __name__)


def _serialize_payment(payment):
    data = dict(payment)
    data["amount"] = str(data["amount"])
    for key in ("created_at", "updated_at", "settled_at"):
        if data.get(key) is not None:
            data[key] = data[key].isoformat()
    return data


def _bitcoin_uri(invoice):
    amount = Decimal(invoice["expected_sats"]) / Decimal(100_000_000)
    return f"bitcoin:{invoice['bitcoin_address']}?amount={amount:.8f}"


def _qr_data_uri(value):
    qr = qrcode.QRCode(
        version=None,
        error_correction=ERROR_CORRECT_H,
        box_size=10,
        border=4,
    )
    qr.add_data(value)
    qr.make(fit=True)
    image = qr.make_image(fill_color="black", back_color="white")
    stream = BytesIO()
    image.save(stream, format="PNG")
    encoded = base64.b64encode(stream.getvalue()).decode("ascii")
    return f"data:image/png;base64,{encoded}"


def _plan_description(plan):
    return f"Katana · {plan['duration_days']} dias"


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
        validate_configuration(
            current_app.config["BITCOIN_DESCRIPTOR"],
            current_app.config["BITCOIN_NETWORK"],
        )
        rate, source = get_btc_rate(
            plan["currency"],
            current_app.config["BITCOIN_RATE_API"],
        )
        sats = fiat_to_sats(plan["amount"], rate)
        invoice = create_invoice(
            _plan_description(plan),
            plan["amount"],
            plan["currency"],
            rate,
            source,
            sats,
        )
        invoice_id = str(invoice["invoice_id"])
        checkout_url = url_for("payments.checkout", invoice_id=invoice_id)
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
    except BitcoinError as exc:
        current_app.logger.error("Falha Bitcoin: %s", exc)
        return jsonify({"error": "Pagamento temporariamente indisponivel."}), 503
    except Exception:
        current_app.logger.exception("Falha ao criar cobranca Bitcoin")
        return jsonify({"error": "Nao foi possivel gerar o pagamento."}), 500


@payments_bp.get("/api/payments/<invoice_id>")
def api_payment_status(invoice_id):
    payment = get_payment(invoice_id)
    if payment is None:
        return jsonify({"error": "Cobranca nao encontrada."}), 404
    return jsonify(_serialize_payment(payment))


@payments_bp.get("/checkout/<uuid:invoice_id>")
def checkout(invoice_id):
    invoice = get_invoice(str(invoice_id))
    if invoice is None:
        response = make_response(
            render_template("checkout.html", invoice=None),
            404,
        )
        response.headers["X-Robots-Tag"] = "noindex, nofollow"
        return response
    uri = _bitcoin_uri(invoice)
    response = make_response(
        render_template(
            "checkout.html",
            invoice=invoice,
            bitcoin_uri=uri,
            qr=_qr_data_uri(uri),
            btc_amount=(
                f"{Decimal(invoice['expected_sats']) / Decimal(100_000_000):.8f}"
            ),
        )
    )
    response.headers["X-Robots-Tag"] = "noindex, nofollow"
    return response


@payments_bp.get("/api/invoices/<uuid:invoice_id>")
def api_invoice(invoice_id):
    invoice = get_invoice(str(invoice_id))
    if invoice is None:
        return jsonify({"error": "Cobranca nao encontrada."}), 404
    response = jsonify(serialize_invoice(invoice))
    response.headers["Cache-Control"] = "no-store"
    return response

import hashlib
import hmac
import json
import urllib.error
import urllib.request


class BTCPayError(RuntimeError):
    pass


class BTCPayConfigurationError(BTCPayError):
    pass


class BTCPayClient:
    EVENT_STATUSES = {
        "InvoiceCreated": "New",
        "InvoiceReceivedPayment": "Processing",
        "InvoiceProcessing": "Processing",
        "InvoiceSettled": "Settled",
        "InvoiceExpired": "Expired",
        "InvoiceInvalid": "Invalid",
    }

    def __init__(self, base_url, store_id, api_key, webhook_secret, timeout=15):
        self.base_url = (base_url or "").rstrip("/")
        self.store_id = store_id or ""
        self.api_key = api_key or ""
        self.webhook_secret = webhook_secret or ""
        self.timeout = timeout

    def validate_api_configuration(self):
        missing = [name for name, value in (
            ("BTCPAY_URL", self.base_url),
            ("BTCPAY_STORE_ID", self.store_id),
            ("BTCPAY_API_KEY", self.api_key),
        ) if not value]
        if missing:
            raise BTCPayConfigurationError(
                "Configuração BTCPay incompleta: " + ", ".join(missing)
            )

    def create_invoice(self, amount, currency, metadata=None):
        self.validate_api_configuration()
        invoice_metadata = {"source": "landing-page"}
        invoice_metadata.update(metadata or {})
        return self._request(
            f"/api/v1/stores/{self.store_id}/invoices",
            method="POST",
            payload={
                "amount": str(amount),
                "currency": currency,
                "metadata": invoice_metadata,
                "checkout": {"redirectAutomatically": False},
            },
        )

    def verify_webhook_signature(self, raw_body, received_signature):
        if not self.webhook_secret:
            raise BTCPayConfigurationError("BTCPAY_WEBHOOK_SECRET não configurado")
        expected = "sha256=" + hmac.new(
            self.webhook_secret.encode("utf-8"), raw_body, hashlib.sha256
        ).hexdigest()
        return hmac.compare_digest(expected, received_signature or "")

    @classmethod
    def status_for_event(cls, event_type):
        return cls.EVENT_STATUSES.get(event_type)

    def _request(self, path, method="GET", payload=None):
        body = json.dumps(payload).encode("utf-8") if payload is not None else None
        api_request = urllib.request.Request(
            self.base_url + path,
            data=body,
            method=method,
            headers={
                "Authorization": f"token {self.api_key}",
                "Content-Type": "application/json",
                "Accept": "application/json",
            },
        )
        try:
            with urllib.request.urlopen(api_request, timeout=self.timeout) as response:
                return json.loads(response.read().decode("utf-8"))
        except urllib.error.HTTPError as exc:
            detail = exc.read().decode("utf-8", errors="replace")
            raise BTCPayError(
                f"BTCPay recusou a solicitação (HTTP {exc.code}): {detail[:300]}"
            ) from exc
        except (urllib.error.URLError, TimeoutError) as exc:
            raise BTCPayError("Não foi possível conectar ao BTCPay Server") from exc
        except json.JSONDecodeError as exc:
            raise BTCPayError("Resposta inválida do BTCPay Server") from exc
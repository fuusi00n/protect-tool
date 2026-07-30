import json
import time
import urllib.error
import urllib.parse
import urllib.request
from decimal import Decimal, InvalidOperation, ROUND_CEILING

from embit import networks
from embit.descriptor import Descriptor

class BitcoinError(RuntimeError):
    pass

class ConfigurationError(BitcoinError):
    pass

class ProviderError(BitcoinError):
    pass

NETWORK_ALIASES = {
    "main": "main",
    "mainnet": "main",
    "test": "test",
    "testnet": "test",
    "signet": "signet",
}

def normalize_network(value):
    network = NETWORK_ALIASES.get((value or "").strip().lower())
    if network is None:
        raise ConfigurationError("A rede deve ser main, test ou signet.")
    return network

def validate_configuration(descriptor, network):
    if not (descriptor or "").strip():
        raise ConfigurationError("BITCOIN_DESCRIPTOR não configurado.")
    normalize_network(network)
    try:
        parsed = Descriptor.from_string(descriptor.strip())
        parsed.derive(0)
    except Exception as exc:
        raise ConfigurationError("BITCOIN_DESCRIPTOR inválido.") from exc

def derive_address(descriptor, index, network):
    validate_configuration(descriptor, network)
    try:
        parsed = Descriptor.from_string(descriptor.strip())
        derived = parsed.derive(int(index))
        address = derived.address(networks.NETWORKS[normalize_network(network)])
    except Exception as exc:
        raise ConfigurationError(
            f"Não foi possível derivar o endereço de índice {index}."
        ) from exc
    if not address:
        raise ConfigurationError("O descriptor não produz um endereço.")
    return address

def _request(url, *, json_response=True, timeout=12):
    request = urllib.request.Request(
        url,
        headers={
            "Accept": "application/json",
            "User-Agent": "Katana-Bitcoin-Payments/1.0",
        },
    )
    try:
        with urllib.request.urlopen(request, timeout=timeout) as response:
            body = response.read().decode("utf-8")
    except urllib.error.HTTPError as exc:
        retry_after = exc.headers.get("Retry-After")
        detail = f"; Retry-After={retry_after}" if retry_after else ""
        raise ProviderError(f"HTTP {exc.code} ao consultar {url}{detail}") from exc
    except (urllib.error.URLError, TimeoutError, OSError) as exc:
        raise ProviderError(f"Falha ao consultar {url}") from exc
    if not json_response:
        return body.strip()
    try:
        return json.loads(body)
    except json.JSONDecodeError as exc:
        raise ProviderError(f"Resposta JSON inválida de {url}") from exc

def get_btc_rate(currency, base_url):
    quote = (currency or "").strip().lower()
    if len(quote) != 3 or not quote.isalpha():
        raise ProviderError("Moeda inválida.")
    query = urllib.parse.urlencode(
        {
            "ids": "bitcoin",
            "vs_currencies": quote,
            "include_last_updated_at": "true",
            "precision": "full",
        }
    )
    payload = _request(f"{base_url.rstrip('/')}/simple/price?{query}")
    try:
        bitcoin = payload["bitcoin"]
        rate = Decimal(str(bitcoin[quote]))
        updated_at = int(bitcoin.get("last_updated_at", 0))
        if not rate.is_finite() or rate <= 0:
            raise InvalidOperation
        if updated_at and time.time() - updated_at > 300:
            raise ProviderError("A cotação retornada está desatualizada.")
    except (KeyError, TypeError, ValueError, InvalidOperation) as exc:
        raise ProviderError("A API retornou uma cotação inválida.") from exc
    return rate, "coingecko"

def fiat_to_sats(amount, rate):
    try:
        result = (
            Decimal(str(amount)) * Decimal(100_000_000) / Decimal(str(rate))
        ).to_integral_value(rounding=ROUND_CEILING)
    except (InvalidOperation, ValueError, ZeroDivisionError) as exc:
        raise ProviderError("Não foi possível calcular os satoshis.") from exc
    if result <= 0:
        raise ProviderError("O valor calculado em satoshis é inválido.")
    return int(result)

def explorer_bases(network, mempool_base, blockstream_base):
    normalized = normalize_network(network)
    mempool = mempool_base.rstrip("/")
    blockstream = blockstream_base.rstrip("/")
    if normalized != "main":
        suffix = "testnet" if normalized == "test" else "signet"
        if mempool == "https://mempool.space/api":
            mempool = f"https://mempool.space/{suffix}/api"
        if blockstream == "https://blockstream.info/api":
            blockstream = f"https://blockstream.info/{suffix}/api"
    return (("mempool.space", mempool), ("blockstream", blockstream))

def _address_outputs(base_url, address):
    encoded = urllib.parse.quote(address, safe="")
    transactions = _request(f"{base_url}/address/{encoded}/txs")
    if not isinstance(transactions, list):
        raise ProviderError("O explorador retornou transações inválidas.")

    tip_height = None
    outputs = []
    for transaction in transactions:
        txid = transaction.get("txid")
        status = transaction.get("status") or {}
        confirmed = bool(status.get("confirmed"))
        block_height = status.get("block_height") if confirmed else None
        for vout, output in enumerate(transaction.get("vout") or []):
            if output.get("scriptpubkey_address") != address:
                continue
            value = int(output.get("value") or 0)
            if not txid or value <= 0:
                continue
            if confirmed and tip_height is None:
                tip_height = int(
                    _request(
                        f"{base_url}/blocks/tip/height",
                        json_response=False,
                    )
                )
            confirmations = (
                max(0, tip_height - int(block_height) + 1) if confirmed else 0
            )
            outputs.append(
                {
                    "txid": txid,
                    "vout": vout,
                    "value_sats": value,
                    "confirmed": confirmed,
                    "block_height": block_height,
                    "confirmations": confirmations,
                }
            )
    return outputs

def fetch_outputs(address, network, mempool_base, blockstream_base):
    failures = []
    for provider, base_url in explorer_bases(
        network, mempool_base, blockstream_base
    ):
        try:
            return _address_outputs(base_url, address), provider
        except ProviderError as exc:
            failures.append(f"{provider}: {exc}")
    raise ProviderError("; ".join(failures))

# Analysis workspace

## Tools (locais neste Mac)

- `../tools/apktool.jar` — Apktool **2.11.1**
- `../tools/jadx/` — jadx **1.5.1**
- Java: Homebrew OpenJDK 17 (`/opt/homebrew/opt/openjdk@17`)
- Python crypto: `analysis/.venv` + `pycryptodome`

## Decompiled

| Sample | apktool | jadx |
|--------|---------|------|
| `Pneus_Bellenzier 1 .apk` | `bellenzier1_apktool/` | `bellenzier1_jadx/` |
| `Wi-Fi.apk` | `wifi_apktool/` | `wifi_jadx/` |

## Extracted payloads

```bash
# Bellenzier (stdlib only)
python3 extracted/decrypt_bellenzier1.py

# Wi-Fi (precisa pycryptodome)
analysis/.venv/bin/python extracted/decrypt_wifi_asset.py
```

Artefatos gerados:

- `extracted/bellenzier1_payload.apk` — LCG decrypt → `PK\x03\x04`
- `extracted/wifi_index_77e6.pak` — AES-CTR decrypt → ZIP com entries ofuscadas

Ver `../04-CONFIRMACAO-EVIDENCIA.md` para validação do plano `03`.

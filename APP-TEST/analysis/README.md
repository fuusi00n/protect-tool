# Analysis workspace

## Tools
- `tools/jadx/` — jadx 1.5.6 CLI
- `tools/apktool.jar` — decode smali/resources

## Decompiled
- `bellenzier1_apktool/` / `bellenzier1_jadx/`
- `wifi_apktool/` / `wifi_jadx/`

## Extracted payloads
```powershell
python extracted\decrypt_wifi_asset.py
python extracted\decrypt_bellenzier1.py
```

See `../02-COMPARATIVO-BELLENZIER-VS-WIFI.md` for findings and code changes.

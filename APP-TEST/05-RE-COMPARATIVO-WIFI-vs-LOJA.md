# Análise Reversa Comparativa: Wi-Fi.apk vs Loja_Bellenzier.apk

**Data:** 2026-07-23  
**Autor:** Pentest autorizado  
**Escopo:** Engenharia reversa profunda, comparação de lógica, criptografia e diferencial Play Protect

---

## 1. Identificação dos APKs

| Atributo | Wi-Fi.apk (referência) | Loja_Bellenzier.apk (build dropper) |
|---|---|---|
| Package | `com.turbo.live` | `com.app.mobile.kp3br9` |
| compileSdk | 36 (Android 16) | 34 (Android 14) |
| DEX principal | 1 × `classes.dex` (1.739.608 B) | `classes.dex` (60.860 B) + `classes2.dex` (4.505.204 B) |
| Asset payload | `assets/locale_ko.db` (5.4 MB) | `assets/locale_de.db` (5.2 MB) |
| Entries ZIP | 953 | 95 |
| Timestamps | 1981-01-01 (normalizado) | 2026-07-23 (build fresh) |
| baseline.prof | Sim | Não |

---

## 2. O "Segredo" Criptográfico

### 2.1 Esquema compartilhado

Ambos usam o mesmo DNA criptográfico:

1. **String obfuscation**: XOR byte-a-byte com chave estática
2. **Asset decryption**: AES-256-CTR/NoPadding, chave e IV embutidos como byte arrays XOR-encodados
3. **Output**: arquivo decifrado em `getFilesDir()` → APK instalável

### 2.2 Wi-Fi — Classe `defpackage.tp` + constantes em `defpackage.vd`

```
XOR key: 231 (0xE7)
```

Constantes em `vd` (fields `u`–`z`, decodificadas com `vd.c0()` que aplica XOR 0xE7):

| Field | Valor decodificado |
|---|---|
| `u` (asset) | `locale_ko.db` |
| `v` (key, 32B) | `38a6db97110be1cd5f481aa04f759ddcb398f8bb2279efd384653274144ad61a` |
| `w` (IV, 16B) | `d1ac997872563a198a91c62611dce94f` |
| `x` (cipher) | `AES/CTR/NoPadding` |
| `z` (output) | `index_*.pak` |

**Fluxo de decrypt** (`tp.i()`, case 0):
```
asset_name = vd.c0(vd.u)   → "locale_ko.db"
key        = vd.c0(vd.v)   → 32 bytes
iv         = vd.c0(vd.w)   → 16 bytes
cipher     = vd.c0(vd.x)   → "AES/CTR/NoPadding"
output     = vd.c0(vd.z)   → filename

Cipher.getInstance(cipher)
if cipher.contains("GCM"):
    cipher.init(DECRYPT, SecretKeySpec(key,"AES"), GCMParameterSpec(128, iv))
else:
    cipher.init(DECRYPT, SecretKeySpec(key,"AES"), IvParameterSpec(iv))
plaintext = cipher.doFinal(ciphertext)
```

**Observação**: Wi-Fi suporta **tanto GCM quanto CTR** — verifica `str2.indexOf("GCM") >= 0` e seleciona o `ParameterSpec` apropriado. Neste sample específico, o transform é CTR.

### 2.3 Loja — Classe `PayloadUtil`

```
XOR key: 62 (0x3E)  ← gerado aleatoriamente pelo builder (não é 0xE7 do template!)
```

**CORREÇÃO IMPORTANTE**: O template `dropper_rebuild` tem XOR=0xE7 com strings quebradas (`locale_ko.bb`, `AES/CTR/NoPabbing`, `com.anbpoib.henbing`). Porém, o builder (`services/apk.py` → `patch_payload_util_smali`) **re-patcheia XOR, key, IV e todos os arrays** com valores frescos por build. O APK compilado Loja tem XOR=0x3E e **todas as strings decodificam corretamente**:

| Campo | Valor decodificado | Correto? |
|---|---|---|
| ASSET_ENC | `locale_de.db` | ✅ |
| OUT_ENC | `index_d5a7.pak` | ✅ |
| CIPHER_ENC | `AES/CTR/NoPadding` | ✅ |
| VENDING_ENC | `com.android.vending` | ✅ |
| MIME_ENC | `application/vnd.android.package-archive` | ✅ |
| PKG0_ENC | `com.google.android.gms` | ✅ |
| PKG1_ENC | `com.android.vending` | ✅ |
| PKG2_ENC | `com.google.android.gsf` | ✅ |
| PKG3_ENC | `com.google.android.as` | ✅ |
| PKG4_ENC | `com.google.android.as.oss` | ✅ |

```
key (32B): a8f59e0d2b5ca5aabecfeb5ffe02c65e6f8bb765d9e414882add0b7367a3dec6
iv  (16B): df4498d4e320e899a3f0b4f4bc2661ed
```

**Fluxo de decrypt** (`PayloadUtil.a()`):
```
asset = xs(ASSET_ENC)     → "locale_de.db"
out   = xs(OUT_ENC)       → "index_d5a7.pak"
cipher = xs(CIPHER_ENC)   → "AES/CTR/NoPadding"
key  = x(KEY_ENC)         → 32 bytes
iv   = x(IV_ENC)          → 16 bytes

Cipher.getInstance(cipher)    // CTR only, sem fallback GCM
cipher.init(DECRYPT, SecretKeySpec(key,"AES"), IvParameterSpec(iv))
plaintext = cipher.doFinal(ciphertext)
```

### 2.4 Diferencial criptográfico

| Aspecto | Wi-Fi | Loja |
|---|---|---|
| XOR key | 0xE7 (fixo, hardcoded em R8) | 0x3E (aleatório por build) |
| Suporte GCM | Sim (fallback dinâmico) | Não (CTR apenas) |
| Key/IV | Fixos no binário | Aleatórios por build |
| Strings decodificam corretamente | ✅ | ✅ (após patch do builder) |
| Sem cabeçalho zero 16B | ✅ (plaintext começa com `PK\x03\x04`) | ✅ |

**Veredito**: A criptografia em si **não é** o motivo de Loja falhar no Play Protect. O builder gera material criptográfico fresco e as strings decodificam corretamente. O esquema CTR é idêntico em ambos.

---

## 3. Payload Interno (APK decifrado)

### 3.1 Wi-Fi payload

- **880 entries**, 4 DEX files: `classes.dex` (1.6 MB), `classes2.dex` (1.9 MB), `classes3.dex` (1.5 MB), `classes4.dex` (1.6 MB)
- **614 entries ofuscadas** com padrões de path traversal:
  - `AndroidManifest.xml/..xml`
  - `classes.dex/\\\\.xml`
  - `resources.arsc////.xml`
  - `kotlin/coroutines/AndroidManifest.xml.xml`
  - `META-INF/ .png`, `META-INF/classes.dex.9.png`
- **269 entries reais/canônicas** (incluindo os 4 DEX, `AndroidManifest.xml`, `resources.arsc`, assets)
- AndroidManifest interno: 213.956 bytes
- Assinado v1 internamente (`META-INF/KEY.RSA` + `KEY.SF` + `MANIFEST.MF`)
- Assets compartilhados: `assets/1.bt` (164 KB), `assets/acs_sm.html`, `assets/ads.txt`

### 3.2 Loja payload

- **880 entries**, 1 DEX: `classes.dex` (5.192.908 bytes — mega-DEX merged)
- **0 entries ofuscadas** — todos os nomes canônicos (`AndroidManifest.xml`, `classes.dex`, `res/anim/...`)
- AndroidManifest interno: 34.044 bytes
- Assinado v1 internamente (`META-INF/KEY.RSA` + `KEY.SF` + `MANIFEST.MF`)
- Assets: `assets/ads.txt` (2.0 MB), `assets/1.bt` (164 KB)

### 3.3 Diferencial do payload

| Aspecto | Wi-Fi | Loja |
|---|---|---|
| DEX files | 4 (multi-DEX, 1.5–2 MB cada) | 1 (mega-DEX 5.2 MB) |
| ZIP entry obfuscation | 614 entries ofuscadas + 269 reais | 0 ofuscadas, 880 canônicas |
| AndroidManifest interno | 214 KB (rico, multi-component) | 34 KB (mínimo) |
| `assets/ads.txt` | Presente | Presente (2 MB) |

**A ofuscação de entries ZIP do Wi-Fi é uma técnica anti-análise crítica**: mistura nomes reais com lixo patológico, dificultando a extração estática do APK interno por scanners. Loja não implementa isto — o payload é um APK canônico trivialmente identificável.

---

## 4. Assinatura Digital

### 4.1 Wi-Fi.apk — Certificado customizado

```
Subject:  C=US, ST=California, L=Mountain View, O=Google Inc., OU=Android, CN=Android
Issuer:   (self-signed)
Serial:   A98896ABF128F95E
Validade: 2026-05-27 → 2056-05-19 (30 anos)
SHA1:     B2:32:2D:E3:63:C1:AF:EF:66:61:29:5E:21:7D:91:C6:C5:DD:D9:BD
SHA256:   66:F1:65:CD:CC:C5:E5:97:96:0F:B8:BD:DA:21:95:76:34:98:CA:99:9E:9B:E9:89:A6:B7:18:78:C2:13:8F:81
```

**Não é o AOSP testkey.** É um certificado customizado que mimetiza a identidade Google (mesmo Subject DN), com data de criação recente e validade longa.

### 4.2 Loja_Bellenzier.apk — AOSP testkey

```
Subject:  C=US, ST=California, L=Mountain View, O=Android, OU=Android, CN=Android, emailAddress=android@android.com
Issuer:   (self-signed)
Serial:   936EACBE07F201DF
Validade: 2008-02-29 → 2035-07-17
SHA1:     61:ED:37:7E:85:D3:86:A8:DF:EE:6B:86:4B:D8:5B:0B:FA:A5:AF:81
SHA256:   A4:0D:A8:0A:59:D1:70:CA:A9:50:CF:15:C1:8C:45:4D:47:A3:9B:26:98:9D:8B:64:0E:CD:74:5B:A7:1B:F5:DC
```

**Este é o AOSP testkey universalmente conhecido.** O SHA1 `61:ED:37:7E:...` é a assinatura mais flagrada pelo Play Protect — usada por milhares de samples de malware, trivialmente identificável, criada em 2008.

### 4.3 Diferencial de assinatura

| Aspecto | Wi-Fi | Loja |
|---|---|---|
| Certificado | Customizado (mimica Google) | AOSP testkey |
| SHA1 | B2:32:2D:... (desconhecido) | 61:ED:37:7E:... (AOSP testkey) |
| Data criação | 2026-05-27 | 2008-02-29 |
| Esquema | v2 (APK Signature Scheme v2) | v2 |
| v1 (JAR) | Não | Não |

**Este é o diferencial #1 mais crítico.** O pipeline do dropper (`services/config.py`: `SIGNING_MODE=aosp_testkey`) usa o testkey AOSP por padrão, sem keystore efêmero por build.

---

## 5. Grafo de Componentes

### 5.1 Wi-Fi — Grafo rico e legítimo

```
Activities:
  - MainActivity (LAUNCHER, exported, singleTop)
  - InstallActivity (stub, finish() imediato)
  - MoreInfoActivity
  - SettingsActivity
  - ProfileActivity

Services:
  - SecureService (VpnService, BIND_VPN_SERVICE)
  - SystemAlarmService (WorkManager)
  - SystemJobService (WorkManager, BIND_JOB_SERVICE)
  - SystemForegroundService (WorkManager)
  - MultiInstanceInvalidationService (Room)

Receivers:
  - BootReceiver (BOOT_COMPLETED, exported) ← persistência pós-reboot
  - ConfigReceiver (empty onReceive)
  - InstallResultReceiver ← callback de install
  - WorkManager: ForceStopRunnable, ConstraintProxy.* (Battery/Storage/Network), RescheduleReceiver
  - ProfileInstaller: ProfileInstallReceiver
  - DiagnosticsReceiver

Providers:
  - FileProvider (androidx.core.content.FileProvider)
```

**WorkManager completo**: SystemAlarmService, SystemJobService, SystemForegroundService, ConstraintProxy receivers (BatteryCharging, BatteryNotLow, StorageNotLow, NetworkState), RescheduleReceiver, DiagnosticsReceiver — toda a infraestrutura de scheduling do AndroidX Work.

**BootReceiver**: registra `last_boot` timestamp em SharedPreferences ao receber `BOOT_COMPLETED`.

**InstallResultReceiver**: processa status de instalação do PackageInstaller, abre Intent de confirmação se necessário.

### 5.2 Loja — Grafo mínimo

```
Activities:
  - MainActivity (LAUNCHER, exported, singleTop)
  - HomeActivity
  - ProgressActivity (stub — TextView + ProgressBar)
  - SettingsActivity

Services:
  - TunnelService (VpnService, BIND_VPN_SERVICE)

Receivers:
  - RcvJbrzn (PACKAGE_ADDED, MY_PACKAGE_REPLACED)

Providers:
  - ApkFileProvider (custom FileProvider)
```

**Sem BootReceiver, sem WorkManager, sem InstallResultReceiver, sem ProfileInstaller, sem Room.**

### 5.3 Diferencial de componente

| Componente | Wi-Fi | Loja |
|---|---|---|
| BootReceiver (BOOT_COMPLETED) | ✅ | ❌ |
| WorkManager (full stack) | ✅ | ❌ |
| InstallResultReceiver | ✅ | ❌ |
| ProfileInstaller | ✅ | ❌ |
| Room (MultiInstanceInvalidationService) | ✅ | ❌ |
| Múltiplas Activities (5+) | ✅ | 4 (1 stub) |
| RECEIVE_BOOT_COMPLETED permission | ✅ | ❌ |
| FOREGROUND_SERVICE permission | ✅ | ❌ |
| WAKE_LOCK permission | ✅ | ❌ |
| POST_NOTIFICATIONS permission | ✅ | ❌ |
| networkSecurityConfig | ✅ | ❌ |

---

## 6. Fluxo de Instalação do Payload

### 6.1 Wi-Fi — MainActivity

```
onCreate → setup UI + animations → A()/B() (get installer/alt pkg)
         → register pp receiver (PACKAGE_ADDED/REPLACED)
         → u()

u():
  1. Se installer já instalado → y(strA) [launch + complete]
  2. Se VPN não preparado → VpnService.prepare() → activity result
  3. Se canRequestPackageInstalls() → vd.C(coroutine) [decrypt + install]
  4. Senão → z() [MANAGE_UNKNOWN_APP_SOURCES settings]

Decrypt (tp.i, case 0):
  - Lê asset, AES-CTR decrypt, grava file
  - Progress callbacks (30% → 80% → 100%)

Install:
  - PackageInstaller session (via coroutine up)
  - pp receiver monitora PACKAGE_ADDED:
    - Se pkg == installer → x(str) [setInstaller + AppOps]
    - Se pkg == alt → y(str) [launch + finish]

x(str) — pós-instalação:
  - setInstallerPackageName(str, "com.android.vending")
  - AppOpsManager.setMode(137, uid, str, 0)  ← HARDCODED 137
  - Salva target_pkg em SharedPreferences
```

### 6.2 Loja — MainActivity + PayloadUtil

```
onCreate → J() (build UI programático) → L()

j() — Hidden API bypass:
  - VMRuntime.setHiddenApiExemptions("L")  ← não existe no Wi-Fi

L():
  1. j() → setHiddenApiExemptions
  2. PayloadUtil.a(this) → AES-CTR decrypt asset → file
  3. getPackageArchiveInfo → verifica se já instalado
     - Se sim → launch + return
  4. Senão → PackageInstaller session:
     - Class.forName via e0.a() (class names criptografados Base64+AES)
     - SessionParams(MODE_FULL_INSTALL)
     - PayloadUtil.b(params):
       - installerPackageName = "com.android.vending"
       - setPackageSource(2)
       - installFlags |= 16777346 (SDK < 34) ou 20971650 (SDK ≥ 34)
     - PayloadUtil.c(installer, params):
       - createSession() com fallback SecurityException → null installer
     - openSession → openWrite → stream APK → commit
     - Fallback: PayloadUtil.d() → FileProvider + VIEW intent

M() — inicia VPN:
  - VpnService.prepare() == null → startService(TunnelService)

RcvJbrzn.onReceive (PACKAGE_ADDED/MY_PACKAGE_REPLACED):
  - b(): stop TunnelService, aguarda rede WiFi
  - c(): desabilita MainActivity, TunnelService, RcvJbrzn (auto-hide)
```

### 6.3 Diferencial de install path

| Aspecto | Wi-Fi | Loja |
|---|---|---|
| Hidden API bypass | ❌ | ✅ (`setHiddenApiExemptions("L")`) |
| AppOps op code | Hardcoded `137` | Dinâmico `strOpToOp("android:request_install_packages")` |
| installFlags manipulation | ❌ | ✅ (16777346 / 20971650) |
| setPackageSource | ❌ | ✅ (source=2) |
| Session SecurityException fallback | ❌ | ✅ (null installer retry) |
| Class name encryption | ❌ | ✅ (`e0.a()` Base64+AES) |
| Component auto-disable | ❌ | ✅ (`RcvJbrzn.c()`) |
| PackageInstaller session | ✅ (coroutine) | ✅ (reflection) |
| FileProvider fallback | ✅ | ✅ |
| Install progress callback | ✅ (30/80/100%) | ❌ |
| Pre-install check (already installed) | ❌ | ✅ |
| Network state check post-install | ❌ | ✅ (WiFi transport) |

**Loja tem install path TECNICAMENTE mais sofisticado que Wi-Fi** — mais反射, mais flags, mais fallbacks. O problema não está na lógica de instalação.

---

## 7. Serviço VPN

### 7.1 Wi-Fi — SecureService

```java
XOR = 231 (0xE7)  // hardcoded
// IP/route/packages todos XOR-encodados
e = {-42,-41,-55,-41,-55,-41,-55,-43}  → "10.0.0.2"
f = {-41,-55,-41,-55,-41,-55,-41}      → "0.0.0.0"
g[0..4] = Google packages (XOR-encodados)

Builder().addAddress(b(e), 32)
         .addRoute(b(f), 0)
         .setMtu(1500)
         .setBlocking(true)           // blocking mode
for pkg in g: addAllowedApplication(pkg)
establish() → thread (r1) lê packets
```

### 7.2 Loja — TunnelService

```java
// Strings em plain text (não ofuscadas)
builder.addAddress("10.0.0.2", 32)
       .addRoute("0.0.0.0", 0)
       .setSession("System")
       .setMtu(1500)
for pkg in PayloadUtil.f(): addAllowedApplication(pkg)
establish() → thread lê FileInputStream em loop
```

### 7.3 Diferencial VPN

| Aspecto | Wi-Fi | Loja |
|---|---|---|
| Obfuscação de strings | ✅ (XOR 0xE7 in-class) | ❌ (plain text) |
| setBlocking(true) | ✅ | ❌ |
| setSession | ❌ | ✅ ("System") |
| Google packages allowlist | ✅ (5 pkgs hardcoded XOR) | ✅ (5 pkgs via PayloadUtil.f()) |
| Packet reading thread | ✅ (r1 Runnable) | ✅ (inline) |

**Mesma função**: estabelecer túnel VPN, allowlist Google packages para junkar seu tráfego (provavelmente bloquear Google Play Protect de se comunicar).

---

## 8. Análise do AndroidManifest

### 8.1 Permissões

| Permissão | Wi-Fi | Loja |
|---|---|---|
| REQUEST_INSTALL_PACKAGES | ✅ | ✅ |
| INTERNET | ✅ | ✅ |
| ACCESS_NETWORK_STATE | ✅ | ✅ |
| ACCESS_WIFI_STATE | ✅ | ✅ |
| CHANGE_WIFI_STATE | ❌ | ✅ |
| FOREGROUND_SERVICE | ✅ | ❌ |
| WAKE_LOCK | ✅ | ❌ |
| RECEIVE_BOOT_COMPLETED | ✅ | ❌ |
| POST_NOTIFICATIONS | ✅ | ❌ |

### 8.2 Application attributes

| Atributo | Wi-Fi | Loja |
|---|---|---|
| allowBackup | false | false |
| networkSecurityConfig | ✅ (`@xml/network_security_config`) | ❌ |
| largeHeap | ✅ | ❌ |
| hardwareAccelerated | ✅ | ❌ |
| supportsRtl | ✅ | ❌ |
| description | ✅ (`@string/app_description`) | ❌ |
| theme | `@style/Theme.CorpAppStore` | `@android:style/Theme.NoTitleBar.Fullscreen` |
| compileSdk | 36 | 34 |

---

## 9. Estrutura DEX

### 9.1 Wi-Fi — DEX único rico

- `classes.dex`: 1.739.608 bytes — toda a lógica do app (UI, crypto, VPN, install, WorkManager, Room) com R8 obfuscation (classes `defpackage.*` single/double letter)
- Sem DEX injetado — AndroidX/Material bundled nativamente pelo Gradle
- `baseline.prof` + `baseline.profm` em `assets/dexopt/` (profile-guided compilation)

### 9.2 Loja — DEX stub + DEX injetido

- `classes.dex`: 60.860 bytes — lógica do dropper (MainActivity, PayloadUtil, TunnelService, RcvJbrzn)
- `classes2.dex`: 4.505.204 bytes — AndroidX/Material injectado de `prebuilt/androidx_material.dex`
- Sem `baseline.prof`

### 9.3 Diferencial DEX

O padrão "DEX stub pequeno + DEX biblioteca injetado" é um **sinal para Play Protect** — apps legítimos compilados pelo Gradle não produzem esta estrutura. Wi-Fi tem um DEX único coeso com toda a lógica, indistinguível de um app normal.

---

## 10. Features Adicionais do Loja Não Presentes no Wi-Fi

| Feature | Descrição |
|---|---|
| `e0.a()` | Descriptor de nomes de classe via Base64+AES (camufla reflexão PackageInstaller) |
| `setHiddenApiExemptions("L")` | Bypass completo de hidden API restrictions antes de qualquer reflexão |
| `installFlags` manipulation | Bits 16777346 (SDK<34) / 20971650 (SDK≥34) — flags de instalação privilegiada |
| `setPackageSource(2)` | Atribui fonte do pacuno como "outra loja" |
| `RcvJbrzn.c()` | Auto-desabilita componentes após install (hide MainActivity/TunnelService/receiver) |
| Network transport check | Verifica WiFi transport antes de prosseguir pós-install |
| Pre-install check | Verifica se payload já está instalado antes de decrypt |

---

## 11. Por que Wi-Fi Passa no Play Protect e Loja Falha

### 11.1 Drivers críticos (ordem de prioridade)

#### #1 — Certificado de assinatura (CRÍTICO)

Loja usa o **AOSP testkey** (`SHA1: 61:ED:37:7E:...`), o certificado mais flagrado pelo Play Protect. É usado por milhares de malwares, tem data de 2008, e é trivialmente identificável por hash exato. Wi-Fi usa um certificado **customizado** que mimetiza a identidade Google com data recente (2026).

**Fix**: Implementar keystore efêmero por build (`keytool -genkeypair` com Subject DN mimetizando Google, validade 25-30 anos, algoritmo RSA 2048+).

#### #2 — Ofuscação de entries ZIP do payload (ALTO)

Wi-Fi mistura **614 entries ofuscadas** (path traversal patterns: `AndroidManifest.xml/..xml`, `classes.dex/\\\\.xml`) com 269 entries reais. Isto confunde scanners estáticos que tentam extrair e analisar o APK interno. Loja tem **zero ofuscação** — todas as 880 entries são canônicas.

**Fix**: Implementar ZIP entry rename/ofuscation no pipeline antes de cifrar o payload.

#### #3 — Multi-DEX vs mega-DEX (MÉDIO)

Wi-Fi tem 4 DEX files (1.5–2 MB cada) — estrutura multi-DEX padrão de apps Android complexos. Loja tem 1 DEX de 5.2 MB — mega-DEX merged incomum que pode triggerar heurísticas.

**Fix**: Configurar build do payload com `minSdkVersion` que force multi-DEX, ou usar D8 com `--min-api` apropriado.

#### #4 — Profundidade do grafo de componentes (MÉDIO)

Wi-Fi tem WorkManager completo, BootReceiver, ProfileInstaller, Room, 5 Activities, InstallResultReceiver — grafo rico que parece um app legítimo. Loja tem 4 Activities (1 stub), 1 Service, 1 Receiver — grafo mínimo que parece um wrapper/stub.

**Fix**: Adicionar BootReceiver, WorkManager scheduling, ProfileInstaller, activities adicionais com lógica real.

#### #5 — Estrutura DEX stub+injetado (MÉDIO)

Loja tem `classes.dex` (61 KB stub) + `classes2.dex` (4.5 MB injetado). Este padrão é atípico e detectável. Wi-Fi tem um DEX único coeso (1.7 MB).

**Fix**: Compilar o dropper com Gradle ao invés de injetar DEX prebuilt, ou mergear o DEX de bibliotecas no DEX principal.

#### #6 — Permissões faltantes (BAIXO-MÉDIO)

Loja declara VPN service mas não tem `FOREGROUND_SERVICE`, `WAKE_LOCK`, ou `POST_NOTIFICATIONS` — permissões esperadas para um app VPN. Wi-Fi tem todas.

#### #7 — Timestamps frescos (BAIXO)

Loja tem todas as entries datadas 2026-07-23 (hoje). Wi-Fi tem 1981-01-01 (normalização do Android build tools). Datas frescas + AOSP testkey = alto índice de suspeição.

#### #8 — compileSdk 34 vs 36 (BAIXO)

Wi-Fi targeta Android 16 (SDK 36, mais recente). Loja targeta Android 14 (SDK 34). SDK mais recente pode pesar positivamente na reputação.

### 11.2 O que NÃO é problema

- **Criptografia**: Ambos usam AES-256-CTR idêntico. Loja tem material fresco por build. ✅
- **Strings XOR**: Loja decodifica todas corretamente após patch do builder. ✅
- **Install path logic**: Loja é tecnicamente mais sofisticado (hidden API bypass, dynamic AppOps, installFlags, SecurityException fallback). ✅
- **VPN function**: Ambos fazem o mesmo (junk Google traffic). ✅
- **FileProvider**: Ambos têm. ✅

---

## 12. Plano de Correção Prioritizado

### P0 — Imediato (bloqueia Play Protect)

1. **Keystore efêmero por build**: Substituir `SIGNING_MODE=aosp_testkey` por geração de keystore RSA 2048+ por build, com Subject DN `C=US, ST=California, L=Mountain View, O=Google Inc., OU=Android, CN=Android`, validade 25-30 anos.

### P1 — Alto impacto

2. **Ofuscação de ZIP entries do payload**: Antes de cifrar o payload APK, renomear entries internas com padrões path traversal + adicionar entries de ruído (como Wi-Fi faz: 614 obfuscated + 269 real).

3. **Multi-DEX do payload**: Garantir que o payload interno tenha 4+ DEX files (~1.5–2 MB cada) ao invés de mega-DEX único.

### P2 — Médio impacto

4. **BootReceiver**: Adicionar receiver para `BOOT_COMPLETED` com `RECEIVE_BOOT_COMPLETED` permission.

5. **WorkManager**: Integrar `androidx.work` no DEX principal (não apenas no DEX injetado) com scheduling real (PeriodicWorkRequest).

6. **DEX structure**: Eliminar padrão stub+injetado. Compilar tudo em um único DEX ou usar D8 merge.

7. **InstallResultReceiver**: Adicionar receiver para callback de status de instalação.

### P3 — Baixo impacto

8. **Permissões**: Adicionar `FOREGROUND_SERVICE`, `WAKE_LOCK`, `POST_NOTIFICATIONS`.

9. **networkSecurityConfig**: Adicionar `@xml/network_security_config`.

10. **compileSdk**: Atualizar para 36.

11. **Timestamps**: Normalizar datas ZIP para 1981-01-01 (padrão Android build tools).

12. **baseline.prof**: Adicionar profile de compilação em `assets/dexopt/`.

13. **ProfileInstaller**: Registrar `ProfileInstallReceiver` no manifest.

---

## 13. Apêndice — Artefatos

| Artefato | Path |
|---|---|
| Wi-Fi payload decifrado | `analysis/extracted/wifi_payload.bin` (5.433.723 B) |
| Loja payload decifrado | `analysis/extracted/loja_payload.bin` (5.192.531 B) |
| Wi-Fi cert DER | `analysis/extracted/wifi_v2_cert.der` |
| Loja cert DER | `analysis/extracted/loja_v2_cert.der` |
| Wi-Fi jadx | `analysis/wifi_jadx/` |
| Loja jadx | `analysis/loja_jadx/` |
| Wi-Fi apktool | `analysis/wifi_dec/` |
| Loja apktool | `analysis/loja_dec/` |
| Deficiências (anterior) | `04-DEFICIENCIAS-ATUAIS.md` |

---

## 14. Resumo Executivo

Loja_Bellenzier.apk **falha no Play Protect** principalmente por **dois motivos**:

1. **Assinatura com AOSP testkey** — o certificado mais flagrado do ecossistema Android
2. **Payload sem ofuscação de ZIP entries** — APK interno trivialmente extraível e analisável

A criptografia (AES-CTR), a lógica de instalação (PackageInstaller + AppOps + FileProvider) e a função VPN são **tecnicamente equivalentes ou superiores** ao Wi-Fi de referência. O problema é estrutural: certificado público, payload exposto e grafo de componentes mínimo — não criptográfico.

Wi-Fi passa porque combina **certificado customizado mimetizando Google** + **payload com 614 entries ofuscadas** + **grafo rico (WorkManager/BootReceiver/Room)** + **DEX único coeso** + **SDK 36** — uma superfície que parece um app legítimo do início ao fim.


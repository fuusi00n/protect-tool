# Deficiências atuais do dropper

Auditoria do template `dropper_rebuild/` e do pipeline `services/apk.py` (2026-07-23).

---

## 1. Sem BootReceiver e sem `BOOT_COMPLETED`

Não existe classe `BootReceiver` nem componente de receiver para boot.

No `AndroidManifest.xml` não há:

- action `android.intent.action.BOOT_COMPLETED`
- permissão `RECEIVE_BOOT_COMPLETED`

Único receiver registrado: `com.android.system.qspaas.RcvJbrzn`, com:

- `android.intent.action.PACKAGE_ADDED`
- `android.intent.action.MY_PACKAGE_REPLACED`
- `<data android:scheme="package"/>`

Sem persistência pós-reboot via boot.

Arquivos: `dropper_rebuild/AndroidManifest.xml`, `dropper_rebuild/smali/com/android/system/qspaas/RcvJbrzn.smali`.

---

## 2. Sem WorkManager / `androidx.work`

Não há integração de WorkManager no app:

- zero `androidx.work`, `WorkManager`, `Worker`, `ListenableWorker`, `PeriodicWorkRequest` ou `OneTimeWorkRequest` no smali
- nenhum worker, provider ou agendamento no manifest

O DEX de casca `prebuilt/androidx_material.dex` contém AndroidX core/appcompat/Material etc., mas **não** contém `Landroidx/work` (confirmado por strings). Material pode carregar deps da casca; isso não equivale a camuflagem/integração WM.

Arquivos: manifest, smali do app, `dropper_rebuild/prebuilt/androidx_material.dex`.

---

## 3. Ofuscação de entries ZIP do payload não implementada

O blob embutido não é um ZIP com nomes de entry ofuscados + APK dentro.

O build faz:

1. lê o APK do usuário como bytes
2. cifra com AES-256-CTR (`encrypt_aes_ctr`)
3. grava o ciphertext **cru** em `assets/{nome}`

Não há packing ZIP intermediário, nem rename de entries internas. O runtime (`PayloadUtil.a`) só faz AES decrypt e grava arquivo — sem unpack de ZIP/entries.

O gate de roundtrip espera `PK\x03\x04` no plaintext do APK direto. O sufixo `.pak` na saída em cache é só nome de arquivo.

Arquivo: `services/apk.py` (trecho de injeção do payload).

---

## 4. Template `PayloadUtil` XOR desalinhado até o patch do build

No template versionado:

- `XOR:I = 0xe7` e arrays estáticos (`ASSET_ENC`, `KEY_ENC`, `IV_ENC`, `CIPHER_ENC`, `VENDING_ENC`, pkgs…)
- `assets/locale_ko.db` é literal `placeholder` (11 bytes), não ciphertext AES

Decode dos arrays do template com XOR `0xe7` **não** produz strings válidas, por exemplo:

- asset → `locale_ko.bb` (esperado algo como `locale_ko.db`)
- cipher → `AES/CTR/NoPabbing`
- vending → `com.anbpoib.henbing`

O XOR implícito byte a byte é inconsistente (mistura `0xe7`, `0xe1` e outros). O template sozinho não é coerente. Só `patch_payload_util_smali` no build realinha `xor_byte`, key/iv, asset/out e strings.

Arquivos: `dropper_rebuild/smali/com/android/system/qspaas/PayloadUtil.smali`, `dropper_rebuild/assets/locale_ko.db`, `services/apk.py` (`patch_payload_util_smali`).

---

## 5. `inject_secondary_dex` regrava o ZIP preservando nomes canônicos

`inject_secondary_dex` reescreve o APK com `zipfile`:

- copia cada entry com `info.filename` **original**
- injeta o DEX de libs sempre como `classes2.dex`
- preserva stored/deflated; quebra alignment de 4 bytes (exige `zipalign` depois)

Não renomeia nem ofusca entries do APK (`classes.dex`, `classes2.dex`, `resources.arsc`, `AndroidManifest.xml`, etc.).

Arquivo: `services/apk.py` → `inject_secondary_dex`.

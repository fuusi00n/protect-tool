# Auditoria de Segurança — protect-tool

**Data:** 2026-07-30  
**Escopo:** código da aplicação (rotas, serviços, config). Excluídos: `.venv`, conteúdo bruto de `store_catalog/*.html` (exceto serving), dumps de `uploads/`/`outputs/`.  
**Método:** revisão estática correlacionando endpoints → funções → chamadas perigosas. Achados verificados no source.

> **Nota sobre “zero-days”:** não foram encontradas vulnerabilidades zero-day em dependências de terceiros (Java/apktool/CoinGecko). Os itens abaixo são **falhas de aplicação** (lógica, insecure-by-design, CWE clássicos) exploráveis no contexto deste projeto.

---

## Sumário executivo

| Severidade | Qtd | Destaques |
|------------|-----|-----------|
| Critical   | 3   | Zip Slip no extract de APK; senhas em texto plano; `SECRET_KEY` com default previsível |
| High       | 6   | `shell=True` no pipeline; colisão `build_id`/APK; spam `POST /api/payments`; Settled revertível; sem rate-limit |
| Medium     | 5   | Cookie sem Secure; CSRF fraco; leak de erros no status; gate UA cosmético; thumb path sem confinement |
| Low        | 3   | `/health` info; keytool senha em argv; Java probe local |

**Foothold de terminal:** o atacante autenticado dispara `java -jar apktool` / `keytool` / `zipalign` / `apksigner` via `POST …/api/build`. Não há RCE remoto trivial por injeção de shell string hoje (paths internos), mas **Zip Slip + `shell=True` + overwrite de outputs** formam a superfície mais grave de compromisso do host.

---

## 1. Execução de comandos de terminal

### Mapa

```
POST /subscriber/api/build  ─┐
POST /katana/admin/api/build─┼─► start_build() ─► process_apk() [thread]
                             │         │
                             │         ├─ ZipFile.extractall / extract   ← Zip Slip
                             │         ├─ subprocess shell=True apktool d/b
                             │         ├─ prepare_payload → apktool (lista)
                             │         ├─ keytool / zipalign / apksigner (lista)
                             │         └─ move → outputs/{app_name}.apk
                             └─ BUILD_STATUS[build_id] ← erros com str(exc)
```

| Arquivo | Função | Chamada | `shell` | Input user? | Risco |
|---------|--------|---------|---------|-------------|-------|
| `services/java_runtime.py` | `find_java` | `subprocess.run([java,"-version"])` | Não | Não | Low |
| `services/apk.py` | `prepare_payload` | `apktool d/b` lista | Não | APK uploadado (conteúdo) | Medium (DoS/CPU) |
| `services/apk.py` | `_generate_keystore` | `keytool -genkeypair` | Não | Não | Medium (senha em argv/`/proc`) |
| `services/apk.py` | `zipalign_apk` | `zipalign …` | Não | Paths internos | Low |
| `services/apk.py` | `sign_with_apksigner` | `apksigner sign` | Não | Não | Medium (secret em argv) |
| `services/apk.py` | `process_apk` ~1191 | **`shell=True`** `java -jar apktool d "…"` | **Sim** | Paths `build_id` + APK | **High** |
| `services/apk.py` | `process_apk` ~1343–1358 | **`shell=True`** `apktool b` / `empty-framework-dir` | **Sim** | Paths internos | **High** |

Não há `os.system`, `eval`, `exec`, `pickle`, nem `Popen` com shell fora de `apk.py` / `java_runtime.py`.

### Cadeia A — foothold FS (Critical)

1. Conta subscriber/master válida.  
2. `POST /subscriber/api/build` (ou admin) com APK = ZIP contendo entradas `../../…`.  
3. `process_apk` → `zipfile.ZipFile.extractall(user_apk_extracted)` **sem** validar membros (`services/apk.py` ~1178–1187).  
4. Escrita arbitrária relativa ao CWD/pasta de extract → overwrite de templates, configs, scripts.  
5. Próximo request/build executa artefacto plantado / DoS permanente.

**CWE:** CWE-22 (Path Traversal / Zip Slip).

### Cadeia B — abuso do pipeline shell (High)

1. Mesmo endpoint de build.  
2. Fallback `shell=True` sem `timeout` em trechos da build.  
3. Consumo CPU/disco; se `JAVA_BIN` / paths forem algum dia derivados de input, vira RCE clássico.  
4. Hoje paths vêm de `build_id` + config — risco principal: **padrão inseguro + DoS**, não RCE trivial de string.

---

## 2. Inventário de endpoints e correlação

### `routes/subscriber.py` — `/subscriber`

| Endpoint | Auth | Funções | Riscos |
|----------|------|---------|--------|
| `GET/POST /login` | Público | `authenticate_subscriber` | Brute-force; senha plaintext |
| `POST /logout` | Público | `session.clear` | — |
| `GET /dashboard\|make\|apps` | `require_subscriber` | templates | — |
| `GET /store` | + `require_store` | template | — |
| `GET /api/store/products` | + store | `list_products` | — |
| `GET /api/store/thumb/<id>` | + store | `get_thumb_path` → `send_file` | Path resolve fraco se id escapar regex do router |
| `GET /api/store/download/<id>` | + store | `get_injection_path` | Entrega injection (ID regex em meta) |
| `GET /api/store/preview/...` | + store | `build_preview_html`, tokens | Ofuscação ≠ auth |
| `GET /api/session`, `/api/dashboard/metrics` | subscriber | metrics | — |
| **`POST /api/build`** | subscriber | `validate_*` → `start_build` → `process_apk` | **Zip Slip, shell, colisão, race quota** |
| `GET /api/build/<id>/status` | + `can_access_build` | `BUILD_STATUS` | Leak `str(exc)` |
| `GET /api/build/<id>/download` | + access | `send_file` | Auth só memória |
| `DELETE /api/build/<id>` | subscriber | `delete_user_build` | Ownership DB OK |
| `POST …/regenerate-token` | + playstore | token público | — |
| `GET /api/apps` | subscriber | `get_user_builds` | — |

### `routes/katana.py` — `/katana/admin`

| Endpoint | Auth | Riscos |
|----------|------|--------|
| Login master | Público | Mesmas falhas de auth |
| Páginas + APIs users/logs/invoices/payments | `require_master` | Poder total; senhas plaintext no create |
| **`POST /api/build`** | master | Mesmo pipeline APK **sem** quota diária |

### `routes/payments.py`

| Endpoint | Auth | Funções | Riscos |
|----------|------|---------|--------|
| `GET /bypass` | Público | `get_payment_plans` | Landing |
| **`POST /api/payments`** | **Público** | `create_plan_checkout` → invoice HD | **Spam / queima `next_receive_index`** |
| `GET /api/payments/<id>`, `/checkout/<uuid>`, `/api/invoices/<uuid>` | Público | `get_payment` / `get_invoice` | Enumeração se UUID vazar; expõe endereço BTC |

### `routes/public_app.py`

| Endpoint | Auth | Riscos |
|----------|------|--------|
| `/aplicativo/<slug>` (+ `/download`, `/icon`) | Token `?t=` | Gate “Chrome” por UA — **bypass trivial**; token ~80 bits |

### Outros

| Endpoint | Auth | Risco |
|----------|------|-------|
| `GET /health` | Público | Leak status Postgres |
| `GET /` | Público | Under construction |

---

## 3. Autenticação e sessão

**Modelo:** cookie Flask assinado; `portal` ∈ `{subscriber, katana}` + `username`; revalidação em `require_subscriber` / `require_master` (`services/session_guard.py`).

| Falha | Onde | Severidade |
|-------|------|------------|
| Senhas **texto plano** (`account["password"] == password`) | `services/data.py` `authenticate_*` | **Critical** |
| `SECRET_KEY` default `katana_secret_2026` | `config.py` | **Critical** (forge de sessão se env ausente) |
| `SESSION_COOKIE_SECURE = False`; sessão 30 dias | `config.py` | High |
| Sem rate-limit em login/build/payments | rotas | High |
| Sem CSRF token (só `SameSite=Lax`) | app | Medium |
| `role` na sessão cosmética (não autoriza) | login | Low (ok se só cosmético) |

Separação subscriber ↔ master por `portal` está correta — não há escalada só com cookie de operador.

---

## 4. Manipulação de arquivos

| Falha | Detalhe | Severidade |
|-------|---------|------------|
| **Zip Slip** | `extractall` + fallback `extract(member)` sem banir `..` | Critical |
| **Overwrite de APK** | `final_name = f"{secure_filename(app_name)}.apk"` em `OUTPUT_FOLDER` — dois users com mesmo nome sobrescrevem | High |
| **Colisão `build_id`** | `build_{int(time.time())}` — dois POSTs no mesmo segundo | High |
| Upload | Valida extensão/magic/tamanho; **não** Zip Slip / zip bomb | High |
| Thumb store | `_resolve_catalog_dir(product_id)` sem `commonpath` se meta falhar | Medium |
| Links públicos | `register_public_download` em todo build persistido | Medium |

---

## 5. Pagamentos / Bitcoin

```
POST /api/payments → create_plan_checkout → create_invoice (wallet_state FOR UPDATE)
monitor_bitcoin.scan_once → fetch_outputs → apply_snapshot → update_payment_status
```

| Falha | Detalhe | Severidade |
|-------|---------|------------|
| Criação pública de cobrancas | Sem auth/CAPTCHA | High |
| **Settled revertível** | Re-poll de `Settled`; se explorador devolver 0 → status cai e `settled_at` pode zerar | High |
| Sem provisionamento automático | Settle **não** cria user/licença | Medium (buraco operacional / fraude se fluxo assumir auto) |
| Underpay | Exige `confirmed_sats >= expected_sats` | OK |
| SSRF cotação | Moeda 3 letras; URL de rate só de config | OK |

---

## 6. SQL

- Queries com `%s` parametrizado.  
- `update_user_fields`: fragments de coluna vêm de set **fixo** `allowed`; valores bindados — **não é SQLi** no estado atual.  
- `get_activity_logs`: `WHERE` só vazio ou `action = %s`.  

Nenhuma concatenação de input user em SQL encontrada.

---

## 7. Onde o código quebra / vaza informação

| Local | Comportamento |
|-------|----------------|
| `process_apk` `except` | `detail = str(exc)[:180]` → `BUILD_STATUS` → cliente em `/api/build/<id>/status` (paths, stderr apktool) |
| stdout server | `traceback.format_exc()` impresso |
| `shell=True` sem timeout (trechos) | Hang / zombie java |
| APK malformado / zip bomb | CPU/disco DoS |
| `/bypass` | `settings_error` no template se planos falharem |
| `/health` | Estado DB público |

---

## 8. Cadeias de ataque (endpoint → função → impacto)

### A. Zip Slip → compromisso do host (Critical)
`POST …/api/build` → `start_build` → `process_apk` → `ZipFile.extractall` → escrita fora de `uploads/`.

### B. Cross-tenant overwrite de APK (High)
Dois builds com mesmo `app_name` → `outputs/{App}.apk` único → link/status apontam para ficheiro do outro.

### C. Race `build_id` + quota (High)
N× `POST /api/build` no mesmo segundo → mesmo `build_id`; `can_start_build` passa antes do incremento atómico consistente com a thread.

### D. Forge / brute de sessão (Critical–High)
Login sem rate-limit + senhas plaintext **ou** cookie forjado com `SECRET_KEY` default.

### E. Spam de invoices Bitcoin (High)
Loop `POST /api/payments` → esgota índices HD / polui `invoices`/`payments`.

### F. Unsettle pós-pagamento (High)
Invoice `Settled` reentrada no monitor → snapshot vazio → status deixa de ser Settled.

### G. Download público (Medium)
`slug`+`token` + qualquer UA “Chrome” → `GET /aplicativo/<slug>/download`.

---

## 9. Prioridade de remediação

1. **Validar membros ZIP** (`os.path.commonpath` / rejeitar `..`) antes de qualquer extract.  
2. **Eliminar `shell=True`**; lista de args + `timeout` em todos os `subprocess`.  
3. **Hash de senhas** (argon2/bcrypt); falhar boot se `SECRET_KEY` for default; `SESSION_COOKIE_SECURE=True`.  
4. `build_id = secrets.token_hex(8)`; output `f"{build_id}.apk"` (nunca só `app_name`).  
5. Quota **atómica** (`SELECT FOR UPDATE`) **antes** de spawnar thread.  
6. Não reabrir invoices `Settled` para downgrade; nunca limpar `settled_at` por glitch de explorer.  
7. Rate-limit + CAPTCHA/auth em `POST /api/payments` e logins.  
8. Confinement em `_resolve_catalog_dir` / `get_thumb_path`.  
9. Não devolver `str(exc)` cru no status de build ao cliente.

---

## 10. Referências de código (âncoras)

| Tema | Local |
|------|-------|
| Zip Slip | `services/apk.py` ~1178–1187 |
| shell=True | `services/apk.py` ~1191–1194, ~1343–1358 |
| build_id frágil | `services/build_service.py` `start_build` |
| overwrite output | `services/apk.py` ~1405–1406 |
| senha plaintext | `services/data.py` `authenticate_subscriber` / `authenticate_master` |
| SECRET_KEY default | `config.py` |
| payments público | `routes/payments.py` `POST /api/payments` |
| Settled re-check | `monitor_bitcoin.py` + `services/bitcoin_invoices.py` `apply_snapshot` |
| auth guards | `services/session_guard.py` |

---

*Documento gerado por auditoria estática. Não substitui pentest dinâmico nem SCA de dependências (`requirements.txt`, apktool, Java).*

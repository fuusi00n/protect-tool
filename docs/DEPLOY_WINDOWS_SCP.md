# Deploy para VPS Windows via SSH/SCP

Este guia prepara uma VPS Windows e a maquina de cada desenvolvedor para executar:

```powershell
.\scripts\deploy-katana.ps1
```

## O que o deploy faz

O script seleciona os arquivos rastreados pelo Git e os arquivos novos nao ignorados, cria um ZIP temporario, envia por SCP e extrai em `C:\apps\protect-tool`.

Ele nunca envia `.env`, arquivos `*.env`, `.git`, `.venv`, caches Python ou itens do `.gitignore`. O `.env` existente na VPS e preservado. O deploy sobrescreve arquivos com o mesmo nome, mas nao apaga arquivos antigos nem reinicia a aplicacao.

Scripts:

- `scripts/deploy-windows.ps1`: versao generica e parametrizavel.
- `scripts/deploy-katana.ps1`: atalho configurado para `katana`, `Administrador` e `C:\apps\protect-tool`.

## 1. Requisitos

Na maquina do desenvolvedor:

- Windows PowerShell 5.1 ou PowerShell 7.
- Git.
- OpenSSH Client (`ssh`, `scp` e `ssh-keygen`).
- Repositorio clonado com Git.

Verifique:

```powershell
git --version
ssh -V
scp -V
```

Na VPS:

- Windows Server.
- OpenSSH Server.
- Usuario `Administrador`.
- Porta TCP 22 liberada no Windows e no firewall do provedor.
- Permissao de escrita em `C:\apps\protect-tool`.

## 2. Instalar OpenSSH Server na VPS

Abra PowerShell como administrador na VPS:

```powershell
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd
Set-Service sshd -StartupType Automatic
```

Libere a porta:

```powershell
New-NetFirewallRule `
  -Name 'OpenSSH-Server-In-TCP' `
  -DisplayName 'OpenSSH Server' `
  -Enabled True `
  -Direction Inbound `
  -Protocol TCP `
  -Action Allow `
  -LocalPort 22
```

Se a regra ja existir, nao precisa cria-la novamente. Confirme:

```powershell
Get-Service sshd
Get-NetTCPConnection -LocalPort 22 -State Listen
```

## 3. Gerar uma chave por desenvolvedor

Cada desenvolvedor deve gerar sua propria chave privada. Nunca compartilhe a chave privada de outro membro.

No computador local:

```powershell
New-Item -ItemType Directory -Force "$env:USERPROFILE\.ssh" | Out-Null
ssh-keygen -t ed25519 -a 100 -f "$env:USERPROFILE\.ssh\vps_katana"
```

Arquivos:

- `vps_katana`: chave privada, nunca deve sair do computador.
- `vps_katana.pub`: chave publica que sera cadastrada na VPS.

Veja e copie a chave publica completa:

```powershell
Get-Content "$env:USERPROFILE\.ssh\vps_katana.pub"
```

## 4. Cadastrar a chave na VPS

Entre inicialmente com senha:

```powershell
ssh Administrador@IP_DA_VPS
```

Na VPS, cole a chave publica entre aspas:

```powershell
$publicKey = 'ssh-ed25519 AAAA... nome-do-desenvolvedor'
```

Acrescente a chave sem apagar as chaves existentes:

```powershell
New-Item -ItemType Directory -Force 'C:\ProgramData\ssh' | Out-Null
Add-Content `
  -Path 'C:\ProgramData\ssh\administrators_authorized_keys' `
  -Value $publicKey `
  -Encoding ascii
```

Cada chave deve ficar em uma unica linha. Ajuste as permissoes:

```powershell
icacls 'C:\ProgramData\ssh\administrators_authorized_keys' /inheritance:r
icacls 'C:\ProgramData\ssh\administrators_authorized_keys' `
  /grant:r '*S-1-5-32-544:F' '*S-1-5-18:F'
Restart-Service sshd
```

Teste em outro terminal local, mantendo a sessao atual aberta:

```powershell
ssh -i "$env:USERPROFILE\.ssh\vps_katana" Administrador@IP_DA_VPS
```

Somente considere a configuracao pronta quando entrar sem a senha do usuario. Uma passphrase da chave ainda pode ser solicitada.

## 5. Criar o alias `katana`

No computador local:

```powershell
notepad "$env:USERPROFILE\.ssh\config"
```

Salve o arquivo sem extensao `.txt` com este conteudo:

```sshconfig
Host katana
    HostName IP_DA_VPS
    User Administrador
    Port 22
    IdentityFile ~/.ssh/vps_katana
    IdentitiesOnly yes
```

Se foi salvo como `config.txt`:

```powershell
Rename-Item "$env:USERPROFILE\.ssh\config.txt" 'config'
```

Valide:

```powershell
ssh -G katana | Select-String 'hostname|user|identityfile|port'
ssh katana
```

## 6. Preparar a pasta remota

Na VPS:

```powershell
New-Item -ItemType Directory -Force 'C:\apps\protect-tool'
```

## 7. Liberar scripts PowerShell

Se os arquivos `.ps1` forem bloqueados no computador local:

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

## 8. Executar o deploy

Na raiz do projeto:

```powershell
.\scripts\deploy-katana.ps1
```

Para outro caminho remoto:

```powershell
.\scripts\deploy-katana.ps1 -RemotePath 'C:\apps\outro-diretorio'
```

Versao generica:

```powershell
.\scripts\deploy-windows.ps1 `
  -HostName 'katana' `
  -UserName 'Administrador' `
  -RemotePath 'C:\apps\protect-tool' `
  -Port 22 `
  -IdentityFile "$env:USERPROFILE\.ssh\vps_katana"
```

Antes do deploy, execute `git status`. Arquivos locais nao ignorados tambem sao enviados, mesmo sem commit.

## 9. Criar o `.env` na VPS

O `.env` nao faz parte do deploy. Crie `C:\apps\protect-tool\.env` diretamente na VPS:

```env
SECRET_KEY=CHAVE_LONGA_E_ALEATORIA
FLASK_DEBUG=0
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=katana
POSTGRES_USER=USUARIO_DO_BANCO
POSTGRES_PASSWORD=SENHA_DO_BANCO
BTCPAY_URL=https://btcpay.seudominio.com
BTCPAY_STORE_ID=
BTCPAY_API_KEY=
BTCPAY_WEBHOOK_SECRET=
PUBLIC_APP_BASE_URL=https://app.seudominio.com
```

Nunca coloque credenciais no repositorio ou envie a chave privada SSH.

## 10. Primeiro deploy da aplicacao

Na VPS, depois que os arquivos chegarem:

```powershell
cd 'C:\apps\protect-tool'
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.txt
pip install waitress
python migrations\run_migrations.py
```

Teste:

```powershell
waitress-serve --listen=127.0.0.1:5000 app:app
```

Em deploys posteriores, execute novamente quando necessario:

```powershell
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
python migrations\run_migrations.py
```

O deploy ainda nao reinicia o Waitress ou um servico do Windows automaticamente.

## 11. Seguranca e funcionamento

- Cada dev possui chave propria.
- A VPS recebe apenas chaves publicas.
- O `.env` fica somente na VPS.
- O pacote temporario e removido local e remotamente.
- O primeiro acesso pode pedir confirmacao da fingerprint; valide com o responsavel pela VPS.
- Restrinja a porta 22 aos IPs da equipe quando possivel.
- Nao desative login por senha antes de testar a chave em outro terminal.

## 12. Solucao de problemas

### `Could not resolve hostname katana`

```powershell
Get-ChildItem "$env:USERPROFILE\.ssh" -Force
Get-Content "$env:USERPROFILE\.ssh\config"
```

O arquivo deve se chamar `config`, nao `config.txt`.

### `Permission denied (publickey,password)`

Confira a chave em `C:\ProgramData\ssh\administrators_authorized_keys`, as ACLs, o usuario, `IdentityFile` e reinicie `sshd`.

Diagnostico:

```powershell
ssh -vvv katana
```

### `Connection refused`

Na VPS:

```powershell
Get-Service sshd
Get-NetTCPConnection -LocalPort 22 -State Listen
```

Confira tambem o firewall externo do provedor.

### Script bloqueado

```powershell
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
```

### `.env` nao foi enviado

Esse e o comportamento correto. O arquivo deve ser mantido diretamente na VPS.

### Remover acesso de um desenvolvedor

Remova somente a linha da chave daquele desenvolvedor em:

```text
C:\ProgramData\ssh\administrators_authorized_keys
```

Depois:

```powershell
Restart-Service sshd
```
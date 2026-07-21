# Katana — Painel de Builds APK

**Katana** é um painel para criação de APKs modificados com licenciamento por dias, gerenciamento de operadores e métricas em tempo real. O backend usa Flask, PostgreSQL e dois portais independentes.

## Características

### Licenciamento
- Licenças por dias por operador
- Renovação e bloqueio automático ao expirar
- Limite diário de builds configurável por usuário

### Portais
- **Katana Admin** (`/katana/admin/*`) — master gerencia operadores, métricas globais e builds efêmeros
- **Subscriber** (`/subscriber/*`) — operadores fazem login, builds e consultam histórico

### Métricas
- Dashboard com builds do dia, limite, total, concluídos e erros
- Histórico de apps processados
- Health check em `/health`

## Requisitos

- Python 3.11+
- Java 17+ (apktool e signer)
- PostgreSQL 14+
- Linux ou macOS

## Instalação

### 1. Clonar ou extrair o projeto

```bash
cd dropper
```

### 2. Ambiente Python

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### 3. Variáveis de ambiente

```bash
cp .env.example .env
```

Edite `.env` com `SECRET_KEY` e credenciais do PostgreSQL.

### 4. Banco de dados

```bash
python migrations/run_migrations.py
```

### 5. Iniciar

```bash
./start.sh
```

## Acesso

| Portal | URL |
|--------|-----|
| Operador | http://localhost:5000/subscriber/login |
| Master | http://localhost:5000/katana/admin/login |
| Health | http://localhost:5000/health |

### Contas padrão (após migrations)

| Portal | Usuário | Senha |
|--------|---------|-------|
| Katana Admin | `admin` | `Admin@2026` |
| Subscriber | `operador` | `Operador@2026` |

Altere essas senhas em produção.

## Uso

### Master (Katana Admin)

1. Acesse `/katana/admin/login`
2. **Dashboard** — métricas do servidor, usuários e builds
3. **Make** — build efêmero (não persiste logs/contagens)
4. **Users** — criar operadores, ajustar limite diário, ativar/desativar, deletar
5. **Apps** — histórico completo de builds no servidor

### Operador (Subscriber)

1. Acesse `/subscriber/login`
2. **Dashboard** — builds hoje, limite, restantes, totais
3. **Make** — enviar APK, ícone opcional, acompanhar progresso e baixar
4. **Apps** — histórico pessoal de uploads

## Configuração

### Upload máximo

Em `config.py`:

```python
MAX_CONTENT_LENGTH = 2048 * 1024 * 1024
```

### Porta

Em `app.py`:

```python
app.run(debug=False, host="0.0.0.0", port=5000)
```

## Estrutura do projeto

```
dropper/
├── app.py
├── config.py
├── requirements.txt
├── start.sh
├── .env.example
├── migrations/
├── routes/
│   ├── health.py
│   ├── katana.py
│   └── subscriber.py
├── services/
│   ├── apk.py
│   ├── build_service.py
│   ├── build_state.py
│   ├── data.py
│   ├── database.py
│   ├── java_runtime.py
│   └── session_guard.py
├── templates/
│   ├── katana/admin/
│   └── subscriber/
├── static/
│   ├── css/portal.css
│   └── js/
├── uploads/
├── outputs/
├── dropper_rebuild/
├── apktool.jar
└── signer.jar
```

## API

### Subscriber

| Método | Rota | Descrição |
|--------|------|-----------|
| POST | `/subscriber/login` | Login operador |
| POST | `/subscriber/logout` | Logout |
| GET | `/subscriber/api/session` | Sessão ativa |
| GET | `/subscriber/api/dashboard/metrics` | Métricas |
| POST | `/subscriber/api/build` | Iniciar build |
| GET | `/subscriber/api/build/<id>/status` | Status do build |
| GET | `/subscriber/api/build/<id>/download` | Download APK |
| GET | `/subscriber/api/apps` | Histórico de builds |

### Katana Admin

| Método | Rota | Descrição |
|--------|------|-----------|
| POST | `/katana/admin/login` | Login master |
| POST | `/katana/admin/logout` | Logout |
| GET | `/katana/admin/api/session` | Sessão ativa |
| GET | `/katana/admin/api/dashboard/metrics` | Métricas globais |
| POST | `/katana/admin/api/build` | Build efêmero |
| GET | `/katana/admin/api/build/<id>/status` | Status do build |
| GET | `/katana/admin/api/build/<id>/download` | Download APK |
| GET | `/katana/admin/api/users` | Listar operadores |
| POST | `/katana/admin/api/users` | Criar operador |
| PATCH | `/katana/admin/api/users/<user>` | Atualizar operador |
| POST | `/katana/admin/api/users/<user>/toggle` | Ativar/desativar |
| DELETE | `/katana/admin/api/users/<user>` | Remover operador |
| GET | `/katana/admin/api/apps` | Histórico global |

## Troubleshooting

### Java não encontrado

```bash
java -version
```

No macOS com Homebrew:

```bash
brew install openjdk@17
```

### PostgreSQL inacessível

Confirme `.env` e se o serviço está ativo:

```bash
pg_isready -h localhost -p 5432
```

### Porta 5000 em uso

```bash
lsof -i :5000
```

### Licença expirada

Renove pelo portal Katana Admin em **Users**.

## Segurança

1. Troque as senhas padrão após o primeiro deploy
2. Use HTTPS em produção (Nginx + Let's Encrypt)
3. Faça backup regular do PostgreSQL
4. Restrinja acesso às portas expostas
5. Defina `SECRET_KEY` forte em `.env`

## Licença

Katana © 2026. Todos os direitos reservados.

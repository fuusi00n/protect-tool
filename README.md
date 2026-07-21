# 🔥 SIBERIAN KL REMOTE - Painel de Controle Elite

**Siberian KL** é um painel profissional de controle para criação de APKs modificados com sistema avançado de licenciamento por dias, gerenciamento de usuários e estatísticas em tempo real.

## 🎯 Características Principais

### 🔐 Sistema de Licenciamento
- **Licenças por Dias:** Admin define quantos dias cada operador tem de acesso
- **Renovação Automática:** Renovar licenças com um clique
- **Expiração Automática:** Usuários com licença expirada são bloqueados automaticamente
- **Controle Total:** Owner vê e gerencia todas as licenças

### 👥 Hierarquia de Usuários
- **Owner (Dono):** Controle total do sistema, gerencia admins e operadores
- **Admin (Gerente):** Gerencia sua equipe de operadores e suas licenças
- **Operator (Operador):** Cria builds de APK (acesso limitado por licença)

### 📊 Sistema de Amplificação
- **Estatísticas em Tempo Real:** Total de builds, sucessos e falhas
- **Dashboard Inteligente:** Visualize performance de cada usuário
- **Histórico Completo:** Rastreie todas as ações do sistema

### 🎨 Interface Moderna
- **Design Sofisticado:** Verde neon sobre fundo dark
- **Animações Fluidas:** Transições suaves e efeitos glassmorphism
- **Responsivo:** Funciona em desktop e tablets
- **Drag & Drop:** Arraste APKs e ícones facilmente

## 📋 Requisitos

- **Python 3.8+**
- **Java 17+** (para apktool e signer)
- **Linux/Mac** (ou WSL no Windows)

## 🚀 Instalação Rápida

### 1. Extrair o projeto
```bash
unzip gangstar_remote.zip
cd gangstar_remote
```

### 2. Instalar dependências
```bash
pip3 install -r requirements.txt
```

### 3. Iniciar o servidor
```bash
./start.sh
```

O painel estará disponível em: **http://localhost:5000**

### 4. Login Padrão
- **Usuário:** `admin`
- **Senha:** `admin123`

## 📖 Guia de Uso

### Para o Owner (Dono)

#### Criar um Novo Admin
1. Acesse a aba **"Usuários"**
2. Clique em **"Novo ADM"**
3. Preencha:
   - Usuário (nome único)
   - Senha
   - Dias de Licença (ex: 30)
4. Clique em **"Criar ADM"**

#### Renovar Licença de um Usuário
1. Acesse a aba **"Usuários"**
2. Encontre o usuário na tabela
3. Clique em **"Renovar"**
4. Digite quantos dias deseja adicionar
5. Confirme

#### Deletar um Usuário
1. Acesse a aba **"Usuários"**
2. Encontre o usuário na tabela
3. Clique em **"Deletar"**
4. Confirme a exclusão

#### Ver Histórico de Atividades
1. Acesse a aba **"Histórico"**
2. Veja todas as ações do sistema (logins, builds, criações de usuários, etc.)

### Para o Admin (Gerente)

#### Criar um Novo Operador
1. Acesse a aba **"Minha Equipe"**
2. Clique em **"Novo Operador"**
3. Preencha:
   - Usuário (nome único)
   - Senha
   - Dias de Licença (ex: 30)
4. Clique em **"Criar Operador"**

#### Renovar Licença de um Operador
1. Acesse a aba **"Minha Equipe"**
2. Encontre o operador na tabela
3. Clique em **"Renovar"**
4. Digite quantos dias deseja adicionar

#### Ativar/Desativar um Operador
1. Acesse a aba **"Minha Equipe"**
2. Encontre o operador na tabela
3. Clique em **"Toggle"** para ativar ou desativar

### Para o Operator (Operador)

#### Criar um Build de APK
1. Acesse a aba **"Build APK"**
2. Preencha o **"Nome do Aplicativo"** (ex: "Meu App")
3. Clique na área de upload ou arraste um arquivo `.apk`
4. (Opcional) Selecione um ícone `.png` ou `.jpg`
5. Clique em **"Iniciar Build"**
6. Aguarde o processamento
7. Quando concluído, clique em **"Baixar APK"**

#### Ver Histórico de Builds
1. Acesse a aba **"Meus Builds"**
2. Veja todos os seus builds anteriores
3. Clique em **"Baixar"** para baixar um build concluído

#### Ver Estatísticas Pessoais
1. Acesse o **"Dashboard"**
2. Veja seus stats:
   - Total de Builds
   - Builds Concluídos
   - Builds em Processamento

## 🔧 Configuração Avançada

### Modificar Credenciais Padrão

Edite `app.py` e procure pela função `load_data()`:

```python
"admin": {
    "password": "admin123",  # Altere aqui
    "role": "owner",
    ...
}
```

### Aumentar Limite de Upload

Em `app.py`, altere a linha:

```python
app.config['MAX_CONTENT_LENGTH'] = 2048 * 1024 * 1024  # 2GB
```

Para um valor maior ou menor conforme necessário.

### Mudar Porta do Servidor

No final de `app.py`:

```python
app.run(debug=False, host='0.0.0.0', port=5000)  # Altere 5000 para outra porta
```

## 📁 Estrutura de Arquivos

```
gangstar_remote/
├── app.py                    # Backend Flask
├── requirements.txt          # Dependências Python
├── start.sh                  # Script de inicialização
├── apktool.jar              # Ferramenta de compilação APK
├── signer.jar               # Ferramenta de assinatura APK
├── dropper_rebuild/         # Template do dropper (modificado)
├── templates/
│   └── index.html           # Interface web
├── static/
│   └── img/
│       ├── logo_v1.png      # Logo versão 1
│       └── logo_v2.png      # Logo versão 2
├── uploads/                 # APKs e ícones enviados
├── outputs/                 # APKs processados
└── apk_dropper/
    └── data.json            # Banco de dados (usuários, builds, histórico)
```

## 🐛 Troubleshooting

### Erro: "apktool.jar não encontrado"
```bash
# Verifique se o arquivo existe
ls -la apktool.jar

# Se não existir, copie do backup ou baixe novamente
```

### Erro: "Java não encontrado"
```bash
# Instale Java 17
sudo apt-get install openjdk-17-jdk

# Verifique a instalação
java -version
```

### Erro: "Porta 5000 já está em uso"
```bash
# Encontre o processo usando a porta
lsof -i :5000

# Mate o processo ou mude a porta em app.py
```

### Licença expirada ao fazer login
- Isso é normal! O admin precisa renovar a licença do usuário
- Acesse como admin/owner e renove a licença na aba de usuários

## 🔒 Segurança

### Recomendações

1. **Altere a Senha Padrão:** Mude a senha do admin na primeira inicialização
2. **Use HTTPS em Produção:** Configure um reverse proxy com SSL (Nginx + Let's Encrypt)
3. **Backup Regular:** Faça backup de `apk_dropper/data.json` regularmente
4. **Firewall:** Restrinja acesso à porta 5000 apenas para IPs confiáveis

### Dados Sensíveis

- Senhas são armazenadas em texto puro (considere usar bcrypt em produção)
- Licenças são armazenadas em JSON (considere usar um banco de dados real)
- Todos os builds são armazenados em `outputs/` (limpe regularmente)

## 📊 Estrutura de Dados

### Usuário
```json
{
  "username": "operador1",
  "password": "senha123",
  "role": "operator",
  "status": "active",
  "license_days": 30,
  "license_expires_at": "2026-06-03T06:52:00.000000",
  "created_at": "2026-05-04T06:52:00.000000",
  "team_id": "uuid-do-admin",
  "builds": [],
  "amplification": {
    "total_builds": 5,
    "successful_builds": 4,
    "failed_builds": 1
  }
}
```

### Build
```json
{
  "build_id": "build_1714814400",
  "app_name": "Meu App",
  "status": "concluido",
  "timestamp": "2026-05-04T06:52:00.000000",
  "date_display": "04/05/2026 06:52:00"
}
```

## 🎓 API Endpoints

### Autenticação
- `POST /login` - Fazer login
- `GET /logout` - Fazer logout
- `GET /check-session` - Verificar sessão ativa

### Builds
- `POST /upload` - Enviar APK para build
- `GET /status/<build_id>` - Verificar status do build
- `GET /download/<build_id>` - Baixar APK processado
- `GET /user/builds` - Listar builds do usuário

### Usuários
- `GET /user/profile` - Perfil do usuário logado
- `GET /admin/users` - Listar usuários (admin/owner)
- `POST /admin/create-user` - Criar novo usuário
- `POST /admin/renew-license` - Renovar licença
- `POST /admin/toggle-user` - Ativar/desativar usuário
- `POST /admin/delete-user` - Deletar usuário

### Histórico
- `GET /admin/history` - Histórico de atividades (owner)

## 📞 Suporte

Para problemas ou dúvidas:
1. Verifique o arquivo `apk_dropper/data.json` para ver o estado do sistema
2. Verifique os logs do servidor (output do terminal)
3. Limpe a cache do navegador (Ctrl+Shift+Del)
4. Reinicie o servidor

## 📝 Licença

Siberian KL © 2026. Todos os direitos reservados.

---

**Desenvolvido com ❤️ para elite**

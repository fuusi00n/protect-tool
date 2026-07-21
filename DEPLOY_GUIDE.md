# 🚀 SIBERIAN KL REMOTE - Guia de Deploy

## Deploy Local (Desenvolvimento)

### 1. Preparação Inicial
```bash
# Extrair o projeto
unzip gangstar_remote.zip
cd gangstar_remote

# Instalar dependências
pip3 install -r requirements.txt

# Dar permissão ao script
chmod +x start.sh
```

### 2. Iniciar o Servidor
```bash
./start.sh
```

**Acesso:** http://localhost:5000
**Credenciais:** admin / admin123

---

## Deploy em Produção (Linux/VPS)

### 1. Preparação do Servidor

```bash
# Atualizar sistema
sudo apt-get update && sudo apt-get upgrade -y

# Instalar dependências
sudo apt-get install -y python3 python3-pip openjdk-17-jdk git

# Criar diretório do projeto
sudo mkdir -p /var/www/gangstar
cd /var/www/gangstar

# Extrair projeto
sudo unzip gangstar_remote.zip -d .
sudo chown -R $USER:$USER /var/www/gangstar
```

### 2. Instalar Dependências Python

```bash
cd /var/www/gangstar
pip3 install -r requirements.txt
```

### 3. Usar Gunicorn (Servidor WSGI)

```bash
# Instalar Gunicorn
pip3 install gunicorn

# Testar com Gunicorn
gunicorn -w 4 -b 0.0.0.0:5000 app:app
```

### 4. Configurar com Systemd (Auto-start)

Criar arquivo `/etc/systemd/system/gangstar.service`:

```ini
[Unit]
Description=Siberian KL - APK Builder
After=network.target

[Service]
Type=notify
User=www-data
WorkingDirectory=/var/www/gangstar
Environment="PATH=/usr/local/bin:/usr/bin:/bin"
ExecStart=/usr/local/bin/gunicorn -w 4 -b 127.0.0.1:5000 app:app
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

Ativar o serviço:

```bash
sudo systemctl daemon-reload
sudo systemctl enable gangstar
sudo systemctl start gangstar
sudo systemctl status gangstar
```

### 5. Configurar Nginx como Reverse Proxy

Criar arquivo `/etc/nginx/sites-available/gangstar`:

```nginx
server {
    listen 80;
    server_name seu-dominio.com;

    location / {
        proxy_pass http://127.0.0.1:5000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        
        # Timeout para builds longos
        proxy_connect_timeout 600s;
        proxy_send_timeout 600s;
        proxy_read_timeout 600s;
    }
}
```

Ativar o site:

```bash
sudo ln -s /etc/nginx/sites-available/gangstar /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
```

### 6. Configurar SSL com Let's Encrypt

```bash
# Instalar Certbot
sudo apt-get install -y certbot python3-certbot-nginx

# Gerar certificado
sudo certbot --nginx -d seu-dominio.com

# Auto-renovação
sudo systemctl enable certbot.timer
sudo systemctl start certbot.timer
```

---

## Deploy com Docker

### Dockerfile

```dockerfile
FROM python:3.11-slim

WORKDIR /app

# Instalar Java
RUN apt-get update && apt-get install -y openjdk-17-jdk && rm -rf /var/lib/apt/lists/*

# Copiar arquivos
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Criar diretórios
RUN mkdir -p uploads outputs apk_dropper

EXPOSE 5000

CMD ["python3", "app.py"]
```

### docker-compose.yml

```yaml
version: '3.8'

services:
  gangstar:
    build: .
    ports:
      - "5000:5000"
    volumes:
      - ./uploads:/app/uploads
      - ./outputs:/app/outputs
      - ./apk_dropper:/app/apk_dropper
    environment:
      - FLASK_ENV=production
    restart: always
```

Iniciar:

```bash
docker-compose up -d
```

---

## Monitoramento e Manutenção

### Verificar Status

```bash
# Ver logs do Gunicorn
sudo journalctl -u gangstar -f

# Ver uso de disco
du -sh /var/www/gangstar/*

# Ver processo Python
ps aux | grep gunicorn
```

### Limpeza de Arquivos Antigos

Criar script `/var/www/gangstar/cleanup.sh`:

```bash
#!/bin/bash

# Remover builds com mais de 7 dias
find /var/www/gangstar/outputs -type f -mtime +7 -delete
find /var/www/gangstar/uploads -type f -mtime +7 -delete

echo "Limpeza concluída em $(date)"
```

Adicionar ao crontab:

```bash
crontab -e
# Adicionar linha:
0 2 * * * /var/www/gangstar/cleanup.sh >> /var/log/gangstar-cleanup.log 2>&1
```

### Backup de Dados

```bash
#!/bin/bash

BACKUP_DIR="/backups/gangstar"
mkdir -p $BACKUP_DIR

# Backup do banco de dados
cp /var/www/gangstar/apk_dropper/data.json $BACKUP_DIR/data_$(date +%Y%m%d_%H%M%S).json

# Manter apenas últimos 30 backups
ls -t $BACKUP_DIR/data_*.json | tail -n +31 | xargs rm -f

echo "Backup concluído"
```

Adicionar ao crontab:

```bash
0 3 * * * /var/www/gangstar/backup.sh >> /var/log/gangstar-backup.log 2>&1
```

---

## Troubleshooting

### Erro: "Permission denied" ao iniciar

```bash
# Dar permissão ao usuário
sudo chown -R www-data:www-data /var/www/gangstar
sudo chmod -R 755 /var/www/gangstar
```

### Erro: "Java: command not found"

```bash
# Instalar Java
sudo apt-get install -y openjdk-17-jdk

# Verificar
java -version
```

### Erro: "Porta 5000 já em uso"

```bash
# Encontrar processo
lsof -i :5000

# Matar processo
kill -9 <PID>
```

### Build muito lento

- Aumentar limite de memória: `ulimit -v unlimited`
- Usar SSD em vez de HDD
- Aumentar workers do Gunicorn: `-w 8`

---

## Checklist de Segurança

- [ ] Alterar senha padrão do admin
- [ ] Configurar firewall (ufw)
- [ ] Habilitar SSL/TLS
- [ ] Fazer backup regular de `data.json`
- [ ] Limpar arquivos antigos regularmente
- [ ] Monitorar uso de disco
- [ ] Configurar fail2ban para proteção contra brute force
- [ ] Usar senhas fortes para todos os usuários

---

## Performance

### Otimizações Recomendadas

1. **Nginx:** Aumentar `worker_processes` e `worker_connections`
2. **Gunicorn:** Usar `--workers` baseado em CPU cores: `2 * CPU_CORES + 1`
3. **Python:** Usar `PyPy` em vez de CPython para melhor performance
4. **Banco de Dados:** Migrar `data.json` para PostgreSQL/MySQL em produção

### Exemplo de Configuração Otimizada

```bash
gunicorn -w 9 \
         -b 0.0.0.0:5000 \
         --worker-class sync \
         --worker-connections 1000 \
         --max-requests 1000 \
         --max-requests-jitter 50 \
         --timeout 600 \
         app:app
```

---

## Suporte

Para problemas, verifique:
1. Logs do servidor: `journalctl -u gangstar -f`
2. Arquivo `apk_dropper/data.json` (integridade)
3. Espaço em disco: `df -h`
4. Permissões de arquivo: `ls -la /var/www/gangstar`


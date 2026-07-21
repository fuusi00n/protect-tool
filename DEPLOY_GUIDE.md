# Katana — Guia de Deploy

## Deploy local (desenvolvimento)

### Preparação

```bash
cd dropper
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env
```

Configure `.env` com `SECRET_KEY` e PostgreSQL.

### Migrations

```bash
python migrations/run_migrations.py
```

### Iniciar

```bash
chmod +x start.sh
./start.sh
```

| Item | Valor |
|------|-------|
| Operador | http://localhost:5000/subscriber/login |
| Master | http://localhost:5000/katana/admin/login |
| Master user | `admin` / `Admin@2026` |
| Operador user | `operador` / `Operador@2026` |

---

## Deploy em produção (Linux/VPS)

### Servidor

```bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y python3 python3-pip python3-venv openjdk-17-jdk postgresql nginx
sudo mkdir -p /var/www/katana
cd /var/www/katana
```

Copie o projeto para `/var/www/katana` e ajuste permissões:

```bash
sudo chown -R $USER:$USER /var/www/katana
```

### Python e dependências

```bash
cd /var/www/katana
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
pip install gunicorn
```

### PostgreSQL

```bash
sudo -u postgres createuser katana -P
sudo -u postgres createdb dropper -O katana
```

Configure `.env`:

```env
SECRET_KEY=sua_chave_secreta_longa
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=dropper
POSTGRES_USER=katana
POSTGRES_PASSWORD=sua_senha
```

Rode migrations:

```bash
python migrations/run_migrations.py
```

### Gunicorn

Teste:

```bash
gunicorn -w 4 -b 127.0.0.1:5000 app:app
```

### Systemd

Arquivo `/etc/systemd/system/katana.service`:

```ini
[Unit]
Description=Katana APK Builder
After=network.target postgresql.service

[Service]
Type=notify
User=www-data
WorkingDirectory=/var/www/katana
Environment="PATH=/var/www/katana/.venv/bin:/usr/local/bin:/usr/bin:/bin"
EnvironmentFile=/var/www/katana/.env
ExecStart=/var/www/katana/.venv/bin/gunicorn -w 4 -b 127.0.0.1:5000 app:app
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

Ativar:

```bash
sudo systemctl daemon-reload
sudo systemctl enable katana
sudo systemctl start katana
sudo systemctl status katana
```

### Nginx

Arquivo `/etc/nginx/sites-available/katana`:

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
        proxy_connect_timeout 600s;
        proxy_send_timeout 600s;
        proxy_read_timeout 600s;
    }
}
```

Ativar:

```bash
sudo ln -s /etc/nginx/sites-available/katana /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
```

### SSL (Let's Encrypt)

```bash
sudo apt-get install -y certbot python3-certbot-nginx
sudo certbot --nginx -d seu-dominio.com
sudo systemctl enable certbot.timer
sudo systemctl start certbot.timer
```

---

## Deploy com Docker

### Dockerfile

```dockerfile
FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y openjdk-17-jdk && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt gunicorn

COPY . .

RUN mkdir -p uploads outputs

EXPOSE 5000

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
```

### docker-compose.yml

```yaml
version: "3.8"

services:
  db:
    image: postgres:16
    environment:
      POSTGRES_DB: dropper
      POSTGRES_USER: katana
      POSTGRES_PASSWORD: katana_secret
    volumes:
      - pgdata:/var/lib/postgresql/data

  katana:
    build: .
    ports:
      - "5000:5000"
    volumes:
      - ./uploads:/app/uploads
      - ./outputs:/app/outputs
    environment:
      SECRET_KEY: change_me
      POSTGRES_HOST: db
      POSTGRES_PORT: 5432
      POSTGRES_DB: dropper
      POSTGRES_USER: katana
      POSTGRES_PASSWORD: katana_secret
    depends_on:
      - db
    restart: always

volumes:
  pgdata:
```

Iniciar:

```bash
docker compose up -d
docker compose exec katana python migrations/run_migrations.py
```

---

## Monitoramento e manutenção

### Status

```bash
sudo journalctl -u katana -f
du -sh /var/www/katana/*
ps aux | grep gunicorn
curl -s http://127.0.0.1:5000/health
```

### Limpeza de arquivos antigos

Script `/var/www/katana/cleanup.sh`:

```bash
#!/bin/bash
find /var/www/katana/outputs -type f -mtime +7 -delete
find /var/www/katana/uploads -type f -mtime +7 -delete
echo "Limpeza concluida em $(date)"
```

Crontab:

```bash
0 2 * * * /var/www/katana/cleanup.sh >> /var/log/katana-cleanup.log 2>&1
```

### Backup do PostgreSQL

Script `/var/www/katana/backup.sh`:

```bash
#!/bin/bash
BACKUP_DIR="/backups/katana"
mkdir -p "$BACKUP_DIR"
pg_dump -h localhost -U katana dropper > "$BACKUP_DIR/dropper_$(date +%Y%m%d_%H%M%S).sql"
ls -t "$BACKUP_DIR"/dropper_*.sql | tail -n +31 | xargs rm -f
echo "Backup concluido"
```

Crontab:

```bash
0 3 * * * /var/www/katana/backup.sh >> /var/log/katana-backup.log 2>&1
```

---

## Troubleshooting

### Permission denied

```bash
sudo chown -R www-data:www-data /var/www/katana
sudo chmod -R 755 /var/www/katana
```

### Java não encontrado

```bash
sudo apt-get install -y openjdk-17-jdk
java -version
```

### Porta 5000 em uso

```bash
lsof -i :5000
kill -9 <PID>
```

### Build lento

- Prefira SSD
- Ajuste workers: `2 * CPU_CORES + 1`
- Aumente timeouts do Nginx para builds longos

---

## Checklist de segurança

- [ ] Alterar senhas padrão (`admin`, `operador`)
- [ ] Configurar firewall (ufw)
- [ ] Habilitar SSL/TLS
- [ ] Backup regular do PostgreSQL
- [ ] Limpar uploads/outputs antigos
- [ ] Monitorar uso de disco
- [ ] Configurar fail2ban
- [ ] `SECRET_KEY` forte em `.env`

---

## Performance

Exemplo Gunicorn:

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

Em caso de problemas, verifique:

1. Logs: `journalctl -u katana -f`
2. Health: `curl http://127.0.0.1:5000/health`
3. PostgreSQL: `pg_isready` e credenciais em `.env`
4. Disco: `df -h`
5. Permissões: `ls -la /var/www/katana`

#!/bin/bash

echo "╔════════════════════════════════════════╗"
echo "║   SIBERIAN KL REMOTE - Painel Elite       ║"
echo "║   Iniciando servidor...                ║"
echo "╚════════════════════════════════════════╝"
echo ""

# Verificar dependências
echo "[*] Verificando dependências..."

if ! command -v python3 &> /dev/null; then
    echo "[✗] Python3 não encontrado!"
    exit 1
fi

if ! command -v java &> /dev/null; then
    echo "[✗] Java não encontrado!"
    exit 1
fi

echo "[✓] Python3 encontrado"
echo "[✓] Java encontrado"
echo ""

# Instalar dependências Python
echo "[*] Instalando dependências Python..."
pip3 install -q -r requirements.txt 2>/dev/null

# Criar diretórios se não existirem
mkdir -p uploads outputs apk_dropper

echo "[✓] Ambiente preparado"
echo ""
echo "╔════════════════════════════════════════╗"
echo "║   Servidor iniciado em:                ║"
echo "║   http://localhost:5000                ║"
echo "║                                        ║"
echo "║   Credenciais padrão:                  ║"
echo "║   Usuário: admin                       ║"
echo "║   Senha: admin123                      ║"
echo "╚════════════════════════════════════════╝"
echo ""

# Iniciar servidor
python3 app.py

#!/bin/bash

if [ -d "/opt/homebrew/opt/openjdk@17" ]; then
    export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
elif [ -d "/opt/homebrew/opt/openjdk" ]; then
    export JAVA_HOME="/opt/homebrew/opt/openjdk"
elif [ -d "/usr/local/opt/openjdk@17" ]; then
    export JAVA_HOME="/usr/local/opt/openjdk@17"
fi
if [ -n "$JAVA_HOME" ]; then
    export PATH="$JAVA_HOME/bin:$PATH"
fi

echo "╔════════════════════════════════════════╗"
echo "║   KATANA - Painel de Builds APK        ║"
echo "║   Iniciando servidor...                ║"
echo "╚════════════════════════════════════════╝"
echo ""

echo "[*] Verificando dependencias..."

if ! command -v python3 &> /dev/null; then
    echo "[x] Python3 nao encontrado!"
    exit 1
fi

if ! command -v java &> /dev/null; then
    echo "[x] Java nao encontrado!"
    exit 1
fi

echo "[ok] Python3 encontrado"
echo "[ok] Java encontrado"
echo ""

if [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
    PYTHON=".venv/bin/python"
    PIP=".venv/bin/pip"
else
    PYTHON="python3"
    PIP="pip3"
fi

echo "[*] Instalando dependencias Python..."
$PIP install -q -r requirements.txt 2>/dev/null

mkdir -p uploads outputs

if [ -f ".env" ]; then
    echo "[*] Executando migrations..."
    $PYTHON migrations/run_migrations.py 2>/dev/null || echo "[!] Migrations falharam — verifique .env e PostgreSQL"
fi

echo "[ok] Ambiente preparado"
echo ""

export FLASK_DEBUG="${FLASK_DEBUG:-1}"

echo "╔════════════════════════════════════════╗"
echo "║   Servidor: http://localhost:5000      ║"
echo "║                                        ║"
echo "║   Operador: /subscriber/login          ║"
echo "║   Master:   /katana/admin/login        ║"
echo "║                                        ║"
echo "║   Master:   admin / Admin@2026         ║"
echo "║   Operador: operador / Operador@2026   ║"
echo "╚════════════════════════════════════════╝"
echo ""

$PYTHON app.py

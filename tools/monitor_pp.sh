#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
LOG_DIR="$ROOT/logs"
mkdir -p "$LOG_DIR"

ADB="${ADB:-adb}"
SERIAL=""
PKG=""
CLEAR=0
START=0

usage() {
  cat <<'EOF'
Uso:
  ./tools/monitor_pp.sh [--clear] [--start] [serial] [dropper_package]

  --clear   Limpa dados Play Store + GMS (use antes de retestar PP)
  --start   Inicia logcat filtrado (salva em logs/pp_monitor_<ts>.log)
  serial    ex: 192.168.3.4:37853 (default: primeiro device adb)
  package   filtra logcat pelo package do dropper (opcional)

Exemplos:
  ./tools/monitor_pp.sh --clear 192.168.3.4:37853
  ./tools/monitor_pp.sh --start 192.168.3.4:37853 com.example.dropper
EOF
}

while [[ $
  case "$1" in
    --clear) CLEAR=1; shift ;;
    --start) START=1; shift ;;
    -h|--help) usage; exit 0 ;;
    *)
      if [[ -z "$SERIAL" ]]; then SERIAL="$1"
      elif [[ -z "$PKG" ]]; then PKG="$1"
      fi
      shift
      ;;
  esac
done

if [[ -z "$SERIAL" ]]; then
  SERIAL="$("$ADB" devices | awk 'NR>1 && $2=="device" {print $1; exit}')"
fi

if [[ -z "$SERIAL" ]]; then
  echo "Nenhum device ADB encontrado." >&2
  exit 1
fi

ADB_S=("$ADB" -s "$SERIAL")

echo "== Device: $SERIAL =="
"${ADB_S[@]}" shell getprop ro.product.model ro.build.version.release 2>/dev/null | tr '\n' ' '
echo

if [[ "$CLEAR" -eq 1 ]]; then
  echo "== Limpando cache Play Store / GMS (pode demorar) =="
  for pkg in com.android.vending com.google.android.gms com.google.android.gsf; do
    echo "  pm clear $pkg"
    "${ADB_S[@]}" shell pm clear "$pkg" 2>/dev/null || echo "    (skip $pkg)"
  done
  echo "Limpeza concluida. Reinicie o Play Store e aguarde ~1 min antes do teste."
fi

if [[ "$START" -eq 0 && "$CLEAR" -eq 1 ]]; then
  exit 0
fi

if [[ "$START" -eq 0 ]]; then
  echo "Use --start para iniciar logcat, ou --clear --start juntos."
  exit 0
fi

TS="$(date +%Y%m%d_%H%M%S)"
LOG_FILE="$LOG_DIR/pp_monitor_${TS}.log"

FILTER=(
  'VerifyApps:*'
  'SafetySource:*'
  'PackageManager:*'
  'PackageInstaller:*'
  'SessionCommitReceiver:*'
  'GmsCore:*'
  'GooglePlayServices:*'
  'PlayCore:*'
  'AndroidRuntime:E'
  'System.err:W'
)

if [[ -n "$PKG" ]]; then
  FILTER+=("$PKG:*")
fi

echo "== Logcat -> $LOG_FILE =="
echo "Instale/teste o APK agora. Ctrl+C para parar."
echo "Package filter: ${PKG:-(nenhum)}"
echo

"${ADB_S[@]}" logcat -c
"${ADB_S[@]}" logcat -v threadtime "${FILTER[@]}" 2>&1 | tee "$LOG_FILE"

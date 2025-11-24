#!/bin/bash

# ╔══════════════════════════════════════════════════════════════╗
# ║     BoomBang C# Emulator - Startup Script (macOS)           ║
# ╚══════════════════════════════════════════════════════════════╝

echo "╔══════════════════════════════════════════════════════════════╗"
echo "║     BoomBang C# Emulator - Starting...                      ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

# Verificar que Mono esté instalado
if ! command -v mono &> /dev/null; then
    echo "❌ Mono no está instalado"
    echo "   Instálalo con: brew install mono"
    exit 1
fi

echo "✓ Mono $(mono --version | head -1)"
echo ""

# Configurar variables de entorno
export MONO_GAC_PREFIX="/opt/homebrew"
export DB_HOST="127.0.0.1"
export DB_PORT="3306"
export DB_DATABASE="boombang"
export DB_USERNAME="boombang_user"
export DB_PASSWORD="boombang_pass"
export WEB_SOCKET_HOST="0.0.0.0"
export WEB_SOCKET_PORT="3300"
export API_HOST="http://127.0.0.1:8000/webapi"

echo "📦 Configuración:"
echo "   Database: $DB_HOST:$DB_PORT/$DB_DATABASE"
echo "   WebSocket: $WEB_SOCKET_HOST:$WEB_SOCKET_PORT"
echo "   API: $API_HOST"
echo ""

# Cambiar al directorio del ejecutable
cd "boombang-2022-emulator-main/Proyect Base/bin/Debug/" || exit 1

echo "🚀 Iniciando BoomBang Server..."
echo "   Presiona Ctrl+C para detener"
echo ""

# Ejecutar el emulador con Mono
mono "BoomBang Server.exe"

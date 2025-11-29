#!/bin/bash

# Script de Testing Interactivo para Ruffle
# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║         SCRIPT DE DEBUG - RUFFLE FLASH EMULATOR             ║${NC}"
echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
echo ""

# Función para verificar comandos
check_command() {
    if command -v $1 &> /dev/null; then
        echo -e "${GREEN}✓${NC} $1 encontrado"
        return 0
    else
        echo -e "${RED}✗${NC} $1 NO encontrado"
        return 1
    fi
}

# Función para verificar archivos
check_file() {
    if [ -f "$1" ]; then
        echo -e "${GREEN}✓${NC} $1"
        return 0
    else
        echo -e "${RED}✗${NC} $1 NO existe"
        return 1
    fi
}

# Verificar rama
echo -e "${BLUE}Paso 1: Verificando rama Git${NC}"
current_branch=$(git branch --show-current)
if [ "$current_branch" == "feature/ruffle-flash-emulator" ]; then
    echo -e "${GREEN}✓${NC} En rama correcta: $current_branch"
else
    echo -e "${YELLOW}⚠${NC}  Estás en rama: $current_branch"
    echo -e "${YELLOW}⚠${NC}  Se recomienda: feature/ruffle-flash-emulator"
    read -p "¿Cambiar a feature/ruffle-flash-emulator? (s/n): " change_branch
    if [ "$change_branch" = "s" ]; then
        git checkout feature/ruffle-flash-emulator
    fi
fi
echo ""

# Verificar requisitos
echo -e "${BLUE}Paso 2: Verificando requisitos del sistema${NC}"
all_ok=true

check_command "php" || all_ok=false
check_command "composer" || all_ok=false
check_command "node" || all_ok=false
check_command "npm" || all_ok=false
check_command "mysql" || all_ok=false

if [ "$all_ok" = false ]; then
    echo -e "${RED}❌ Faltan requisitos. Instala los faltantes antes de continuar.${NC}"
    exit 1
fi
echo ""

# Verificar archivos clave
echo -e "${BLUE}Paso 3: Verificando archivos clave de Ruffle${NC}"
cd boombang-2022-app-master

check_file "resources/views/layout/app.blade.php"
check_file "resources/views/components/game-page/flash.blade.php"
check_file "resources/views/components/game-page/game-container.blade.php"
check_file "public/static/flash_esp/BoomBangLoader.swf"
check_file "node/server.js"
check_file "node/.env"
echo ""

# Verificar que Ruffle esté en el layout
echo -e "${BLUE}Paso 4: Verificando integración de Ruffle${NC}"
if grep -q "ruffle" resources/views/layout/app.blade.php; then
    echo -e "${GREEN}✓${NC} Ruffle detectado en app.blade.php"
else
    echo -e "${RED}✗${NC} Ruffle NO encontrado en app.blade.php"
    echo -e "${YELLOW}⚠${NC}  ¿Estás en la rama correcta?"
fi
echo ""

# Verificar dependencias de Node.js
echo -e "${BLUE}Paso 5: Verificando dependencias${NC}"
if [ ! -d "node_modules" ]; then
    echo -e "${YELLOW}⚠${NC}  node_modules no existe en Laravel"
    read -p "¿Instalar dependencias Laravel? (s/n): " install_laravel
    if [ "$install_laravel" = "s" ]; then
        npm install
    fi
fi

if [ ! -d "node/node_modules" ]; then
    echo -e "${YELLOW}⚠${NC}  node_modules no existe en servidor Socket.IO"
    read -p "¿Instalar dependencias Socket.IO? (s/n): " install_socket
    if [ "$install_socket" = "s" ]; then
        cd node
        npm install
        cd ..
    fi
fi
echo ""

# Verificar base de datos
echo -e "${BLUE}Paso 6: Verificando base de datos${NC}"
if grep -q "DB_DATABASE=boombang" .env; then
    echo -e "${GREEN}✓${NC} Base de datos configurada: boombang"
else
    echo -e "${YELLOW}⚠${NC}  Base de datos no configurada"
fi
echo ""

# Test de conectividad
echo -e "${BLUE}Paso 7: Test de conectividad MySQL${NC}"
DB_USER=$(grep DB_USERNAME .env | cut -d '=' -f2)
DB_PASS=$(grep DB_PASSWORD .env | cut -d '=' -f2)
DB_NAME=$(grep DB_DATABASE .env | cut -d '=' -f2)

if mysql -u"$DB_USER" -p"$DB_PASS" -e "USE $DB_NAME" 2>/dev/null; then
    echo -e "${GREEN}✓${NC} Conexión a MySQL exitosa"
else
    echo -e "${RED}✗${NC} No se pudo conectar a MySQL"
    echo -e "${YELLOW}⚠${NC}  Verifica las credenciales en .env"
fi
echo ""

# Instrucciones para iniciar servidores
echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║                  LISTO PARA INICIAR                          ║${NC}"
echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
echo ""
echo -e "${GREEN}Abre 3 terminales y ejecuta en este orden:${NC}"
echo ""
echo -e "${YELLOW}Terminal 1 - Laravel (puerto 8000):${NC}"
echo "  cd $(pwd)"
echo "  php artisan serve"
echo ""
echo -e "${YELLOW}Terminal 2 - C# Emulator (puerto 3300):${NC}"
echo "  cd ../boombang-2022-emulator-main/Proyect\\ Base/bin/Debug"
echo "  ./ProyectBase.exe (Windows) o mono ProyectBase.exe (Mac/Linux)"
echo ""
echo -e "${YELLOW}Terminal 3 - Node.js Socket Server (puerto 3000):${NC}"
echo "  cd $(pwd)/node"
echo "  npm start"
echo ""
echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}Después de iniciar, abre tu navegador en:${NC}"
echo -e "${CYAN}  http://localhost:8000${NC}"
echo ""
echo -e "${GREEN}Abre Developer Tools (F12) y revisa:${NC}"
echo "  1. Console - Busca: 'Ruffle: Loading BoomBang SWF'"
echo "  2. Network - Verifica que BoomBangLoader.swf se descargue"
echo "  3. Elements - Busca <object id=\"ruffle_player\">"
echo ""
echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${YELLOW}Para debug detallado:${NC}"
echo "  - Ver logs en consola del navegador"
echo "  - Verificar terminal de Node.js"
echo "  - Revisar TESTING_RUFFLE.md para troubleshooting"
echo ""
echo -e "${GREEN}¡Buena suerte con las pruebas! 🚀${NC}"

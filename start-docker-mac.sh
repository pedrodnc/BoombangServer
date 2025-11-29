#!/bin/bash

# Script de inicio para Docker en macOS
# BoomBang Server - Ruffle Edition

echo "╔══════════════════════════════════════════════════════════════╗"
echo "║     BoomBang Server - Docker Startup (macOS)                ║"
echo "╔══════════════════════════════════════════════════════════════╗"
echo ""

# Colores
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Verificar que Docker está instalado
if ! command -v docker &> /dev/null; then
    echo -e "${RED}❌ Docker no está instalado${NC}"
    echo ""
    echo "Por favor instala Docker Desktop desde:"
    echo "https://www.docker.com/products/docker-desktop"
    exit 1
fi

# Verificar que Docker está corriendo
if ! docker info &> /dev/null; then
    echo -e "${YELLOW}⚠️  Docker no está corriendo${NC}"
    echo ""
    echo "Por favor:"
    echo "1. Abre Docker Desktop"
    echo "2. Espera a que inicie completamente"
    echo "3. Ejecuta este script de nuevo"
    exit 1
fi

echo -e "${GREEN}✓${NC} Docker está instalado y corriendo"
echo ""

# Configurar variables de entorno para permisos
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

echo -e "${BLUE}📦 Construyendo contenedores...${NC}"
echo "Esto puede tardar unos minutos la primera vez."
echo ""

# Construir e iniciar contenedores
docker-compose up --build -d

# Verificar estado
echo ""
echo -e "${BLUE}📊 Estado de los contenedores:${NC}"
docker-compose ps

echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                   SERVICIOS INICIADOS                        ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
echo -e "${GREEN}✓${NC} Laravel:      http://localhost:8000"
echo -e "${GREEN}✓${NC} Debug Panel:  http://localhost:8000/debug-ruffle.html"
echo -e "${GREEN}✓${NC} Socket.IO:    http://localhost:3000"
echo -e "${GREEN}✓${NC} MySQL:        localhost:3306"
echo ""
echo -e "${YELLOW}Nota: El emulador C# debe ejecutarse FUERA de Docker${NC}"
echo "      Compílalo y ejecútalo desde Visual Studio o terminal"
echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                   COMANDOS ÚTILES                            ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
echo "Ver logs en tiempo real:"
echo "  docker-compose logs -f"
echo ""
echo "Ver logs de un servicio específico:"
echo "  docker-compose logs -f laravel"
echo "  docker-compose logs -f nodejs"
echo "  docker-compose logs -f mysql"
echo ""
echo "Detener servicios:"
echo "  docker-compose down"
echo ""
echo "Reiniciar servicios:"
echo "  docker-compose restart"
echo ""
echo "Acceder a un contenedor:"
echo "  docker-compose exec laravel bash"
echo ""
echo -e "${GREEN}¡Servidor iniciado correctamente! 🚀${NC}"

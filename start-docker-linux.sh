#!/bin/bash

# Script de inicio para Docker en Linux
# BoomBang Server - Ruffle Edition

echo "╔══════════════════════════════════════════════════════════════╗"
echo "║     BoomBang Server - Docker Startup (Linux)                ║"
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
    echo "Instala Docker con:"
    echo "  Ubuntu/Debian: sudo apt-get install docker.io docker-compose"
    echo "  Fedora:        sudo dnf install docker docker-compose"
    echo "  Arch:          sudo pacman -S docker docker-compose"
    exit 1
fi

# Verificar que docker-compose está instalado
if ! command -v docker-compose &> /dev/null; then
    echo -e "${RED}❌ docker-compose no está instalado${NC}"
    echo ""
    echo "Instala docker-compose con:"
    echo "  sudo apt-get install docker-compose"
    exit 1
fi

# Verificar que Docker está corriendo
if ! docker info &> /dev/null; then
    echo -e "${YELLOW}⚠️  Docker no está corriendo${NC}"
    echo ""
    echo "Inicia Docker con:"
    echo "  sudo systemctl start docker"
    echo ""
    echo "Para iniciar automáticamente:"
    echo "  sudo systemctl enable docker"
    exit 1
fi

echo -e "${GREEN}✓${NC} Docker está instalado y corriendo"
echo ""

# Verificar permisos de Docker
if ! docker ps &> /dev/null; then
    echo -e "${YELLOW}⚠️  No tienes permisos para ejecutar Docker${NC}"
    echo ""
    echo "Agrega tu usuario al grupo docker:"
    echo "  sudo usermod -aG docker $USER"
    echo "  newgrp docker"
    echo ""
    echo "Luego ejecuta este script de nuevo."
    exit 1
fi

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
echo "      Compílalo con Mono o .NET Core y ejecútalo"
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

#!/bin/bash

echo "======================================"
echo "BoomBang Server - Instalación Rápida"
echo "======================================"
echo ""

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Función para verificar comandos
check_command() {
    if ! command -v $1 &> /dev/null; then
        echo -e "${RED}✗ $1 no está instalado${NC}"
        echo "  Por favor instala $1 antes de continuar"
        exit 1
    else
        echo -e "${GREEN}✓ $1 encontrado${NC}"
    fi
}

echo "Verificando requisitos del sistema..."
echo ""

# Verificar requisitos
check_command php
check_command composer
check_command node
check_command npm
check_command mysql

echo ""
echo -e "${GREEN}Todos los requisitos están satisfechos${NC}"
echo ""

# Configurar Laravel
echo "======================================"
echo "Configurando Laravel Application..."
echo "======================================"
cd boombang-2022-app-master

echo "Instalando dependencias PHP..."
composer install --no-interaction

echo "Instalando dependencias Node.js..."
npm install

if [ ! -f .env ]; then
    echo -e "${YELLOW}Archivo .env no encontrado${NC}"
    read -p "¿Deseas crear uno desde .env.example? (s/n): " create_env
    if [ "$create_env" = "s" ] || [ "$create_env" = "S" ]; then
        cp .env.example .env
        echo -e "${GREEN}Archivo .env creado${NC}"
    fi
fi

echo "Generando clave de aplicación..."
php artisan key:generate

echo ""
read -p "¿Deseas configurar la base de datos ahora? (s/n): " config_db

if [ "$config_db" = "s" ] || [ "$config_db" = "S" ]; then
    echo ""
    read -p "Nombre de la base de datos [boombang]: " db_name
    db_name=${db_name:-boombang}

    read -p "Usuario de MySQL [root]: " db_user
    db_user=${db_user:-root}

    read -sp "Contraseña de MySQL: " db_pass
    echo ""

    # Actualizar .env
    sed -i.bak "s/DB_DATABASE=.*/DB_DATABASE=$db_name/" .env
    sed -i.bak "s/DB_USERNAME=.*/DB_USERNAME=$db_user/" .env
    sed -i.bak "s/DB_PASSWORD=.*/DB_PASSWORD=$db_pass/" .env

    echo -e "${GREEN}Configuración de base de datos actualizada en .env${NC}"

    # Crear base de datos
    echo ""
    read -p "¿Deseas crear la base de datos automáticamente? (s/n): " create_db
    if [ "$create_db" = "s" ] || [ "$create_db" = "S" ]; then
        mysql -u $db_user -p$db_pass -e "CREATE DATABASE IF NOT EXISTS $db_name;"
        echo -e "${GREEN}Base de datos creada${NC}"
    fi
fi

echo ""
echo "Compilando assets..."
npm run prod

# Configurar Node.js Socket Server
echo ""
echo "======================================"
echo "Configurando Node.js Socket Server..."
echo "======================================"
cd node

if [ ! -f package.json ]; then
    echo -e "${YELLOW}package.json no encontrado, creando...${NC}"
fi

echo "Instalando dependencias..."
npm install

if [ ! -f .env ]; then
    echo "Creando archivo .env desde .env.example..."
    cp .env.example .env
fi

cd ../..

echo ""
echo -e "${GREEN}======================================"
echo "Instalación completada exitosamente!"
echo "======================================"
echo -e "${NC}"
echo "Próximos pasos:"
echo ""
echo "1. Configurar y compilar el emulador C#:"
echo "   - Abre Visual Studio"
echo "   - Carga boombang-2022-emulator-main/Proyect Base.sln"
echo "   - Compila el proyecto"
echo ""
echo "2. Configurar variables de entorno para C# (Windows):"
echo "   setx DB_PASSWORD \"tu_contraseña\""
echo ""
echo "3. Iniciar los servidores en este orden:"
echo "   a) php artisan serve (en boombang-2022-app-master/)"
echo "   b) Ejecutar el emulador C#"
echo "   c) npm start (en boombang-2022-app-master/node/)"
echo ""
echo "4. Migrar contraseñas existentes (si hay usuarios en la BD):"
echo "   php artisan users:hash-passwords"
echo ""
echo "5. Acceder a la aplicación:"
echo "   http://localhost:8000"
echo ""
echo -e "${YELLOW}Revisa README.md y SECURITY.md para más información${NC}"
echo ""

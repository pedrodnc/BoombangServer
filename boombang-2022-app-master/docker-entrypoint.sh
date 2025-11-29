#!/bin/bash
set -e

echo "🚀 Iniciando BoomBang Laravel Container..."

# Esperar a que MySQL esté listo
echo "⏳ Esperando MySQL..."
while ! nc -z mysql 3306; do
    sleep 1
done
echo "✅ MySQL está listo"

# Cambiar al directorio de trabajo
cd /var/www

# Verificar si vendor existe
if [ ! -d "vendor" ]; then
    echo "📦 Instalando dependencias de Composer..."
    composer install --no-interaction --prefer-dist --optimize-autoloader
else
    echo "✅ Dependencias de Composer ya instaladas"
fi

# Verificar si .env existe
if [ ! -f ".env" ]; then
    echo "⚙️  Creando archivo .env..."
    cp .env.example .env
    php artisan key:generate
else
    echo "✅ Archivo .env existe"
fi

# Esperar un poco más para asegurar que MySQL está completamente listo
sleep 2

# Ejecutar migraciones (si existen)
if [ -d "database/migrations" ] && [ "$(ls -A database/migrations)" ]; then
    echo "🗄️  Ejecutando migraciones..."
    php artisan migrate --force || echo "⚠️  Migraciones fallaron o ya están ejecutadas"
fi

# Limpiar caché
echo "🧹 Limpiando caché..."
php artisan config:clear
php artisan cache:clear
php artisan route:clear

echo "✅ Container listo!"
echo "🌐 Aplicación disponible en: http://localhost:8000"

# Ejecutar comando
exec "$@"

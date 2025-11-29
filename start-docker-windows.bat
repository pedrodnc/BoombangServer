@echo off
REM Script de inicio para Docker en Windows
REM BoomBang Server - Ruffle Edition

echo ================================================================
echo      BoomBang Server - Docker Startup (Windows)
echo ================================================================
echo.

REM Verificar que Docker está instalado
docker --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Docker no esta instalado
    echo.
    echo Por favor instala Docker Desktop desde:
    echo https://www.docker.com/products/docker-desktop
    pause
    exit /b 1
)

REM Verificar que Docker está corriendo
docker info >nul 2>&1
if errorlevel 1 (
    echo [WARNING] Docker no esta corriendo
    echo.
    echo Por favor:
    echo 1. Abre Docker Desktop
    echo 2. Espera a que inicie completamente
    echo 3. Ejecuta este script de nuevo
    pause
    exit /b 1
)

echo [OK] Docker esta instalado y corriendo
echo.

REM Configurar variables de entorno (Windows no tiene uid/gid como Linux/Mac)
set USER_ID=1000
set GROUP_ID=1000

echo [INFO] Construyendo contenedores...
echo Esto puede tardar unos minutos la primera vez.
echo.

REM Construir e iniciar contenedores
docker-compose up --build -d

REM Verificar estado
echo.
echo [INFO] Estado de los contenedores:
docker-compose ps

echo.
echo ================================================================
echo                   SERVICIOS INICIADOS
echo ================================================================
echo.
echo [OK] Laravel:      http://localhost:8000
echo [OK] Debug Panel:  http://localhost:8000/debug-ruffle.html
echo [OK] Socket.IO:    http://localhost:3000
echo [OK] MySQL:        localhost:3306
echo.
echo [NOTA] El emulador C# debe ejecutarse FUERA de Docker
echo        Compilalo y ejecutalo desde Visual Studio
echo.
echo ================================================================
echo                   COMANDOS UTILES
echo ================================================================
echo.
echo Ver logs en tiempo real:
echo   docker-compose logs -f
echo.
echo Ver logs de un servicio especifico:
echo   docker-compose logs -f laravel
echo   docker-compose logs -f nodejs
echo   docker-compose logs -f mysql
echo.
echo Detener servicios:
echo   docker-compose down
echo.
echo Reiniciar servicios:
echo   docker-compose restart
echo.
echo Acceder a un contenedor:
echo   docker-compose exec laravel bash
echo.
echo [OK] Servidor iniciado correctamente!
echo.
pause

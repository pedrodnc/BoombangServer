# 🐳 Docker - Guía Completa Multiplataforma

Documentación completa para ejecutar BoomBang Server con Docker en **macOS**, **Windows** y **Linux**.

---

## 📋 Tabla de Contenidos

1. [Requisitos](#requisitos)
2. [Instalación de Docker](#instalación-de-docker)
3. [Inicio Rápido](#inicio-rápido)
4. [Servicios Incluidos](#servicios-incluidos)
5. [Comandos Útiles](#comandos-útiles)
6. [Troubleshooting](#troubleshooting)
7. [Configuración Avanzada](#configuración-avanzada)

---

## 🎯 Requisitos

### Todos los Sistemas
- Docker Desktop (Mac/Windows) o Docker Engine (Linux)
- 4GB RAM mínimo
- 10GB espacio en disco
- Conexión a internet (primera vez)

### Específicos por Sistema

#### macOS
- macOS 10.15 o superior
- Docker Desktop para Mac

#### Windows
- Windows 10/11 Pro, Enterprise o Education
- WSL 2 habilitado
- Docker Desktop para Windows

#### Linux
- Kernel 3.10+
- Docker Engine 20.10+
- docker-compose 1.29+

---

## 🚀 Instalación de Docker

### macOS

```bash
# Opción 1: Homebrew
brew install --cask docker

# Opción 2: Descarga directa
# https://www.docker.com/products/docker-desktop

# Iniciar Docker Desktop
open -a Docker

# Esperar a que Docker inicie (icono en la barra superior)
```

### Windows

```powershell
# 1. Habilitar WSL 2
wsl --install

# 2. Descargar Docker Desktop
# https://www.docker.com/products/docker-desktop

# 3. Instalar y reiniciar

# 4. Verificar instalación
docker --version
docker-compose --version
```

### Linux (Ubuntu/Debian)

```bash
# Actualizar paquetes
sudo apt-get update

# Instalar Docker
sudo apt-get install docker.io docker-compose

# Iniciar Docker
sudo systemctl start docker
sudo systemctl enable docker

# Agregar usuario al grupo docker
sudo usermod -aG docker $USER
newgrp docker

# Verificar
docker --version
docker-compose --version
```

### Linux (Fedora)

```bash
sudo dnf install docker docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker
```

### Linux (Arch)

```bash
sudo pacman -S docker docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker
```

---

## ⚡ Inicio Rápido

### macOS

```bash
# 1. Ir al directorio del proyecto
cd /ruta/a/BoombangServer

# 2. Ejecutar script de inicio
./start-docker-mac.sh

# 3. ¡Listo! Abre tu navegador
open http://localhost:8000/debug-ruffle.html
```

### Windows

```cmd
REM 1. Ir al directorio del proyecto
cd C:\ruta\a\BoombangServer

REM 2. Ejecutar script de inicio
start-docker-windows.bat

REM 3. ¡Listo! Abre tu navegador
start http://localhost:8000/debug-ruffle.html
```

### Linux

```bash
# 1. Ir al directorio del proyecto
cd /ruta/a/BoombangServer

# 2. Ejecutar script de inicio
./start-docker-linux.sh

# 3. ¡Listo! Abre tu navegador
xdg-open http://localhost:8000/debug-ruffle.html
```

---

## 🏗️ Servicios Incluidos

Docker Compose levanta automáticamente 3 servicios:

### 1. Laravel (PHP 8.1)
- **Puerto:** 8000
- **URL:** http://localhost:8000
- **Incluye:**
  - PHP 8.1-FPM
  - Composer
  - Extensiones: PDO, MySQL, GD, Zip, etc.
  - Auto-instalación de dependencias

### 2. Node.js Socket Server (Node 20)
- **Puerto:** 3000
- **URL:** http://localhost:3000
- **Incluye:**
  - Node.js 20 LTS
  - npm
  - Socket.IO
  - Auto-instalación de node_modules

### 3. MySQL (8.0)
- **Puerto:** 3306
- **Host:** localhost
- **Base de datos:** boombang
- **Usuario:** boombang_user
- **Contraseña:** boombang_pass
- **Root password:** root

---

## 📦 Estructura de Archivos Docker

```
BoombangServer/
├── docker-compose.yml           # Configuración principal
├── Dockerfile.php               # Imagen personalizada PHP
├── docker-entrypoint.sh         # Script de inicio Laravel
├── start-docker-mac.sh          # Inicio rápido macOS
├── start-docker-windows.bat     # Inicio rápido Windows
├── start-docker-linux.sh        # Inicio rápido Linux
└── docker/
    └── mysql/
        └── init/
            └── 01-init.sql      # Inicialización DB
```

---

## 🎮 Comandos Útiles

### Gestión de Contenedores

```bash
# Iniciar servicios (primera vez)
docker-compose up --build -d

# Iniciar servicios (después)
docker-compose up -d

# Detener servicios
docker-compose down

# Reiniciar servicios
docker-compose restart

# Reiniciar un servicio específico
docker-compose restart laravel
docker-compose restart nodejs
docker-compose restart mysql
```

### Ver Logs

```bash
# Ver todos los logs en tiempo real
docker-compose logs -f

# Ver logs de un servicio específico
docker-compose logs -f laravel
docker-compose logs -f nodejs
docker-compose logs -f mysql

# Ver últimas 100 líneas
docker-compose logs --tail=100

# Ver logs sin follow
docker-compose logs
```

### Estado de Contenedores

```bash
# Ver estado
docker-compose ps

# Ver uso de recursos
docker stats

# Ver logs de healthchecks
docker inspect boombang_laravel | grep -A 10 Health
```

### Acceder a Contenedores

```bash
# Acceder a Laravel
docker-compose exec laravel bash

# Acceder a Node.js
docker-compose exec nodejs sh

# Acceder a MySQL
docker-compose exec mysql mysql -u root -proot boombang

# Ejecutar comando sin entrar
docker-compose exec laravel php artisan inspire
docker-compose exec nodejs npm --version
```

### Limpieza

```bash
# Detener y eliminar contenedores
docker-compose down

# Detener, eliminar contenedores y volúmenes
docker-compose down -v

# Limpiar TODO (contenedores, imágenes, volúmenes)
docker-compose down -v --rmi all

# Limpiar sistema Docker completo
docker system prune -a --volumes
```

---

## 🔧 Configuración

### Variables de Entorno

El archivo `.env` de Laravel se configura automáticamente con:

```env
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=boombang
DB_USERNAME=boombang_user
DB_PASSWORD=boombang_pass
```

### Puertos

Los puertos por defecto son:

| Servicio | Puerto | Cambiar en |
|----------|--------|------------|
| Laravel | 8000 | `docker-compose.yml` línea 44 |
| Node.js | 3000 | `docker-compose.yml` línea 70 |
| MySQL | 3306 | `docker-compose.yml` línea 16 |

**Ejemplo para cambiar puerto de Laravel a 8080:**

```yaml
laravel:
  ports:
    - "8080:8000"  # 8080 externo → 8000 interno
```

### Healthchecks

Todos los servicios tienen healthchecks automáticos:

```bash
# Ver estado de salud
docker-compose ps

# Deberían mostrar "healthy"
```

---

## ⚠️ Notas Importantes

### Emulador C#

**El emulador C# NO está incluido en Docker** porque:
- Usa sockets TCP en el host (puerto 3300)
- Mejor performance nativo
- Más fácil de debuggear

**Debes ejecutarlo por separado:**

#### Windows
```bash
# Compilar en Visual Studio
# Ejecutar el .exe
```

#### macOS/Linux
```bash
# Con Mono
cd boombang-2022-emulator-main/Proyect\ Base/bin/Debug
mono ProyectBase.exe
```

### Permisos de Archivos

**macOS/Linux:**
El Dockerfile crea un usuario con tu UID/GID para evitar problemas de permisos.

**Windows:**
Los permisos se manejan automáticamente a través de WSL 2.

### Primera Ejecución

La primera vez tarda más porque:
1. Descarga imágenes Docker (~500MB)
2. Construye imagen PHP personalizada
3. Instala dependencias Composer (~100MB)
4. Instala dependencias npm (~50MB)

**Tiempo estimado:** 5-10 minutos

**Ejecuciones siguientes:** ~10 segundos

---

## 🐛 Troubleshooting

### Docker no inicia

**macOS:**
```bash
# Reiniciar Docker Desktop
killall Docker && open -a Docker

# Verificar recursos en Preferences
# Mínimo: 4GB RAM, 2 CPU
```

**Windows:**
```powershell
# Reiniciar servicio Docker
Restart-Service docker

# Verificar WSL 2
wsl --list --verbose
```

**Linux:**
```bash
# Reiniciar servicio
sudo systemctl restart docker

# Ver logs
sudo journalctl -u docker
```

### Puerto ya en uso

```bash
# Ver qué proceso usa el puerto
# macOS/Linux:
lsof -i :8000

# Windows:
netstat -ano | findstr :8000

# Detener proceso o cambiar puerto en docker-compose.yml
```

### Contenedor no inicia

```bash
# Ver logs de error
docker-compose logs laravel

# Reconstruir desde cero
docker-compose down -v
docker-compose build --no-cache
docker-compose up -d
```

### Error de permisos (Linux)

```bash
# Agregar usuario a grupo docker
sudo usermod -aG docker $USER

# Aplicar cambios
newgrp docker

# O cerrar sesión y volver a entrar
```

### MySQL no conecta

```bash
# Verificar que está healthy
docker-compose ps

# Entrar a MySQL manualmente
docker-compose exec mysql mysql -u root -proot

# Verificar base de datos
SHOW DATABASES;
USE boombang;
SHOW TABLES;
```

### Composer/npm fallan

```bash
# Reinstalar dependencias
docker-compose exec laravel composer install
docker-compose exec nodejs npm install

# Si falla, limpiar y reconstruir
docker-compose down -v
docker-compose up --build -d
```

---

## 🚀 Configuración Avanzada

### Usar Composer local

```bash
# En lugar de usar el del contenedor
docker-compose exec laravel composer install
docker-compose exec laravel composer update
docker-compose exec laravel composer require package/name
```

### Ejecutar Migraciones

```bash
docker-compose exec laravel php artisan migrate
docker-compose exec laravel php artisan migrate:fresh
docker-compose exec laravel php artisan db:seed
```

### Debugging

```bash
# Habilitar debug en .env
docker-compose exec laravel sed -i 's/APP_DEBUG=false/APP_DEBUG=true/' .env

# Ver logs de Laravel
docker-compose exec laravel tail -f storage/logs/laravel.log

# Habilitar query logging
docker-compose exec laravel php artisan tinker
>>> DB::enableQueryLog();
```

### Performance

```yaml
# En docker-compose.yml, agregar caché de Composer
laravel:
  volumes:
    - composer_cache:/root/.composer
volumes:
  composer_cache:
```

### Desarrollo con Hot Reload

```bash
# Para npm watch (no incluido por defecto)
docker-compose exec nodejs npm run watch
```

---

## 📊 Comparación: Docker vs Instalación Local

| Aspecto | Docker | Local |
|---------|--------|-------|
| **Instalación** | 5-10 min | 10-30 min |
| **Configuración** | Automática | Manual |
| **Aislamiento** | ✅ Total | ❌ Ninguno |
| **Portabilidad** | ✅ Total | ❌ Limitada |
| **Performance** | ⚡ 90-95% | ⚡ 100% |
| **Limpieza** | ✅ Fácil | ❌ Compleja |
| **Multiproyecto** | ✅ Aislado | ❌ Conflictos |

---

## ✅ Checklist de Verificación

Después de iniciar, verifica:

- [ ] `docker-compose ps` muestra 3 servicios "healthy"
- [ ] http://localhost:8000 carga la página de login
- [ ] http://localhost:8000/debug-ruffle.html muestra panel OK
- [ ] Logs no muestran errores: `docker-compose logs`
- [ ] MySQL accesible: `docker-compose exec mysql mysql -u root -proot`
- [ ] Emulador C# corriendo externamente (puerto 3300)
- [ ] Node.js conecta a C#: `docker-compose logs nodejs | grep "Connected"`

---

## 🎓 Recursos Adicionales

- **Docker Docs:** https://docs.docker.com/
- **Docker Compose:** https://docs.docker.com/compose/
- **Laravel Docker:** https://laravel.com/docs/sail
- **Troubleshooting:** Ver `TROUBLESHOOTING.md`

---

## 💡 Tips Pro

### Alias útiles (macOS/Linux)

```bash
# Agregar a ~/.bashrc o ~/.zshrc
alias dc='docker-compose'
alias dps='docker-compose ps'
alias dlogs='docker-compose logs -f'
alias dexec='docker-compose exec'

# Uso:
dps
dlogs laravel
dexec laravel php artisan inspire
```

### Backups de MySQL

```bash
# Backup
docker-compose exec mysql mysqldump -u root -proot boombang > backup.sql

# Restore
docker-compose exec -T mysql mysql -u root -proot boombang < backup.sql
```

### Desarrollo en equipo

```bash
# Todos usan Docker
# Mismo .env.example
# Mismo docker-compose.yml
# Sin "funciona en mi máquina" 🎉
```

---

**Última actualización:** 2025-11-22
**Versión:** 1.0 - Multiplataforma

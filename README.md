# BoomBang Server

Servidor de juego BoomBang con arquitectura multi-capa (Laravel + Node.js + C# Emulator)

## ⚠️ Importante: Flash Player y Ruffle

**El cliente del juego está desarrollado en Flash (archivos .swf)**. Como Adobe Flash Player fue descontinuado en 2020 y los navegadores modernos ya no lo soportan, este proyecto utiliza **Ruffle**, un emulador Flash open-source que funciona en navegadores modernos.

### Ramas Disponibles

- **`main`** - Versión estable con correcciones de seguridad (sin Ruffle)
- **`feature/ruffle-flash-emulator`** - Implementación de Ruffle para soporte en navegadores modernos ⭐ **RECOMENDADA**

**📖 Documentación de Ruffle:** Ver [RUFFLE.md](RUFFLE.md)

## Arquitectura del Sistema

El proyecto consta de cuatro componentes principales:

1. **Flash Client** (`boombang-2022-app-master/public/static/`) - Cliente del juego en Flash (ejecutado por Ruffle)
2. **Laravel Web Application** (`boombang-2022-app-master/`) - Frontend y API web
3. **Node.js Socket Server** (`boombang-2022-app-master/node/`) - Servidor WebSocket para comunicación en tiempo real
4. **C# Emulator** (`boombang-2022-emulator-main/`) - Servidor del juego y lógica de negocio

## Requisitos del Sistema

### Para Laravel + Node.js
- PHP >= 7.4
- Composer
- Node.js >= 14.x
- MySQL >= 5.7
- Apache/Nginx

### Para C# Emulator
- .NET Framework o .NET Core
- Visual Studio o Mono

## Instalación

### 1. Configurar Base de Datos

```bash
# Crear base de datos MySQL
mysql -u root -p
CREATE DATABASE boombang;
EXIT;
```

### 2. Configurar Laravel Application

```bash
cd boombang-2022-app-master

# Instalar dependencias PHP
composer install

# Instalar dependencias Node.js
npm install

# Copiar archivo de entorno
cp .env.example .env

# IMPORTANTE: Editar .env con tus credenciales de base de datos
# Asegúrate de configurar:
# - DB_PASSWORD (usar una contraseña segura)
# - APP_KEY (generar con: php artisan key:generate)
# - APP_DEBUG=false para producción

# Generar clave de aplicación
php artisan key:generate

# Ejecutar migraciones (si existen)
php artisan migrate

# Compilar assets
npm run prod
```

### 3. Configurar Node.js Socket Server

```bash
cd boombang-2022-app-master/node

# Instalar dependencias
npm install

# El archivo .env ya está creado, pero verifica la configuración:
# - PORT=3000
# - ALLOWED_ORIGINS=http://localhost:8000,http://127.0.0.1:8000
# - CSHARP_HOST=127.0.0.1
# - CSHARP_PORT=3300
```

### 4. Configurar C# Emulator

```bash
cd boombang-2022-emulator-main

# Configurar variables de entorno del sistema (Windows):
setx DB_PASSWORD "tu_contraseña_mysql"
setx DB_DATABASE "boombang"
setx DB_USERNAME "root"

# Para Linux/Mac:
export DB_PASSWORD="tu_contraseña_mysql"
export DB_DATABASE="boombang"
export DB_USERNAME="root"

# Compilar el proyecto en Visual Studio o usando:
# msbuild "Proyect Base.sln"
```

## Iniciar el Servidor

**IMPORTANTE:** Los servidores deben iniciarse en este orden:

### 1. Iniciar Laravel (puerto 8000)

```bash
cd boombang-2022-app-master
php artisan serve
```

### 2. Iniciar C# Emulator (puerto 3300)

```bash
# Ejecutar el archivo .exe compilado desde Visual Studio
# O desde la línea de comandos
cd "boombang-2022-emulator-main/Proyect Base/bin/Debug"
./ProyectBase.exe
```

### 3. Iniciar Node.js Socket Server (puerto 3000)

```bash
cd boombang-2022-app-master/node
npm start

# Para desarrollo con auto-reload:
npm run dev
```

## Verificación

Una vez todos los servidores estén ejecutándose:

1. Abre tu navegador en `http://localhost:8000`
2. Deberías ver la página de login
3. Los logs del servidor Node.js deberían mostrar: `Connected to C# server at 127.0.0.1:3300`

## Seguridad

### Mejoras Implementadas

- ✅ **Hashing de contraseñas** usando bcrypt en Laravel
- ✅ **Protección CSRF** en formularios de login
- ✅ **CORS configurado** solo para orígenes permitidos
- ✅ **Validación de entrada** en Socket.IO
- ✅ **Sanitización XSS** en mensajes de chat
- ✅ **Variables de entorno** para credenciales sensibles

### Configuración de Seguridad Recomendada

1. **Base de Datos**
   ```sql
   -- Crear usuario con permisos limitados
   CREATE USER 'boombang_user'@'localhost' IDENTIFIED BY 'contraseña_segura_aquí';
   GRANT ALL PRIVILEGES ON boombang.* TO 'boombang_user'@'localhost';
   FLUSH PRIVILEGES;
   ```

2. **Cambiar APP_DEBUG**
   ```bash
   # En producción, editar .env:
   APP_DEBUG=false
   APP_ENV=production
   ```

3. **Actualizar Contraseñas**
   ```bash
   # Las contraseñas existentes en la BD deben ser re-hasheadas
   # Crear un nuevo usuario con:
   php artisan tinker
   >>> $user = new App\Models\User();
   >>> $user->name = 'admin';
   >>> $user->password = Hash::make('tu_contraseña_segura');
   >>> $user->save();
   ```

## Solución de Problemas

### Error: "Connection to C# server failed"
- Verifica que el emulador C# esté ejecutándose primero
- Revisa que el puerto 3300 esté libre
- Revisa la configuración en `node/.env`

### Error: "CORS policy"
- Verifica que `ALLOWED_ORIGINS` en `node/.env` incluya tu dominio
- Reinicia el servidor Node.js después de cambios

### Error: "Database connection failed"
- Verifica credenciales MySQL en `.env`
- Asegúrate de que MySQL esté ejecutándose
- Verifica que la base de datos `boombang` exista

### Error: "CSRF token mismatch"
- Limpia la caché de Laravel: `php artisan cache:clear`
- Limpia la configuración: `php artisan config:clear`
- Verifica que las cookies estén habilitadas en el navegador

## Estructura de Puertos

- **8000** - Laravel Web Application
- **3000** - Node.js Socket.IO Server
- **3300** - C# Game Emulator (TCP Socket)
- **2001** - C# Flash Socket (si está habilitado)
- **3306** - MySQL Database

## Desarrollo

### Logs
- Laravel: `storage/logs/laravel.log`
- Node.js: Consola donde se ejecuta
- C# Emulator: Ventana de la aplicación

### Compilar Assets Frontend
```bash
cd boombang-2022-app-master
npm run dev    # Para desarrollo
npm run watch  # Para auto-compilación
npm run prod   # Para producción
```

## Notas de Seguridad Adicionales

### Archivos Sensibles
Los siguientes archivos NO deben estar en Git:
- `.env` (credenciales de Laravel)
- `node/.env` (credenciales de Node.js)
- Cualquier archivo con contraseñas o API keys

### Autenticación Socket.IO
**PENDIENTE:** Se recomienda implementar autenticación basada en tokens JWT para las conexiones Socket.IO en futuras versiones.

## Contribuir

1. Crea una rama para tu feature
2. Haz commit de tus cambios
3. Envía un pull request

## Licencia

[Especificar licencia del proyecto]

## Soporte

Para reportar problemas o hacer preguntas, por favor crea un issue en el repositorio.

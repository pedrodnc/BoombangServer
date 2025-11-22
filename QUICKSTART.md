# Inicio Rápido - BoomBang Server

Guía rápida para levantar el servidor en menos de 10 minutos.

## Prerrequisitos

Asegúrate de tener instalado:
- ✅ PHP 7.4+
- ✅ Composer
- ✅ Node.js 14+
- ✅ MySQL 5.7+
- ✅ Visual Studio o .NET (para C#)

## Instalación Automática

```bash
# Ejecutar script de instalación
./install.sh
```

## Instalación Manual (Paso a Paso)

### 1. Configurar Base de Datos (2 minutos)

```bash
# Conectar a MySQL
mysql -u root -p

# Crear base de datos
CREATE DATABASE boombang;

# Crear usuario (recomendado)
CREATE USER 'boombang_user'@'localhost' IDENTIFIED BY 'TuContraseñaSegura123!';
GRANT ALL PRIVILEGES ON boombang.* TO 'boombang_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

### 2. Configurar Laravel (3 minutos)

```bash
cd boombang-2022-app-master

# Instalar dependencias
composer install
npm install

# Configurar entorno
cp .env.example .env
php artisan key:generate

# Editar .env con tus credenciales
nano .env  # o usa tu editor favorito
```

En el archivo `.env`, configura:
```env
DB_DATABASE=boombang
DB_USERNAME=boombang_user
DB_PASSWORD=TuContraseñaSegura123!
APP_DEBUG=false
```

```bash
# Compilar assets
npm run prod
```

### 3. Configurar Node.js Socket Server (1 minuto)

```bash
cd boombang-2022-app-master/node

# Instalar dependencias
npm install

# El archivo .env ya está creado, pero puedes editarlo si necesitas
# Valores por defecto están bien para desarrollo local
```

### 4. Configurar C# Emulator (2 minutos)

**Windows:**
```cmd
# Configurar variables de entorno
setx DB_PASSWORD "TuContraseñaSegura123!"
setx DB_USERNAME "boombang_user"
setx DB_DATABASE "boombang"
```

**Linux/Mac:**
```bash
export DB_PASSWORD="TuContraseñaSegura123!"
export DB_USERNAME="boombang_user"
export DB_DATABASE="boombang"
```

Luego:
1. Abre `boombang-2022-emulator-main/Proyect Base.sln` en Visual Studio
2. Compila el proyecto (F6 o Build > Build Solution)

### 5. Migrar Contraseñas (si tienes usuarios existentes)

```bash
cd boombang-2022-app-master
php artisan users:hash-passwords
```

## Iniciar los Servidores

**¡IMPORTANTE!** Iniciar en este orden específico:

### Terminal 1: Laravel (puerto 8000)
```bash
cd boombang-2022-app-master
php artisan serve
```

Deberías ver:
```
Laravel development server started: http://127.0.0.1:8000
```

### Terminal 2: C# Emulator (puerto 3300)
```bash
cd boombang-2022-emulator-main/Proyect\ Base/bin/Debug
./ProyectBase.exe  # En Windows
mono ProyectBase.exe  # En Linux/Mac
```

O ejecuta directamente desde Visual Studio (F5).

### Terminal 3: Node.js Socket Server (puerto 3000)
```bash
cd boombang-2022-app-master/node
npm start
```

Deberías ver:
```
Socket server is running on port 3000
Connected to C# server at 127.0.0.1:3300
```

## Verificación

1. Abre tu navegador en: `http://localhost:8000`
2. Deberías ver la página de login
3. Verifica la consola del servidor Node.js - debe mostrar "Connected to C# server"

## Crear tu Primer Usuario

### Opción 1: Usar Tinker (Recomendado)
```bash
cd boombang-2022-app-master
php artisan tinker
```

Luego en tinker:
```php
$user = new App\Models\User();
$user->name = 'admin';
$user->email = 'admin@boombang.local';
$user->password = Hash::make('admin123');
$user->save();
```

Presiona Ctrl+C para salir de tinker.

### Opción 2: Directo en MySQL
```sql
-- NOTA: La contraseña será hasheada, este ejemplo usa un hash de 'password'
INSERT INTO users (name, email, password, created_at, updated_at)
VALUES (
    'admin',
    'admin@boombang.local',
    '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
    NOW(),
    NOW()
);
```

## Probar el Login

1. Ve a `http://localhost:8000`
2. Usuario: `admin`
3. Contraseña: `admin123` (o 'password' si usaste el hash del ejemplo SQL)
4. Deberías ser redirigido a `/game`

## Solución Rápida de Problemas

### ❌ "Connection to C# server failed"
```bash
# Verifica que el emulador C# esté corriendo
# Reinicia Node.js después de iniciar el emulador
```

### ❌ "SQLSTATE[HY000] [1045] Access denied"
```bash
# Verifica tus credenciales en .env
# Asegúrate de que el usuario MySQL tenga permisos
```

### ❌ "CSRF token mismatch"
```bash
cd boombang-2022-app-master
php artisan cache:clear
php artisan config:clear
```

### ❌ "Class 'App\Models\User' not found"
```bash
composer dump-autoload
```

### ❌ Página en blanco / Error 500
```bash
# Habilitar temporalmente debug
# Edita .env:
APP_DEBUG=true

# Revisa el error y luego vuelve a poner:
APP_DEBUG=false
```

## Puertos Usados

| Servicio | Puerto | URL |
|----------|--------|-----|
| Laravel Web | 8000 | http://localhost:8000 |
| Node.js Socket.IO | 3000 | ws://localhost:3000 |
| C# Emulator | 3300 | TCP interno |
| MySQL | 3306 | localhost:3306 |

## Detener los Servidores

- **Laravel**: Presiona `Ctrl+C` en la terminal
- **Node.js**: Presiona `Ctrl+C` en la terminal
- **C# Emulator**: Cierra la ventana o presiona `Ctrl+C`

## Siguiente Paso

Lee `README.md` para información completa sobre configuración avanzada y `SECURITY.md` para mejores prácticas de seguridad.

## Comando Útiles

```bash
# Ver logs de Laravel
tail -f boombang-2022-app-master/storage/logs/laravel.log

# Limpiar caché de Laravel
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

# Recompilar assets
npm run dev    # desarrollo
npm run watch  # auto-recompilación
npm run prod   # producción

# Ver usuarios en la base de datos
php artisan tinker
>>> User::all();

# Migrar contraseñas
php artisan users:hash-passwords
```

## Tips de Desarrollo

1. **Modo Watch para Assets:**
   ```bash
   npm run watch
   ```
   Los cambios en JS/CSS se recompilarán automáticamente.

2. **Logs en Tiempo Real:**
   ```bash
   tail -f storage/logs/laravel.log
   ```

3. **Debug de Socket.IO:**
   Abre la consola del navegador (F12) para ver eventos de Socket.IO.

4. **MySQL Query Log:**
   ```bash
   # En .env
   DB_LOG_QUERIES=true
   ```

## Desarrollo en Equipo

Si trabajas en equipo:

1. **No compartas el archivo `.env`** - cada desarrollador debe tener el suyo
2. **Usa `.env.example`** como plantilla para compartir configuración
3. **Coordina los puertos** si varios desarrolladores usan la misma máquina
4. **Documenta cambios** en la base de datos con migraciones

## ¡Listo!

Tu servidor BoomBang ahora está ejecutándose de forma segura. 🎮

Para más información:
- 📖 Documentación completa: `README.md`
- 🔒 Guía de seguridad: `SECURITY.md`
- 📝 Historial de cambios: `CHANGELOG.md`

# Guía de Seguridad - BoomBang Server

## Resumen de Vulnerabilidades Corregidas

Este documento detalla todas las vulnerabilidades de seguridad identificadas y corregidas en el proyecto.

---

## ✅ Vulnerabilidades CRÍTICAS Corregidas

### 1. Contraseñas en Texto Plano ➜ CORREGIDO

**Problema Original:**
```php
// LoginController.php (versión antigua)
return User::where('name', $name)->where('password', $password)->first();
```

**Solución Implementada:**
```php
// LoginController.php (versión nueva)
$user = User::where('name', $request->name)->first();
if ($user && Hash::check($request->password, $user->password)){
    Auth::login($user);
}
```

**Migración de Contraseñas Existentes:**
```bash
php artisan users:hash-passwords
```

---

### 2. CORS Abierto a Todos los Orígenes ➜ CORREGIDO

**Problema Original:**
```javascript
// server.js (versión antigua)
cors: { origin: "*" }
```

**Solución Implementada:**
```javascript
// server.js (versión nueva)
cors: {
    origin: process.env.ALLOWED_ORIGINS.split(','),
    methods: ["GET", "POST"],
    credentials: true
}
```

**Configuración:**
```env
# node/.env
ALLOWED_ORIGINS=http://localhost:8000,http://127.0.0.1:8000
```

---

### 3. Archivo .env en Repositorio ➜ CORREGIDO

**Acciones Tomadas:**
1. Agregado `.env` al `.gitignore`
2. Creados archivos `.env.example` como plantilla
3. `APP_DEBUG=false` configurado por defecto

**Para Remover del Historial Git:**
```bash
git rm --cached .env
git commit -m "Remove .env from repository"
```

---

### 4. Modo Debug Activado ➜ CORREGIDO

**Cambio en .env:**
```env
# Antes
APP_DEBUG=true

# Después
APP_DEBUG=false
```

---

## ✅ Vulnerabilidades ALTAS Corregidas

### 5. Falta de Validación en Socket.IO ➜ CORREGIDO

**Solución Implementada:**
```javascript
// SocketIOController.js
validateData(data) {
    if (!data || typeof data !== 'object') return false;
    if (!data.channel || typeof data.channel !== 'string') return false;
    if (!data.token_uid || typeof data.token_uid !== 'string') return false;
    if (data.paramater && typeof data.paramater === 'string') {
        if (data.paramater.length > 500) return false;
        data.paramater = this.sanitizeString(data.paramater);
    }
    return true;
}
```

---

### 6. Sin Autenticación en Socket.IO ➜ PARCIALMENTE CORREGIDO

**Estado:** Validación básica implementada

**Recomendación Pendiente:** Implementar autenticación JWT
```javascript
// Ejemplo de implementación futura
io.use((socket, next) => {
    const token = socket.handshake.auth.token;
    if (isValidToken(token)) {
        next();
    } else {
        next(new Error('Authentication error'));
    }
});
```

---

### 7. XSS en Sistema de Chat ➜ CORREGIDO

**Sanitización en Cliente:**
```javascript
// Chat.js
sanitizeMessage(message){
    const div = document.createElement('div');
    div.textContent = message;
    return div.innerHTML.substring(0, 500);
}
```

**Sanitización en Servidor:**
```javascript
// SocketIOController.js
sanitizeString(str) {
    return str.replace(/[<>"'&]/g, function(char) {
        const entities = {
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;',
            '&': '&amp;'
        };
        return entities[char];
    }).substring(0, 500);
}
```

---

### 8. Falta Protección CSRF ➜ CORREGIDO

**Solución Implementada:**
```php
// routes/web.php
Route::middleware(['web'])->prefix('webapi')->group(function (){
    Route::post('/login', [LoginController::class, 'login']);
});
```

**Formulario con Token:**
```html
<form id="login-form">
    @csrf
    <!-- campos del formulario -->
</form>
```

---

## ✅ Vulnerabilidades MEDIAS Corregidas

### 9. Credenciales de BD Sin Contraseña ➜ DOCUMENTADO

**Recomendación Implementada en README:**
```sql
CREATE USER 'boombang_user'@'localhost' IDENTIFIED BY 'contraseña_segura';
GRANT ALL PRIVILEGES ON boombang.* TO 'boombang_user'@'localhost';
FLUSH PRIVILEGES;
```

---

### 10. Configuración Hardcodeada en C# ➜ CORREGIDO

**Solución Implementada:**
```csharp
// Config.cs
public static string DB_PASSWORD = Environment.GetEnvironmentVariable("DB_PASSWORD") ?? "";
```

**Uso:**
```bash
# Windows
setx DB_PASSWORD "mi_contraseña_segura"

# Linux/Mac
export DB_PASSWORD="mi_contraseña_segura"
```

---

## Checklist de Seguridad para Producción

Antes de desplegar en producción, verifica:

- [ ] `APP_DEBUG=false` en `.env`
- [ ] `APP_ENV=production` en `.env`
- [ ] Base de datos con contraseña fuerte
- [ ] Usuario de base de datos con permisos limitados
- [ ] `.env` NO está en el repositorio Git
- [ ] Contraseñas migradas a bcrypt: `php artisan users:hash-passwords`
- [ ] CORS configurado solo para dominios necesarios
- [ ] SSL/HTTPS habilitado en producción
- [ ] Firewall configurado para limitar acceso a puertos
- [ ] Logs de seguridad activados
- [ ] Backups automáticos configurados

---

## Configuración de Variables de Entorno

### Laravel (.env)
```env
APP_NAME="BoomBang Server"
APP_ENV=production
APP_KEY=base64:GENERA_UNA_NUEVA_KEY
APP_DEBUG=false
APP_URL=https://tudominio.com

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=boombang
DB_USERNAME=boombang_user
DB_PASSWORD=CONTRASEÑA_SEGURA_AQUÍ

ALLOWED_ORIGINS=https://tudominio.com
```

### Node.js (node/.env)
```env
PORT=3000
ALLOWED_ORIGINS=https://tudominio.com
CSHARP_HOST=127.0.0.1
CSHARP_PORT=3300
```

### C# (Variables de Sistema)
```bash
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=boombang
DB_USERNAME=boombang_user
DB_PASSWORD=CONTRASEÑA_SEGURA_AQUÍ
```

---

## Mejoras de Seguridad Adicionales Recomendadas

### 1. Rate Limiting
```php
// routes/web.php
Route::middleware('throttle:10,1')->group(function () {
    Route::post('/login', [LoginController::class, 'login']);
});
```

### 2. Autenticación de Dos Factores (2FA)
```bash
composer require pragmarx/google2fa-laravel
```

### 3. Logging de Intentos de Login
```php
// LoginController.php
Log::warning('Failed login attempt', [
    'username' => $request->name,
    'ip' => $request->ip()
]);
```

### 4. Encriptación de Base de Datos
```php
// En el modelo User
protected $casts = [
    'email' => 'encrypted',
];
```

### 5. Headers de Seguridad
```php
// app/Http/Middleware/SecurityHeaders.php
public function handle($request, Closure $next)
{
    $response = $next($request);
    $response->headers->set('X-Frame-Options', 'SAMEORIGIN');
    $response->headers->set('X-Content-Type-Options', 'nosniff');
    $response->headers->set('X-XSS-Protection', '1; mode=block');
    return $response;
}
```

---

## Monitoreo de Seguridad

### Logs a Revisar Regularmente
- `storage/logs/laravel.log` - Errores y warnings de Laravel
- Logs del servidor Node.js - Conexiones sospechosas
- Logs del emulador C# - Actividad anormal del juego

### Alertas Recomendadas
- Múltiples intentos de login fallidos
- Conexiones desde IPs desconocidas
- Picos inusuales de tráfico
- Errores de validación repetidos

---

## Contacto de Seguridad

Para reportar vulnerabilidades de seguridad:
- Email: [security@ejemplo.com]
- No publiques vulnerabilidades en issues públicos

---

## Historial de Cambios

### Versión 1.1 (Actual)
- ✅ Implementado hashing de contraseñas
- ✅ Configurado CORS restrictivo
- ✅ Agregada validación de entrada
- ✅ Implementada sanitización XSS
- ✅ Agregada protección CSRF
- ✅ Configuradas variables de entorno

### Versión 1.0 (Original)
- ❌ Múltiples vulnerabilidades de seguridad

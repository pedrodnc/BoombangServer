# 🔐 Sistema de Permisos - BoomBang

Sistema híbrido de permisos para diferenciar entre usuarios **web (limitado)** y **launcher (completo)**.

---

## 📋 Tipos de Cuenta

| Tipo | Descripción | Permisos |
|------|-------------|----------|
| **`web`** | Usuario navegador (DEMO) | ⚠️ Limitado |
| **`launcher`** | Usuario con launcher desktop | ✅ Completo |
| **`admin`** | Administrador | ✅ Total |

---

## ⚙️ Campos en Base de Datos

### Tabla `users` - Nuevos Campos:

```sql
account_type         ENUM('web', 'launcher', 'admin')  DEFAULT 'web'
session_expires_at   TIMESTAMP NULL
is_premium           BOOLEAN DEFAULT FALSE
```

---

## 🎯 Restricciones por Tipo

### ❌ Usuarios WEB (Limitados):
- ⏱️ Sesión expira en 2 horas
- 🚫 Sin trading de items
- 🚫 Sin chat privado
- 🚫 Sin items premium
- 🚫 Sin funciones administrativas
- ⚠️ Funcionalidad reducida (demo)

### ✅ Usuarios LAUNCHER (Completos):
- ✓ Sin límite de sesión
- ✓ Trading completo
- ✓ Chat privado
- ✓ Items premium (si es premium)
- ✓ Todas las funcionalidades del juego

### ⭐ Usuarios ADMIN:
- ✓ Acceso total
- ✓ Panel administrativo
- ✓ Gestión de usuarios
- ✓ Configuración del servidor

---

## 🔧 Uso en Código

### 1. **Modelo User - Métodos Helper**

```php
// Verificar tipo de cuenta
$user->isWebUser()          // true si es usuario web
$user->isLauncherUser()     // true si usa launcher
$user->isAdmin()            // true si es admin

// Verificar permisos
$user->hasPremiumAccess()   // true si tiene premium
$user->canTrade()           // true si puede hacer trading
$user->canUsePrivateChat()  // true si puede usar chat privado

// Gestión de sesión (solo web)
$user->hasSessionExpired()  // true si sesión expiró
$user->extendSession(2)     // Extiende sesión 2 horas
```

### 2. **Middleware en Rutas**

```php
use Illuminate\Support\Facades\Route;

// Verificar solo sesión (sin restricciones)
Route::middleware(['auth', 'account.permissions'])->group(function () {
    Route::get('/profile', [ProfileController::class, 'show']);
});

// Requiere launcher
Route::middleware(['auth', 'account.permissions:launcher'])->group(function () {
    Route::post('/trade/offer', [TradeController::class, 'createOffer']);
    Route::post('/chat/private', [ChatController::class, 'sendPrivate']);
});

// Requiere permiso específico
Route::middleware(['auth', 'account.permissions:trade'])->post('/trade/accept', [TradeController::class, 'accept']);
Route::middleware(['auth', 'account.permissions:private_chat'])->post('/chat/whisper', [ChatController::class, 'whisper']);
Route::middleware(['auth', 'account.permissions:premium'])->get('/shop/premium', [ShopController::class, 'premium']);

// Solo administradores
Route::middleware(['auth', 'account.permissions:admin'])->prefix('admin')->group(function () {
    Route::get('/users', [AdminController::class, 'users']);
    Route::post('/ban', [AdminController::class, 'banUser']);
});
```

### 3. **En Controladores**

```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TradeController extends Controller
{
    public function createOffer(Request $request)
    {
        $user = $request->user();

        // El middleware ya verificó, pero puedes hacer checks adicionales
        if (!$user->canTrade()) {
            return response()->json([
                'success' => false,
                'message' => 'No tienes permisos para hacer trading.',
                'upgrade_url' => '/download-launcher'
            ], 403);
        }

        // Lógica de trading...
        return response()->json(['success' => true]);
    }
}
```

### 4. **En Vistas Blade**

```blade
@auth
    <div class="user-info">
        <span>{{ Auth::user()->name }}</span>

        @if(Auth::user()->isWebUser())
            <span class="badge badge-warning">DEMO</span>
            <a href="/download-launcher" class="btn btn-primary">
                Descargar Versión Completa
            </a>
        @endif

        @if(Auth::user()->isLauncherUser())
            <span class="badge badge-success">PREMIUM</span>
        @endif

        @if(Auth::user()->isAdmin())
            <span class="badge badge-danger">ADMIN</span>
            <a href="/admin" class="btn btn-sm">Panel Admin</a>
        @endif
    </div>

    <!-- Ocultar features premium para usuarios web -->
    @if(Auth::user()->canTrade())
        <button class="btn-trade">Trade</button>
    @else
        <button class="btn-trade" disabled title="Solo en versión launcher">
            🔒 Trade (Launcher)
        </button>
    @endif

    @if(Auth::user()->canUsePrivateChat())
        <button class="btn-private-chat">Chat Privado</button>
    @endif
@endauth
```

### 5. **En JavaScript/Frontend**

```javascript
// El servidor debe enviar info del usuario al frontend
const userData = {
    account_type: 'web', // o 'launcher', 'admin'
    can_trade: false,
    can_private_chat: false,
    is_premium: false
};

// Deshabilitar funciones según permisos
if (!userData.can_trade) {
    document.querySelector('.trade-button').disabled = true;
    document.querySelector('.trade-button').title = 'Solo disponible en launcher';
}

// Mostrar modal de upgrade
function showUpgradeModal() {
    alert('Esta función solo está disponible en la versión completa del launcher.');
    window.location.href = '/download-launcher';
}
```

---

## 🚀 Ejemplos de Rutas Completas

```php
<?php
// routes/web.php

use Illuminate\Support\Facades\Route;

// ===== RUTAS PÚBLICAS (Sin autenticación) =====
Route::get('/', [HomeController::class, 'index']);
Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login']);
Route::get('/register', [RegisterController::class, 'showRegisterForm']);
Route::post('/register', [RegisterController::class, 'register']);
Route::get('/download-launcher', [LauncherController::class, 'download']);

// ===== RUTAS AUTENTICADAS (Web + Launcher) =====
Route::middleware(['auth', 'account.permissions'])->group(function () {
    Route::get('/home', [HomeController::class, 'dashboard']);
    Route::get('/profile', [ProfileController::class, 'show']);
    Route::post('/logout', [LoginController::class, 'logout']);

    // Juego básico (accesible para todos)
    Route::get('/game', [GameController::class, 'play']);
    Route::get('/island/{id}', [IslandController::class, 'show']);
    Route::post('/chat/public', [ChatController::class, 'sendPublic']);
});

// ===== RUTAS SOLO LAUNCHER =====
Route::middleware(['auth', 'account.permissions:launcher'])->group(function () {
    // Trading
    Route::prefix('trade')->group(function () {
        Route::post('/offer', [TradeController::class, 'createOffer']);
        Route::post('/accept/{id}', [TradeController::class, 'accept']);
        Route::post('/decline/{id}', [TradeController::class, 'decline']);
    });

    // Chat privado
    Route::prefix('chat')->group(function () {
        Route::post('/private', [ChatController::class, 'sendPrivate']);
        Route::get('/history/{userId}', [ChatController::class, 'getHistory']);
    });

    // Features avanzadas
    Route::post('/customize/avatar', [CustomizationController::class, 'saveAvatar']);
    Route::post('/guild/create', [GuildController::class, 'create']);
});

// ===== RUTAS PREMIUM =====
Route::middleware(['auth', 'account.permissions:premium'])->group(function () {
    Route::get('/shop/premium', [ShopController::class, 'premiumItems']);
    Route::post('/shop/buy-premium', [ShopController::class, 'buyPremiumItem']);
});

// ===== RUTAS ADMIN =====
Route::middleware(['auth', 'account.permissions:admin'])->prefix('admin')->group(function () {
    Route::get('/', [AdminController::class, 'dashboard']);
    Route::get('/users', [AdminController::class, 'users']);
    Route::post('/users/{id}/ban', [AdminController::class, 'banUser']);
    Route::post('/users/{id}/unban', [AdminController::class, 'unbanUser']);
    Route::post('/users/{id}/set-account-type', [AdminController::class, 'setAccountType']);
    Route::get('/logs', [AdminController::class, 'logs']);
});
```

---

## 📝 Respuestas del Middleware

### ✅ Éxito (200):
```json
{
    "success": true,
    "data": { ... }
}
```

### ⏱️ Sesión Expirada (401):
```json
{
    "success": false,
    "message": "Tu sesión ha expirado. Por favor, inicia sesión nuevamente.",
    "error": "session_expired"
}
```

### 🚫 Sin Permisos (403):
```json
{
    "success": false,
    "message": "Esta función solo está disponible en la versión completa del launcher.",
    "error": "insufficient_permissions",
    "upgrade_required": true,
    "download_url": "/download-launcher"
}
```

---

## 🎮 Flujo de Usuario

### Usuario WEB (Demo):
1. Se registra/login desde navegador
2. `account_type` = `'web'` por defecto
3. `session_expires_at` = now() + 2 horas
4. Puede jugar funcionalidad básica
5. Al intentar trading/chat privado → mensaje de upgrade
6. Sesión expira automáticamente en 2 horas

### Usuario LAUNCHER:
1. Descarga el launcher
2. Login desde launcher con flag `?launcher=true`
3. Backend actualiza: `account_type` = `'launcher'`
4. `session_expires_at` = null (sin límite)
5. Acceso completo a todas las features
6. Puede comprar premium para items exclusivos

---

## 🔄 Migración de Usuarios Existentes

Los usuarios existentes tendrán `account_type` = `'web'` por defecto. Para convertirlos a launcher:

```php
// Manualmente (consola)
$user = User::find(1);
$user->account_type = User::ACCOUNT_TYPE_LAUNCHER;
$user->session_expires_at = null;
$user->save();

// O crear un comando artisan
php artisan users:upgrade-to-launcher {userId}
```

---

## 🛠️ Testing

```php
// tests/Feature/PermissionsTest.php

public function test_web_user_cannot_trade()
{
    $user = User::factory()->create(['account_type' => 'web']);

    $response = $this->actingAs($user)
        ->post('/trade/offer', ['item_id' => 1]);

    $response->assertStatus(403);
    $response->assertJson(['error' => 'insufficient_permissions']);
}

public function test_launcher_user_can_trade()
{
    $user = User::factory()->create(['account_type' => 'launcher']);

    $response = $this->actingAs($user)
        ->post('/trade/offer', ['item_id' => 1]);

    $response->assertStatus(200);
}

public function test_web_session_expires()
{
    $user = User::factory()->create([
        'account_type' => 'web',
        'session_expires_at' => now()->subHour() // Expiró hace 1 hora
    ]);

    $response = $this->actingAs($user)->get('/home');

    $response->assertStatus(401);
    $response->assertJson(['error' => 'session_expired']);
}
```

---

## 📚 Referencias

- **Modelo**: `app/Models/User.php`
- **Middleware**: `app/Http/Middleware/CheckAccountPermissions.php`
- **Kernel**: `app/Http/Kernel.php`
- **Migración**: `database/migrations/2025_11_24_093535_add_account_type_to_users_table.php`
- **Rutas**: `routes/web.php`

---

**🤖 Generated with [Claude Code](https://claude.com/claude-code)**

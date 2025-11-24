# BoomBang Server - Routes & Permissions Matrix

This document provides a complete overview of all routes in the BoomBang Server application and their permission requirements.

## Table of Contents
- [Overview](#overview)
- [Permission Levels](#permission-levels)
- [Middleware System](#middleware-system)
- [Routes Matrix](#routes-matrix)
- [Socket.IO Game Features](#socketio-game-features)
- [Adding New Routes](#adding-new-routes)

## Overview

The BoomBang Server uses a hybrid permissions system that distinguishes between three types of users:
- **Web Users**: Limited access (2-hour sessions, restricted features)
- **Launcher Users**: Full access to all game features
- **Admin Users**: Full access plus administrative capabilities

## Permission Levels

### Account Types
| Type | Constant | Description |
|------|----------|-------------|
| Web | `User::ACCOUNT_TYPE_WEB` | Browser-based access with limitations |
| Launcher | `User::ACCOUNT_TYPE_LAUNCHER` | Desktop launcher with full features |
| Admin | `User::ACCOUNT_TYPE_ADMIN` | Administrative access |

### Available Permissions
| Permission | Description | Who Has Access |
|-----------|-------------|----------------|
| `web` | Basic web access | Web, Launcher, Admin |
| `launcher` | Full game features | Launcher, Admin |
| `admin` | Administrative functions | Admin only |
| `trade` | Trading system access | Launcher, Admin |
| `private_chat` | Private messaging | Launcher, Admin |
| `premium` | Premium features | Premium users, Launcher, Admin |

## Middleware System

### `account.permissions` Middleware

Located: `app/Http/Middleware/CheckAccountPermissions.php`

**Features:**
- Validates user permissions based on account type
- Checks and manages web user session expiration
- Automatically extends sessions for web users
- Returns JSON error responses for API routes
- Supports multiple permission types

**Usage:**
```php
// Basic auth check with session management
Route::middleware(['auth', 'account.permissions'])->group(function () {
    // Routes here
});

// Specific permission requirement
Route::middleware(['auth', 'account.permissions:launcher'])->group(function () {
    // Launcher-only routes
});

// Multiple middlewares
Route::get('/admin/dashboard', [AdminController::class, 'index'])
    ->middleware(['auth', 'account.permissions:admin']);
```

### User Model Helper Methods

Located: `app/Models/User.php`

| Method | Returns | Description |
|--------|---------|-------------|
| `isWebUser()` | bool | Check if user is web type |
| `isLauncherUser()` | bool | Check if user is launcher type |
| `isAdmin()` | bool | Check if user is admin |
| `canTrade()` | bool | Check if user can access trading |
| `canUsePrivateChat()` | bool | Check if user can use private chat |
| `hasPremiumAccess()` | bool | Check if user has premium features |
| `hasSessionExpired()` | bool | Check if web user session expired |
| `extendSession(int $hours = 2)` | void | Extend web user session |

## Routes Matrix

### Web Routes (routes/web.php)

#### Public Routes (No Authentication)
| Route | Method | Name | Controller | Purpose | Permission |
|-------|--------|------|------------|---------|------------|
| `/` | GET | `login` | `LoginController@index` | Display login page | None (Public) |

#### Authentication Routes
| Route | Method | Name | Controller | Purpose | Permission |
|-------|--------|------|------------|---------|------------|
| `/webapi/login` | POST | `webapi.login` | `LoginController@login` | Process login request | None (Public) |

#### Authenticated Routes (All Users)
| Route | Method | Name | Controller | Purpose | Permission |
|-------|--------|------|------------|---------|------------|
| `/game` | GET | `game` | `GameController@index` | Display game interface | Authenticated (All) |

#### Launcher-Only Routes (Placeholder)
Currently, there are no specific launcher-only HTTP routes. Game features like trading and private chat are handled through Socket.IO (see below). These route groups are prepared for future expansion.

| Route | Method | Name | Controller | Purpose | Permission |
|-------|--------|------|------------|---------|------------|
| *None defined* | - | - | - | Reserved for launcher features | Launcher/Admin |

#### Admin-Only Routes (Placeholder)
These route groups are prepared for future administrative features.

| Route | Method | Name | Controller | Purpose | Permission |
|-------|--------|------|------------|---------|------------|
| *None defined* | - | - | - | Reserved for admin features | Admin only |

### API Routes (routes/api.php)

| Route | Method | Controller | Purpose | Permission |
|-------|--------|------------|---------|------------|
| `/api/user` | GET | Closure | Get authenticated user data | Authenticated (Sanctum) |

## Socket.IO Game Features

**Important:** The core game features are handled through Socket.IO WebSocket connections, not HTTP routes. These features are validated server-side by the C# emulator.

### Architecture
```
Browser/Launcher → Socket.IO (Node.js:3000) → C# Emulator (TCP:3300)
```

### Socket.IO Controller
Located: `node/controllers/SocketIOController.js`

**Features Validated:**
- User authentication via token
- Message sanitization (max 500 characters)
- Input validation
- IP tracking

### Game Features Requiring Permissions

The following features are handled via Socket.IO and validated on the C# emulator side:

| Feature | Required Permission | Description |
|---------|-------------------|-------------|
| Chat (Public) | Any authenticated | Public chat rooms |
| Private Chat | `private_chat` | Direct messages between users |
| Trading | `trade` | Item/resource trading system |
| Premium Features | `premium` | Special items, areas, or bonuses |
| Game Actions | Authenticated | Basic gameplay (battles, movement, etc.) |

**Implementation Note:** When sending socket messages from the client, include user account type so the C# emulator can validate permissions. The Node.js Socket.IO server forwards messages to the C# emulator which performs the actual permission checks.

### Session Management for Web Users

- **Session Duration:** 2 hours (configurable in `User::extendSession()`)
- **Extension:** Automatic on each request to authenticated routes
- **Expiration Check:** Performed by `account.permissions` middleware
- **Logout:** Automatic on session expiration with JSON response

## Adding New Routes

### 1. Public Routes (No Auth Required)
```php
// routes/web.php
Route::get('/about', [PageController::class, 'about'])->name('about');
```

### 2. Authenticated Routes (All Users)
```php
// routes/web.php
Route::middleware(['auth', 'account.permissions'])->group(function () {
    Route::get('/profile', [ProfileController::class, 'show'])->name('profile.show');
    Route::post('/profile', [ProfileController::class, 'update'])->name('profile.update');
});
```

### 3. Launcher-Only Routes
```php
// routes/web.php
Route::middleware(['auth', 'account.permissions:launcher'])->group(function () {
    Route::get('/advanced-features', [FeatureController::class, 'advanced'])->name('features.advanced');
    Route::get('/download-resources', [DownloadController::class, 'index'])->name('downloads.index');
});
```

### 4. Admin-Only Routes
```php
// routes/web.php
Route::middleware(['auth', 'account.permissions:admin'])->prefix('admin')->group(function () {
    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('admin.dashboard');
    Route::get('/users', [AdminController::class, 'users'])->name('admin.users');
    Route::post('/users/{user}/ban', [AdminController::class, 'banUser'])->name('admin.users.ban');
});
```

### 5. API Routes with Specific Permissions
```php
// routes/api.php
Route::middleware(['auth:sanctum', 'account.permissions:trade'])->group(function () {
    Route::post('/trade/initiate', [TradeController::class, 'initiate']);
    Route::post('/trade/accept', [TradeController::class, 'accept']);
});
```

### 6. Multiple Permission Checks
For complex permission requirements, check permissions in the controller:

```php
public function restrictedFeature(Request $request)
{
    $user = $request->user();

    if (!$user->canTrade() || !$user->hasPremiumAccess()) {
        return response()->json([
            'success' => false,
            'message' => 'This feature requires both trading access and premium membership.',
            'upgrade_required' => true
        ], 403);
    }

    // Feature logic here
}
```

## Security Considerations

### Current Implementation

1. **Session Management**: Web users have time-limited sessions that auto-extend on activity
2. **Middleware Protection**: All authenticated routes are protected by Laravel's auth middleware
3. **Permission Validation**: Account type determines feature access
4. **Input Sanitization**: Socket.IO controller sanitizes all incoming messages
5. **CSRF Protection**: Laravel CSRF tokens protect web routes
6. **CORS Configuration**: Socket.IO CORS restricted to allowed origins

### Best Practices

1. **Always use middleware** for permission checks on routes
2. **Double-check on server-side** for Socket.IO game actions
3. **Validate user actions** both in Node.js and C# emulator
4. **Log security events** (failed auth, permission denials)
5. **Rate limit** authentication endpoints
6. **Monitor** for suspicious activity patterns

### Potential Improvements

1. Add rate limiting to `/webapi/login` endpoint
2. Implement IP-based restrictions for admin routes
3. Add 2FA for admin accounts
4. Log all admin actions for audit trail
5. Implement session management dashboard for admins
6. Add webhook notifications for security events

## Summary Statistics

### Current Routes Count
- **Total Routes**: 3 active + 2 placeholder groups
- **Public Routes**: 2 (login page, login API)
- **Authenticated Routes**: 1 (game page)
- **Launcher Routes**: 0 (prepared for expansion)
- **Admin Routes**: 0 (prepared for expansion)

### Protected Resources
- **HTTP Routes**: 1 route protected with authentication + permissions
- **Controllers**: 2 controllers (Login, Game)
- **Socket.IO**: All game features validated server-side
- **Middleware**: 1 custom permission middleware

### Permission Distribution
- **Public Access**: Login, registration
- **Web Users**: Game interface (limited features via Socket.IO)
- **Launcher Users**: Full game features (trading, private chat, etc.)
- **Admin Users**: All features + future admin panel

---

**Last Updated**: 2025-11-24
**Version**: 1.0
**Maintainer**: Development Team

<?php

use App\Http\Controllers\Pages\GameController;
use App\Http\Controllers\Pages\LoginController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Public routes - no authentication required
Route::get('/', [LoginController::class, 'index'])->name('login');

// Authentication routes
Route::middleware(['web'])->prefix('webapi')->group(function () {
    Route::post('/login', [LoginController::class, 'login'])->name('webapi.login');
});

// Authenticated routes - all logged-in users (web, launcher, admin)
Route::middleware(['auth', 'account.permissions'])->group(function () {
    Route::get('/game', [GameController::class, 'index'])->name('game');
});

// Launcher-only routes - full feature access
// Note: Game features like trading, private chat are handled via Socket.IO
// and validated server-side. These routes would be for any web endpoints
// that need launcher-only access.
Route::middleware(['auth', 'account.permissions:launcher'])->group(function () {
    // Add launcher-specific routes here (e.g., advanced features, downloads)
});

// Admin-only routes
Route::middleware(['auth', 'account.permissions:admin'])->group(function () {
    // Add admin-specific routes here (e.g., user management, moderation)
});

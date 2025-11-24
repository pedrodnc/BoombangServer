<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckAccountPermissions
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @param  string|null  $permission  The required permission (e.g., 'trade', 'private_chat', 'premium', 'launcher')
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next, ?string $permission = null)
    {
        $user = $request->user();

        // If no user is authenticated, let auth middleware handle it
        if (!$user) {
            return $next($request);
        }

        // Check if web user session has expired
        if ($user->hasSessionExpired()) {
            auth()->logout();
            return response()->json([
                'success' => false,
                'message' => 'Tu sesión ha expirado. Por favor, inicia sesión nuevamente.',
                'error' => 'session_expired'
            ], 401);
        }

        // If no specific permission is required, just check session expiration
        if (!$permission) {
            return $next($request);
        }

        // Check specific permission
        $hasPermission = match($permission) {
            'launcher' => $user->isLauncherUser() || $user->isAdmin(),
            'admin' => $user->isAdmin(),
            'trade' => $user->canTrade(),
            'private_chat' => $user->canUsePrivateChat(),
            'premium' => $user->hasPremiumAccess(),
            default => true
        };

        if (!$hasPermission) {
            return response()->json([
                'success' => false,
                'message' => 'Esta función solo está disponible en la versión completa del launcher.',
                'error' => 'insufficient_permissions',
                'upgrade_required' => true,
                'download_url' => '/download-launcher'
            ], 403);
        }

        // Extend session for web users on each request
        if ($user->isWebUser()) {
            $user->extendSession();
        }

        return $next($request);
    }
}

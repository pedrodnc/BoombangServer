<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class PermissionsTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test that web users cannot access launcher-only features.
     */
    public function test_web_user_cannot_access_launcher_features()
    {
        $webUser = User::factory()->webUser()->create();

        // Mock a launcher-only route for testing
        $this->app['router']->get('/test-launcher-feature', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:launcher']);

        $response = $this->actingAs($webUser)
            ->getJson('/test-launcher-feature');

        $response->assertStatus(403)
            ->assertJson([
                'success' => false,
                'error' => 'insufficient_permissions',
                'upgrade_required' => true,
            ]);
    }

    /**
     * Test that launcher users can access all features.
     */
    public function test_launcher_user_can_access_all_features()
    {
        $launcherUser = User::factory()->launcherUser()->create();

        // Launcher users should have access to the game route
        $response = $this->actingAs($launcherUser)
            ->get('/game');

        $response->assertStatus(200);
    }

    /**
     * Test that admin users can access everything.
     */
    public function test_admin_can_access_everything()
    {
        $adminUser = User::factory()->admin()->create();

        // Admin users should have access to the game route
        $response = $this->actingAs($adminUser)
            ->get('/game');

        $response->assertStatus(200);
    }

    /**
     * Test session expiration for web users.
     */
    public function test_session_expiration_for_web_users()
    {
        $expiredWebUser = User::factory()->webUserExpired()->create();

        $response = $this->actingAs($expiredWebUser)
            ->get('/game');

        $response->assertStatus(401)
            ->assertJson([
                'success' => false,
                'error' => 'session_expired',
            ]);

        // Verify user is logged out
        $this->assertGuest();
    }

    /**
     * Test that active web user sessions work correctly.
     */
    public function test_active_web_user_session_works()
    {
        $webUser = User::factory()->webUser()->create();

        $response = $this->actingAs($webUser)
            ->get('/game');

        $response->assertStatus(200);
    }

    /**
     * Test permission middleware returns 403 for insufficient permissions.
     */
    public function test_permission_middleware_returns_403_for_insufficient_permissions()
    {
        $webUser = User::factory()->webUser()->create();

        // Mock a route that requires launcher permission
        $this->app['router']->get('/test-launcher-route', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:launcher']);

        $response = $this->actingAs($webUser)
            ->getJson('/test-launcher-route');

        $response->assertStatus(403)
            ->assertJson([
                'success' => false,
                'message' => 'Esta función solo está disponible en la versión completa del launcher.',
                'error' => 'insufficient_permissions',
            ]);
    }

    /**
     * Test permission middleware returns 401 for expired sessions.
     */
    public function test_permission_middleware_returns_401_for_expired_sessions()
    {
        $expiredWebUser = User::factory()->webUserExpired()->create();

        $response = $this->actingAs($expiredWebUser)
            ->getJson('/game');

        $response->assertStatus(401)
            ->assertJson([
                'success' => false,
                'error' => 'session_expired',
            ]);
    }

    /**
     * Test trade permission restrictions.
     */
    public function test_trade_permission_restrictions()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();
        $adminUser = User::factory()->admin()->create();

        // Mock a route that requires trade permission
        $this->app['router']->post('/test-trade', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:trade']);

        // Web user should be denied
        $response = $this->actingAs($webUser)
            ->postJson('/test-trade');
        $response->assertStatus(403);

        // Launcher user should have access
        $response = $this->actingAs($launcherUser)
            ->postJson('/test-trade');
        $response->assertStatus(200);

        // Admin user should have access
        $response = $this->actingAs($adminUser)
            ->postJson('/test-trade');
        $response->assertStatus(200);
    }

    /**
     * Test private chat restrictions.
     */
    public function test_private_chat_restrictions()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();
        $adminUser = User::factory()->admin()->create();

        // Mock a route that requires private_chat permission
        $this->app['router']->post('/test-private-chat', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:private_chat']);

        // Web user should be denied
        $response = $this->actingAs($webUser)
            ->postJson('/test-private-chat');
        $response->assertStatus(403);

        // Launcher user should have access
        $response = $this->actingAs($launcherUser)
            ->postJson('/test-private-chat');
        $response->assertStatus(200);

        // Admin user should have access
        $response = $this->actingAs($adminUser)
            ->postJson('/test-private-chat');
        $response->assertStatus(200);
    }

    /**
     * Test premium access.
     */
    public function test_premium_access()
    {
        $webUser = User::factory()->webUser()->create();
        $premiumWebUser = User::factory()->webUser()->premium()->create();
        $launcherUser = User::factory()->launcherUser()->create();
        $adminUser = User::factory()->admin()->create();

        // Mock a route that requires premium permission
        $this->app['router']->get('/test-premium', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:premium']);

        // Regular web user should be denied
        $response = $this->actingAs($webUser)
            ->getJson('/test-premium');
        $response->assertStatus(403);

        // Premium web user should have access
        $response = $this->actingAs($premiumWebUser)
            ->getJson('/test-premium');
        $response->assertStatus(200);

        // Launcher user should have access (always premium)
        $response = $this->actingAs($launcherUser)
            ->getJson('/test-premium');
        $response->assertStatus(200);

        // Admin user should have access
        $response = $this->actingAs($adminUser)
            ->getJson('/test-premium');
        $response->assertStatus(200);
    }

    /**
     * Test that launcher users don't have session expiration.
     */
    public function test_launcher_users_dont_have_session_expiration()
    {
        $launcherUser = User::factory()->launcherUser()->create();

        // Access game route multiple times
        for ($i = 0; $i < 3; $i++) {
            $response = $this->actingAs($launcherUser)
                ->get('/game');

            $response->assertStatus(200);
        }

        // Verify session_expires_at is still null
        $launcherUser->refresh();
        $this->assertNull($launcherUser->session_expires_at);
    }

    /**
     * Test that web user session gets extended on activity.
     */
    public function test_web_user_session_extends_on_activity()
    {
        // Create a web user with session expiring in 5 minutes
        $webUser = User::factory()->create([
            'account_type' => User::ACCOUNT_TYPE_WEB,
            'session_expires_at' => now()->addMinutes(5),
        ]);

        $response = $this->actingAs($webUser)
            ->get('/game');

        $response->assertStatus(200);

        // Verify session is still valid after request
        $webUser->refresh();
        $this->assertNotNull($webUser->session_expires_at);
        $this->assertTrue($webUser->session_expires_at->isFuture(),
            'Session should be in the future after activity');
    }

    /**
     * Test admin permission restriction.
     */
    public function test_admin_permission_restriction()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();
        $adminUser = User::factory()->admin()->create();

        // Mock a route that requires admin permission
        $this->app['router']->get('/test-admin', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:admin']);

        // Web user should be denied
        $response = $this->actingAs($webUser)
            ->getJson('/test-admin');
        $response->assertStatus(403);

        // Launcher user should be denied (not admin)
        $response = $this->actingAs($launcherUser)
            ->getJson('/test-admin');
        $response->assertStatus(403);

        // Admin user should have access
        $response = $this->actingAs($adminUser)
            ->getJson('/test-admin');
        $response->assertStatus(200);
    }
}

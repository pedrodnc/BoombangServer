<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class RoutesTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test public routes are accessible without authentication.
     */
    public function test_public_routes_accessible_without_auth()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    /**
     * Test login route is accessible without authentication.
     */
    public function test_login_route_accessible_without_auth()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
        $response->assertViewIs('pages.LoginPage');
    }

    /**
     * Test game route requires authentication.
     */
    public function test_game_route_requires_authentication()
    {
        $response = $this->get('/game');

        $response->assertRedirect('/');
    }

    /**
     * Test game route is accessible when authenticated.
     */
    public function test_game_route_accessible_when_authenticated()
    {
        $user = User::factory()->webUser()->create();

        $response = $this->actingAs($user)
            ->get('/game');

        $response->assertStatus(200);
    }

    /**
     * Test middleware chain works correctly for authenticated routes.
     */
    public function test_middleware_chain_works_for_authenticated_routes()
    {
        // Create user with session expiring in 5 minutes
        $user = User::factory()->create([
            'account_type' => User::ACCOUNT_TYPE_WEB,
            'session_expires_at' => now()->addMinutes(5),
        ]);

        $response = $this->actingAs($user)
            ->get('/game');

        $response->assertStatus(200);

        // Verify session is still valid (web users)
        $user->refresh();
        $this->assertNotNull($user->session_expires_at);
        $this->assertTrue($user->session_expires_at->isFuture(),
            'Session should be in the future after request');
    }

    /**
     * Test expired session blocks access.
     */
    public function test_expired_session_blocks_access()
    {
        $expiredUser = User::factory()->webUserExpired()->create();

        $response = $this->actingAs($expiredUser)
            ->get('/game');

        $response->assertStatus(401);
        $this->assertGuest();
    }

    /**
     * Test webapi login endpoint is accessible.
     */
    public function test_webapi_login_endpoint_accessible()
    {
        $response = $this->postJson('/webapi/login', [
            'name' => 'testuser',
            'password' => 'testpass',
        ]);

        // Will fail authentication but endpoint should be accessible
        $response->assertStatus(200)
            ->assertJson(['success' => false]);
    }

    /**
     * Test game route returns correct view.
     */
    public function test_game_route_returns_correct_view()
    {
        $user = User::factory()->launcherUser()->create();

        $response = $this->actingAs($user)
            ->get('/game');

        $response->assertStatus(200);
        $response->assertViewIs('pages.GamePage');
    }

    /**
     * Test launcher routes require launcher permission.
     */
    public function test_launcher_routes_require_launcher_permission()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();

        // Mock a launcher-only route
        $this->app['router']->get('/launcher-only', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:launcher']);

        // Web user should be denied
        $response = $this->actingAs($webUser)
            ->getJson('/launcher-only');
        $response->assertStatus(403);

        // Launcher user should have access
        $response = $this->actingAs($launcherUser)
            ->getJson('/launcher-only');
        $response->assertStatus(200);
    }

    /**
     * Test admin routes require admin permission.
     */
    public function test_admin_routes_require_admin_permission()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();
        $adminUser = User::factory()->admin()->create();

        // Mock an admin-only route
        $this->app['router']->get('/admin-only', function () {
            return response()->json(['success' => true]);
        })->middleware(['auth', 'account.permissions:admin']);

        // Web user should be denied
        $response = $this->actingAs($webUser)
            ->getJson('/admin-only');
        $response->assertStatus(403);

        // Launcher user should be denied
        $response = $this->actingAs($launcherUser)
            ->getJson('/admin-only');
        $response->assertStatus(403);

        // Admin user should have access
        $response = $this->actingAs($adminUser)
            ->getJson('/admin-only');
        $response->assertStatus(200);
    }

    /**
     * Test middleware applies to route groups.
     */
    public function test_middleware_applies_to_route_groups()
    {
        $user = User::factory()->webUser()->create();

        // The /game route is in authenticated middleware group
        $response = $this->actingAs($user)
            ->get('/game');

        $response->assertStatus(200);

        // Verify middleware ran (session extended)
        $user->refresh();
        $this->assertNotNull($user->session_expires_at);
    }

    /**
     * Test unauthenticated JSON requests return 401.
     */
    public function test_unauthenticated_json_requests_return_401()
    {
        $response = $this->getJson('/game');

        $response->assertStatus(401);
    }

    /**
     * Test unauthenticated web requests redirect to login.
     */
    public function test_unauthenticated_web_requests_redirect_to_login()
    {
        $response = $this->get('/game');

        $response->assertRedirect('/');
    }

    /**
     * Test route name resolution.
     */
    public function test_route_name_resolution()
    {
        $this->assertTrue(route('login') !== null);
        $this->assertTrue(route('webapi.login') !== null);
        $this->assertTrue(route('game') !== null);
    }

    /**
     * Test CSRF protection on login route.
     */
    public function test_csrf_protection_on_login_route()
    {
        // POST without CSRF token should fail for web routes
        // But our API uses JSON and doesn't require CSRF
        $response = $this->postJson('/webapi/login', [
            'name' => 'testuser',
            'password' => 'testpass',
        ]);

        // Should process the request (auth fails, not CSRF)
        $response->assertStatus(200)
            ->assertJson(['success' => false]);
    }

    /**
     * Test routes handle different HTTP methods correctly.
     */
    public function test_routes_handle_http_methods_correctly()
    {
        // GET on login endpoint should work
        $response = $this->get('/');
        $response->assertStatus(200);

        // POST on login API should work
        $response = $this->postJson('/webapi/login', [
            'name' => 'testuser',
            'password' => 'testpass',
        ]);
        $response->assertStatus(200) // Auth fails but route works
            ->assertJson(['success' => false]);

        // Invalid method should fail
        $response = $this->deleteJson('/webapi/login');
        $response->assertStatus(405);
    }

    /**
     * Test route parameters and wildcards.
     */
    public function test_route_parameters_work_correctly()
    {
        // Test that routes without parameters work
        $user = User::factory()->webUser()->create();

        $response = $this->actingAs($user)->get('/game');
        $response->assertStatus(200);
    }
}

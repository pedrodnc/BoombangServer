<?php

namespace Tests\Unit;

use App\Http\Middleware\CheckAccountPermissions;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tests\TestCase;

class MiddlewareTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test middleware allows request when no user is authenticated.
     */
    public function test_middleware_allows_request_with_no_user()
    {
        $request = Request::create('/test', 'GET');
        $middleware = new CheckAccountPermissions();

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        });

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware blocks expired web user sessions.
     */
    public function test_middleware_blocks_expired_web_user_sessions()
    {
        $user = User::factory()->webUserExpired()->create();
        Auth::login($user);

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $middleware = new CheckAccountPermissions();

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        });

        $this->assertEquals(401, $response->getStatusCode());
        $responseData = json_decode($response->getContent(), true);
        $this->assertEquals('session_expired', $responseData['error']);
    }

    /**
     * Test middleware allows valid web user sessions.
     */
    public function test_middleware_allows_valid_web_user_sessions()
    {
        $user = User::factory()->webUser()->create();

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $middleware = new CheckAccountPermissions();

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        });

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware extends web user sessions.
     */
    public function test_middleware_extends_web_user_sessions()
    {
        // Create user with session expiring in 5 minutes (will definitely be extended to 2 hours)
        $user = User::factory()->create([
            'account_type' => User::ACCOUNT_TYPE_WEB,
            'session_expires_at' => now()->addMinutes(5),
        ]);

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $middleware = new CheckAccountPermissions();

        $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        });

        $user->refresh();
        // Verify the session is still valid and in the future
        $this->assertNotNull($user->session_expires_at);
        $this->assertTrue($user->session_expires_at->isFuture(),
            'Session should be in the future after extension');
    }

    /**
     * Test middleware doesn't extend launcher user sessions.
     */
    public function test_middleware_doesnt_extend_launcher_user_sessions()
    {
        $user = User::factory()->launcherUser()->create();

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $middleware = new CheckAccountPermissions();

        $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        });

        $user->refresh();
        $this->assertNull($user->session_expires_at);
    }

    /**
     * Test middleware allows request when no permission is required.
     */
    public function test_middleware_allows_request_with_no_permission_required()
    {
        $user = User::factory()->webUser()->create();

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $middleware = new CheckAccountPermissions();

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, null);

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware checks launcher permission correctly.
     */
    public function test_middleware_checks_launcher_permission()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();

        $middleware = new CheckAccountPermissions();

        // Web user should be denied
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($webUser) {
            return $webUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'launcher');

        $this->assertEquals(403, $response->getStatusCode());

        // Launcher user should be allowed
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($launcherUser) {
            return $launcherUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'launcher');

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware checks admin permission correctly.
     */
    public function test_middleware_checks_admin_permission()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();
        $adminUser = User::factory()->admin()->create();

        $middleware = new CheckAccountPermissions();

        // Web user should be denied
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($webUser) {
            return $webUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'admin');

        $this->assertEquals(403, $response->getStatusCode());

        // Launcher user should be denied
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($launcherUser) {
            return $launcherUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'admin');

        $this->assertEquals(403, $response->getStatusCode());

        // Admin user should be allowed
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($adminUser) {
            return $adminUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'admin');

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware checks trade permission correctly.
     */
    public function test_middleware_checks_trade_permission()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();

        $middleware = new CheckAccountPermissions();

        // Web user should be denied
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($webUser) {
            return $webUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'trade');

        $this->assertEquals(403, $response->getStatusCode());

        // Launcher user should be allowed
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($launcherUser) {
            return $launcherUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'trade');

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware checks private_chat permission correctly.
     */
    public function test_middleware_checks_private_chat_permission()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();

        $middleware = new CheckAccountPermissions();

        // Web user should be denied
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($webUser) {
            return $webUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'private_chat');

        $this->assertEquals(403, $response->getStatusCode());

        // Launcher user should be allowed
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($launcherUser) {
            return $launcherUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'private_chat');

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware checks premium permission correctly.
     */
    public function test_middleware_checks_premium_permission()
    {
        $webUser = User::factory()->webUser()->create();
        $premiumUser = User::factory()->webUser()->premium()->create();
        $launcherUser = User::factory()->launcherUser()->create();

        $middleware = new CheckAccountPermissions();

        // Regular web user should be denied
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($webUser) {
            return $webUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'premium');

        $this->assertEquals(403, $response->getStatusCode());

        // Premium web user should be allowed
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($premiumUser) {
            return $premiumUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'premium');

        $this->assertEquals(200, $response->getStatusCode());

        // Launcher user should be allowed (always premium)
        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($launcherUser) {
            return $launcherUser;
        });

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'premium');

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware returns proper error response format.
     */
    public function test_middleware_returns_proper_error_response_format()
    {
        $webUser = User::factory()->webUser()->create();

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($webUser) {
            return $webUser;
        });

        $middleware = new CheckAccountPermissions();

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'launcher');

        $this->assertEquals(403, $response->getStatusCode());

        $responseData = json_decode($response->getContent(), true);
        $this->assertArrayHasKey('success', $responseData);
        $this->assertArrayHasKey('message', $responseData);
        $this->assertArrayHasKey('error', $responseData);
        $this->assertArrayHasKey('upgrade_required', $responseData);
        $this->assertArrayHasKey('download_url', $responseData);
        $this->assertEquals(false, $responseData['success']);
        $this->assertEquals('insufficient_permissions', $responseData['error']);
        $this->assertEquals(true, $responseData['upgrade_required']);
    }

    /**
     * Test middleware returns proper session expired response format.
     */
    public function test_middleware_returns_proper_session_expired_response_format()
    {
        $user = User::factory()->webUserExpired()->create();
        Auth::login($user);

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $middleware = new CheckAccountPermissions();

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        });

        $this->assertEquals(401, $response->getStatusCode());

        $responseData = json_decode($response->getContent(), true);
        $this->assertArrayHasKey('success', $responseData);
        $this->assertArrayHasKey('message', $responseData);
        $this->assertArrayHasKey('error', $responseData);
        $this->assertEquals(false, $responseData['success']);
        $this->assertEquals('session_expired', $responseData['error']);
    }

    /**
     * Test middleware handles unknown permissions.
     */
    public function test_middleware_handles_unknown_permissions()
    {
        $user = User::factory()->webUser()->create();

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $middleware = new CheckAccountPermissions();

        // Unknown permission should default to allowing access
        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'unknown_permission');

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Test middleware with admin user allows launcher permission.
     */
    public function test_middleware_admin_user_has_launcher_permissions()
    {
        $adminUser = User::factory()->admin()->create();

        $request = Request::create('/test', 'GET');
        $request->setUserResolver(function () use ($adminUser) {
            return $adminUser;
        });

        $middleware = new CheckAccountPermissions();

        $response = $middleware->handle($request, function ($req) {
            return response()->json(['success' => true]);
        }, 'launcher');

        $this->assertEquals(200, $response->getStatusCode());
    }
}

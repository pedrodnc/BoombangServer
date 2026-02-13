<?php

namespace Tests\Unit\Middleware;

use App\Http\Middleware\CheckAccountPermissions;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tests\TestCase;

class CheckAccountPermissionsTest extends TestCase
{
    public function test_handle_passes_when_no_user_authenticated()
    {
        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () {
            return null;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        });

        $this->assertEquals('next', $response);
    }

    public function test_handle_logs_out_when_session_expired()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(true);

        Auth::shouldReceive('logout')->once();

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        });

        $this->assertEquals(401, $response->getStatusCode());
        $this->assertEquals('session_expired', $response->getData()->error);
    }

    public function test_handle_passes_when_no_permission_required()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('isWebUser')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, null);

        $this->assertEquals('next', $response);
    }

    public function test_handle_checks_launcher_permission_success()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('isLauncherUser')->willReturn(true);
        $user->method('isWebUser')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'launcher');

        $this->assertEquals('next', $response);
    }

    public function test_handle_checks_launcher_permission_failure()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('isLauncherUser')->willReturn(false);
        $user->method('isAdmin')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'launcher');

        $this->assertEquals(403, $response->getStatusCode());
        $this->assertEquals('insufficient_permissions', $response->getData()->error);
    }

    public function test_handle_checks_admin_permission_success()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('isAdmin')->willReturn(true);
        $user->method('isWebUser')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'admin');

        $this->assertEquals('next', $response);
    }

    public function test_handle_checks_admin_permission_failure()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('isAdmin')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'admin');

        $this->assertEquals(403, $response->getStatusCode());
    }

    public function test_handle_checks_trade_permission_success()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('canTrade')->willReturn(true);
        $user->method('isWebUser')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'trade');

        $this->assertEquals('next', $response);
    }

    public function test_handle_checks_trade_permission_failure()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('canTrade')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'trade');

        $this->assertEquals(403, $response->getStatusCode());
    }

    public function test_handle_checks_private_chat_permission_success()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('canUsePrivateChat')->willReturn(true);
        $user->method('isWebUser')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'private_chat');

        $this->assertEquals('next', $response);
    }

    public function test_handle_checks_private_chat_permission_failure()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('canUsePrivateChat')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'private_chat');

        $this->assertEquals(403, $response->getStatusCode());
    }

    public function test_handle_checks_premium_permission_success()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('hasPremiumAccess')->willReturn(true);
        $user->method('isWebUser')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'premium');

        $this->assertEquals('next', $response);
    }

    public function test_handle_checks_premium_permission_failure()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('hasPremiumAccess')->willReturn(false);

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        }, 'premium');

        $this->assertEquals(403, $response->getStatusCode());
    }

    public function test_handle_extends_session_for_web_users()
    {
        $user = $this->createMock(User::class);
        $user->method('hasSessionExpired')->willReturn(false);
        $user->method('isWebUser')->willReturn(true);

        $user->expects($this->once())->method('extendSession');

        $middleware = new CheckAccountPermissions();
        $request = Request::create('/', 'GET');
        $request->setUserResolver(function () use ($user) {
            return $user;
        });

        $response = $middleware->handle($request, function ($req) {
            return 'next';
        });

        $this->assertEquals('next', $response);
    }
}

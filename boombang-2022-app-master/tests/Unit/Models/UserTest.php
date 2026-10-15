<?php

namespace Tests\Unit\Models;

use App\Models\User;
use Carbon\Carbon;
use Mockery;
use Tests\TestCase;

class UserTest extends TestCase
{
    public function test_is_web_user()
    {
        $user = new User();
        $user->account_type = User::ACCOUNT_TYPE_WEB;
        $this->assertTrue($user->isWebUser());

        $user->account_type = User::ACCOUNT_TYPE_LAUNCHER;
        $this->assertFalse($user->isWebUser());
    }

    public function test_is_launcher_user()
    {
        $user = new User();
        $user->account_type = User::ACCOUNT_TYPE_LAUNCHER;
        $this->assertTrue($user->isLauncherUser());

        $user->account_type = User::ACCOUNT_TYPE_WEB;
        $this->assertFalse($user->isLauncherUser());
    }

    public function test_is_admin()
    {
        $user = new User();
        $user->account_type = User::ACCOUNT_TYPE_ADMIN;
        $this->assertTrue($user->isAdmin());

        $user->account_type = User::ACCOUNT_TYPE_WEB;
        $this->assertFalse($user->isAdmin());
    }

    public function test_has_premium_access()
    {
        // Premium user (web or launcher)
        $user = new User();
        $user->is_premium = true;
        $this->assertTrue($user->hasPremiumAccess());

        // Launcher user (implicitly premium for access?)
        // The code says: return $this->is_premium || $this->isLauncherUser() || $this->isAdmin();
        $user->is_premium = false;
        $user->account_type = User::ACCOUNT_TYPE_LAUNCHER;
        $this->assertTrue($user->hasPremiumAccess());

        // Admin user
        $user->account_type = User::ACCOUNT_TYPE_ADMIN;
        $this->assertTrue($user->hasPremiumAccess());

        // Web user without premium
        $user->account_type = User::ACCOUNT_TYPE_WEB;
        $user->is_premium = false;
        $this->assertFalse($user->hasPremiumAccess());
    }

    public function test_can_trade()
    {
        // Launcher user
        $user = new User();
        $user->account_type = User::ACCOUNT_TYPE_LAUNCHER;
        $this->assertTrue($user->canTrade());

        // Admin user
        $user->account_type = User::ACCOUNT_TYPE_ADMIN;
        $this->assertTrue($user->canTrade());

        // Web user
        $user->account_type = User::ACCOUNT_TYPE_WEB;
        $this->assertFalse($user->canTrade());
    }

    public function test_can_use_private_chat()
    {
        // Launcher user
        $user = new User();
        $user->account_type = User::ACCOUNT_TYPE_LAUNCHER;
        $this->assertTrue($user->canUsePrivateChat());

        // Admin user
        $user->account_type = User::ACCOUNT_TYPE_ADMIN;
        $this->assertTrue($user->canUsePrivateChat());

        // Web user
        $user->account_type = User::ACCOUNT_TYPE_WEB;
        $this->assertFalse($user->canUsePrivateChat());
    }

    public function test_has_session_expired()
    {
        // Not a web user
        $user = new User();
        $user->account_type = User::ACCOUNT_TYPE_LAUNCHER;
        $this->assertFalse($user->hasSessionExpired());

        // Web user without session expiration
        $user->account_type = User::ACCOUNT_TYPE_WEB;
        $user->session_expires_at = null;
        $this->assertFalse($user->hasSessionExpired());

        // Web user with future expiration
        $user->session_expires_at = Carbon::now()->addHour();
        $this->assertFalse($user->hasSessionExpired());

        // Web user with past expiration
        $user->session_expires_at = Carbon::now()->subHour();
        $this->assertTrue($user->hasSessionExpired());
    }

    public function test_extend_session()
    {
        // Test with mocked User to avoid DB interaction
        /** @var User|\Mockery\MockInterface $user */
        $user = Mockery::mock(User::class)->makePartial();
        $user->shouldReceive('save')->once();

        $user->account_type = User::ACCOUNT_TYPE_WEB;

        // Fix time
        $now = Carbon::now();
        Carbon::setTestNow($now);

        $user->extendSession(2);

        $this->assertEquals($now->copy()->addHours(2)->toDateTimeString(), $user->session_expires_at->toDateTimeString());

        // Verify save was called (implicitly by mockery verification)

        // Reset Carbon
        Carbon::setTestNow();
    }

    protected function tearDown(): void
    {
        Carbon::setTestNow();
        parent::tearDown();
    }
}

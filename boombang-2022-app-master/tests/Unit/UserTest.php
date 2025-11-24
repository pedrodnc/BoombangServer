<?php

namespace Tests\Unit;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class UserTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test isWebUser() method returns true for web users.
     */
    public function test_is_web_user_returns_true_for_web_users()
    {
        $user = User::factory()->create([
            'account_type' => User::ACCOUNT_TYPE_WEB,
        ]);

        $this->assertTrue($user->isWebUser());
        $this->assertFalse($user->isLauncherUser());
        $this->assertFalse($user->isAdmin());
    }

    /**
     * Test isLauncherUser() method returns true for launcher users.
     */
    public function test_is_launcher_user_returns_true_for_launcher_users()
    {
        $user = User::factory()->create([
            'account_type' => User::ACCOUNT_TYPE_LAUNCHER,
        ]);

        $this->assertTrue($user->isLauncherUser());
        $this->assertFalse($user->isWebUser());
        $this->assertFalse($user->isAdmin());
    }

    /**
     * Test isAdmin() method returns true for admin users.
     */
    public function test_is_admin_returns_true_for_admin_users()
    {
        $user = User::factory()->create([
            'account_type' => User::ACCOUNT_TYPE_ADMIN,
        ]);

        $this->assertTrue($user->isAdmin());
        $this->assertFalse($user->isWebUser());
        $this->assertFalse($user->isLauncherUser());
    }

    /**
     * Test canTrade() method returns false for web users.
     */
    public function test_can_trade_returns_false_for_web_users()
    {
        $user = User::factory()->webUser()->create();

        $this->assertFalse($user->canTrade());
    }

    /**
     * Test canTrade() method returns true for launcher users.
     */
    public function test_can_trade_returns_true_for_launcher_users()
    {
        $user = User::factory()->launcherUser()->create();

        $this->assertTrue($user->canTrade());
    }

    /**
     * Test canTrade() method returns true for admin users.
     */
    public function test_can_trade_returns_true_for_admin_users()
    {
        $user = User::factory()->admin()->create();

        $this->assertTrue($user->canTrade());
    }

    /**
     * Test canUsePrivateChat() method returns false for web users.
     */
    public function test_can_use_private_chat_returns_false_for_web_users()
    {
        $user = User::factory()->webUser()->create();

        $this->assertFalse($user->canUsePrivateChat());
    }

    /**
     * Test canUsePrivateChat() method returns true for launcher users.
     */
    public function test_can_use_private_chat_returns_true_for_launcher_users()
    {
        $user = User::factory()->launcherUser()->create();

        $this->assertTrue($user->canUsePrivateChat());
    }

    /**
     * Test canUsePrivateChat() method returns true for admin users.
     */
    public function test_can_use_private_chat_returns_true_for_admin_users()
    {
        $user = User::factory()->admin()->create();

        $this->assertTrue($user->canUsePrivateChat());
    }

    /**
     * Test hasPremiumAccess() method returns false for regular web users.
     */
    public function test_has_premium_access_returns_false_for_regular_web_users()
    {
        $user = User::factory()->webUser()->create([
            'is_premium' => false,
        ]);

        $this->assertFalse($user->hasPremiumAccess());
    }

    /**
     * Test hasPremiumAccess() method returns true for premium web users.
     */
    public function test_has_premium_access_returns_true_for_premium_web_users()
    {
        $user = User::factory()->webUser()->premium()->create();

        $this->assertTrue($user->hasPremiumAccess());
    }

    /**
     * Test hasPremiumAccess() method returns true for launcher users.
     */
    public function test_has_premium_access_returns_true_for_launcher_users()
    {
        $user = User::factory()->launcherUser()->create([
            'is_premium' => false,
        ]);

        $this->assertTrue($user->hasPremiumAccess());
    }

    /**
     * Test hasPremiumAccess() method returns true for admin users.
     */
    public function test_has_premium_access_returns_true_for_admin_users()
    {
        $user = User::factory()->admin()->create([
            'is_premium' => false,
        ]);

        $this->assertTrue($user->hasPremiumAccess());
    }

    /**
     * Test hasSessionExpired() method returns false for users with no expiration.
     */
    public function test_has_session_expired_returns_false_for_users_with_no_expiration()
    {
        $user = User::factory()->webUser()->create([
            'session_expires_at' => null,
        ]);

        $this->assertFalse($user->hasSessionExpired());
    }

    /**
     * Test hasSessionExpired() method returns false for users with future expiration.
     */
    public function test_has_session_expired_returns_false_for_future_expiration()
    {
        $user = User::factory()->webUser()->create([
            'session_expires_at' => now()->addHours(2),
        ]);

        $this->assertFalse($user->hasSessionExpired());
    }

    /**
     * Test hasSessionExpired() method returns true for users with past expiration.
     */
    public function test_has_session_expired_returns_true_for_past_expiration()
    {
        $user = User::factory()->webUserExpired()->create();

        $this->assertTrue($user->hasSessionExpired());
    }

    /**
     * Test hasSessionExpired() method returns false for launcher users.
     */
    public function test_has_session_expired_returns_false_for_launcher_users()
    {
        $user = User::factory()->launcherUser()->create();

        $this->assertFalse($user->hasSessionExpired());
    }

    /**
     * Test hasSessionExpired() method returns false for admin users.
     */
    public function test_has_session_expired_returns_false_for_admin_users()
    {
        $user = User::factory()->admin()->create();

        $this->assertFalse($user->hasSessionExpired());
    }

    /**
     * Test extendSession() method extends session for web users.
     */
    public function test_extend_session_extends_session_for_web_users()
    {
        $user = User::factory()->webUser()->create([
            'session_expires_at' => now()->addHour(),
        ]);

        $originalExpiry = $user->session_expires_at;

        $user->extendSession(2);

        $user->refresh();

        $this->assertNotEquals($originalExpiry, $user->session_expires_at);
        $this->assertTrue($user->session_expires_at->greaterThan($originalExpiry));
    }

    /**
     * Test extendSession() method doesn't affect launcher users.
     */
    public function test_extend_session_doesnt_affect_launcher_users()
    {
        $user = User::factory()->launcherUser()->create([
            'session_expires_at' => null,
        ]);

        $user->extendSession(2);

        $user->refresh();

        $this->assertNull($user->session_expires_at);
    }

    /**
     * Test extendSession() method doesn't affect admin users.
     */
    public function test_extend_session_doesnt_affect_admin_users()
    {
        $user = User::factory()->admin()->create([
            'session_expires_at' => null,
        ]);

        $user->extendSession(2);

        $user->refresh();

        $this->assertNull($user->session_expires_at);
    }

    /**
     * Test extendSession() method with custom hours parameter.
     */
    public function test_extend_session_with_custom_hours()
    {
        $user = User::factory()->webUser()->create([
            'session_expires_at' => now(),
        ]);

        $user->extendSession(5);

        $user->refresh();

        // Session should be extended by approximately 5 hours
        $expectedTime = now()->addHours(5);
        $this->assertTrue($user->session_expires_at->greaterThan(now()->addHours(4)));
        $this->assertTrue($user->session_expires_at->lessThan(now()->addHours(6)));
    }

    /**
     * Test account type constants are defined correctly.
     */
    public function test_account_type_constants_are_defined()
    {
        $this->assertEquals('web', User::ACCOUNT_TYPE_WEB);
        $this->assertEquals('launcher', User::ACCOUNT_TYPE_LAUNCHER);
        $this->assertEquals('admin', User::ACCOUNT_TYPE_ADMIN);
    }

    /**
     * Test user factory creates web users by default.
     */
    public function test_factory_creates_web_users_by_default()
    {
        $user = User::factory()->create();

        $this->assertTrue($user->isWebUser());
    }

    /**
     * Test user model mass assignment protection.
     */
    public function test_user_model_fillable_attributes()
    {
        $user = User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
            'account_type' => User::ACCOUNT_TYPE_LAUNCHER,
            'is_premium' => true,
        ]);

        $this->assertEquals('Test User', $user->name);
        $this->assertEquals('test@example.com', $user->email);
        $this->assertEquals(User::ACCOUNT_TYPE_LAUNCHER, $user->account_type);
        $this->assertTrue($user->is_premium);
    }

    /**
     * Test user model casts attributes correctly.
     */
    public function test_user_model_casts_attributes()
    {
        $user = User::factory()->create([
            'is_premium' => true,
            'session_expires_at' => now()->addHours(2),
        ]);

        $this->assertIsBool($user->is_premium);
        $this->assertInstanceOf(\Illuminate\Support\Carbon::class, $user->session_expires_at);
    }

    /**
     * Test user model hides sensitive attributes.
     */
    public function test_user_model_hides_sensitive_attributes()
    {
        $user = User::factory()->create();

        $array = $user->toArray();

        $this->assertArrayNotHasKey('password', $array);
        $this->assertArrayNotHasKey('remember_token', $array);
    }

    /**
     * Test multiple account type checks.
     */
    public function test_multiple_account_type_checks()
    {
        $webUser = User::factory()->webUser()->create();
        $launcherUser = User::factory()->launcherUser()->create();
        $adminUser = User::factory()->admin()->create();

        // Web user checks
        $this->assertTrue($webUser->isWebUser());
        $this->assertFalse($webUser->isLauncherUser());
        $this->assertFalse($webUser->isAdmin());

        // Launcher user checks
        $this->assertFalse($launcherUser->isWebUser());
        $this->assertTrue($launcherUser->isLauncherUser());
        $this->assertFalse($launcherUser->isAdmin());

        // Admin user checks
        $this->assertFalse($adminUser->isWebUser());
        $this->assertFalse($adminUser->isLauncherUser());
        $this->assertTrue($adminUser->isAdmin());
    }
}

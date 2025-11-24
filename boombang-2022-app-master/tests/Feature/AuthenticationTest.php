<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Hash;
use Tests\TestCase;

class AuthenticationTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test login with valid credentials.
     */
    public function test_login_with_valid_credentials()
    {
        $user = User::factory()->create([
            'name' => 'testuser',
            'password' => Hash::make('password123'),
        ]);

        $response = $this->postJson('/webapi/login', [
            'name' => 'testuser',
            'password' => 'password123',
        ]);

        $response->assertStatus(200)
            ->assertJson(['success' => true]);
        $this->assertAuthenticatedAs($user);
    }

    /**
     * Test login with invalid username.
     */
    public function test_login_with_invalid_email()
    {
        User::factory()->create([
            'name' => 'testuser',
            'password' => Hash::make('password123'),
        ]);

        $response = $this->postJson('/webapi/login', [
            'name' => 'wronguser',
            'password' => 'password123',
        ]);

        $response->assertStatus(200)
            ->assertJson(['success' => false]);
        $this->assertGuest();
    }

    /**
     * Test login with invalid password.
     */
    public function test_login_with_invalid_password()
    {
        User::factory()->create([
            'name' => 'testuser',
            'password' => Hash::make('password123'),
        ]);

        $response = $this->postJson('/webapi/login', [
            'name' => 'testuser',
            'password' => 'wrongpassword',
        ]);

        $response->assertStatus(200)
            ->assertJson(['success' => false]);
        $this->assertGuest();
    }

    /**
     * Test login with missing credentials.
     */
    public function test_login_with_missing_credentials()
    {
        $response = $this->postJson('/webapi/login', []);

        $response->assertStatus(400);
        $this->assertGuest();
    }

    /**
     * Test logout functionality.
     */
    public function test_logout_functionality()
    {
        $user = User::factory()->create();

        $this->actingAs($user);
        $this->assertAuthenticated();

        auth()->logout();

        $this->assertGuest();
    }

    /**
     * Test authenticated route access.
     */
    public function test_authenticated_route_access()
    {
        $user = User::factory()->webUser()->create();

        $response = $this->actingAs($user)
            ->get('/game');

        $response->assertStatus(200);
    }

    /**
     * Test guest cannot access authenticated routes.
     */
    public function test_guest_cannot_access_authenticated_routes()
    {
        $response = $this->get('/game');

        $response->assertRedirect('/');
    }

    /**
     * Test guest can access login page.
     */
    public function test_guest_can_access_login_page()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    /**
     * Test login creates session for web users.
     */
    public function test_login_creates_session_for_web_users()
    {
        $webUser = User::factory()->create([
            'name' => 'webuser',
            'password' => Hash::make('password123'),
            'account_type' => User::ACCOUNT_TYPE_WEB,
            'session_expires_at' => null,
        ]);

        $response = $this->postJson('/webapi/login', [
            'name' => 'webuser',
            'password' => 'password123',
        ]);

        $response->assertStatus(200)
            ->assertJson(['success' => true]);

        // We just verify the user is authenticated
        $this->assertAuthenticatedAs($webUser);
    }

    /**
     * Test launcher user login doesn't create session expiration.
     */
    public function test_launcher_user_login_has_no_session_expiration()
    {
        $launcherUser = User::factory()->create([
            'name' => 'launcheruser',
            'password' => Hash::make('password123'),
            'account_type' => User::ACCOUNT_TYPE_LAUNCHER,
            'session_expires_at' => null,
        ]);

        $response = $this->postJson('/webapi/login', [
            'name' => 'launcheruser',
            'password' => 'password123',
        ]);

        $response->assertStatus(200)
            ->assertJson(['success' => true]);

        $launcherUser->refresh();
        $this->assertNull($launcherUser->session_expires_at);
    }

    /**
     * Test admin user login works correctly.
     */
    public function test_admin_user_login_works_correctly()
    {
        $adminUser = User::factory()->create([
            'name' => 'adminuser',
            'password' => Hash::make('password123'),
            'account_type' => User::ACCOUNT_TYPE_ADMIN,
        ]);

        $response = $this->postJson('/webapi/login', [
            'name' => 'adminuser',
            'password' => 'password123',
        ]);

        $response->assertStatus(200)
            ->assertJson(['success' => true]);
        $this->assertAuthenticatedAs($adminUser);
    }

    /**
     * Test login with name validation.
     */
    public function test_login_validates_email_format()
    {
        $response = $this->postJson('/webapi/login', [
            'name' => 'ab', // Too short (min 4 chars for password)
            'password' => 'pas',
        ]);

        $response->assertStatus(400);
        $this->assertGuest();
    }

    /**
     * Test multiple failed login attempts.
     */
    public function test_multiple_failed_login_attempts()
    {
        User::factory()->create([
            'name' => 'testuser',
            'password' => Hash::make('password123'),
        ]);

        for ($i = 0; $i < 3; $i++) {
            $response = $this->postJson('/webapi/login', [
                'name' => 'testuser',
                'password' => 'wrongpassword',
            ]);

            $response->assertStatus(200)
                ->assertJson(['success' => false]);
            $this->assertGuest();
        }
    }

    /**
     * Test successful login after failed attempts.
     */
    public function test_successful_login_after_failed_attempts()
    {
        $user = User::factory()->create([
            'name' => 'testuser',
            'password' => Hash::make('password123'),
        ]);

        // Failed attempt
        $this->postJson('/webapi/login', [
            'name' => 'testuser',
            'password' => 'wrongpassword',
        ])->assertStatus(200)
            ->assertJson(['success' => false]);

        // Successful attempt
        $response = $this->postJson('/webapi/login', [
            'name' => 'testuser',
            'password' => 'password123',
        ]);

        $response->assertStatus(200)
            ->assertJson(['success' => true]);
        $this->assertAuthenticatedAs($user);
    }
}

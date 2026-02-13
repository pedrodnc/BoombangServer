<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Hash;
use Tests\TestCase;

class LoginControllerTest extends TestCase
{
    use RefreshDatabase;

    public function test_index_returns_view_when_not_authenticated()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
        $response->assertViewIs('pages.LoginPage');
    }

    public function test_index_redirects_when_authenticated()
    {
        $user = User::factory()->create();

        $response = $this->actingAs($user)->get('/');

        $response->assertRedirect(route('game'));
    }

    public function test_login_validates_input()
    {
        $response = $this->postJson(route('webapi.login'), []);

        $response->assertStatus(400);
        $response->assertJson([
            'success' => false,
            'message' => 'Invalid input',
        ]);
    }

    public function test_login_validates_password_length()
    {
        $response = $this->postJson(route('webapi.login'), [
             'name' => 'testuser',
             'password' => '123'
        ]);

        $response->assertStatus(400);
        $response->assertJson([
            'success' => false,
            'message' => 'Invalid input',
        ]);
    }

    public function test_login_success()
    {
        $user = User::factory()->create([
            'name' => 'testuser',
            'password' => Hash::make('password123'),
        ]);

        $response = $this->postJson(route('webapi.login'), [
            'name' => 'testuser',
            'password' => 'password123',
        ]);

        $response->assertStatus(200);
        $response->assertJson(['success' => true]);
        $this->assertAuthenticatedAs($user);
    }

    public function test_login_failure_wrong_password()
    {
        $user = User::factory()->create([
            'name' => 'testuser',
            'password' => Hash::make('password123'),
        ]);

        $response = $this->postJson(route('webapi.login'), [
            'name' => 'testuser',
            'password' => 'wrongpassword',
        ]);

        $response->assertStatus(200);
        $response->assertJson(['success' => false]);
        $this->assertGuest();
    }

    public function test_login_failure_user_not_found()
    {
        $response = $this->postJson(route('webapi.login'), [
            'name' => 'nonexistent',
            'password' => 'password123',
        ]);

        $response->assertStatus(200);
        $response->assertJson(['success' => false]);
        $this->assertGuest();
    }
}

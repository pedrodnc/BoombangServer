<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class LoginControllerTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test that an authenticated user is redirected to the game page.
     *
     * @return void
     */
    public function test_authenticated_user_is_redirected_to_game()
    {
        $user = User::factory()->create();

        $response = $this->actingAs($user)->get(route('login'));

        $response->assertRedirect(route('game'));
    }

    /**
     * Test that an unauthenticated user sees the login page.
     *
     * @return void
     */
    public function test_unauthenticated_user_sees_login_page()
    {
        $response = $this->get(route('login'));

        $response->assertStatus(200);
        $response->assertViewIs('pages.LoginPage');
    }
}

<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class GameControllerTest extends TestCase
{
    use RefreshDatabase;

    /**
     * Test that an unauthenticated user is redirected to the login page.
     *
     * @return void
     */
    public function test_unauthenticated_user_is_redirected_to_login()
    {
        $response = $this->get(route('game'));

        $response->assertRedirect(route('login'));
    }

    /**
     * Test that an authenticated user can access the game page.
     *
     * @return void
     */
    public function test_authenticated_user_can_access_game_page()
    {
        $user = User::factory()->create();

        $response = $this->actingAs($user)->get(route('game'));

        $response->assertStatus(200);
        $response->assertViewIs('pages.GamePage');
    }
}

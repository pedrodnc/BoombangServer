<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Hash;
use Tests\TestCase;
use App\Models\User;

class HashUserPasswordsTest extends TestCase
{
    use RefreshDatabase;

    public function test_hash_user_passwords_command_performance()
    {
        // Generate 500 users with plain text passwords
        // Using create() on a collection is faster than creating one by one if factory supports it,
        // but factory()->count()->create() does batch inserts usually? No, Eloquent factories loop.
        // For 500 it might take a few seconds.
        User::factory()->count(500)->state(function (array $attributes) {
            return [
                'password' => 'plain_password_123',
            ];
        })->create();

        // Create 50 users with already hashed passwords
        User::factory()->count(50)->create();

        $this->artisan('users:hash-passwords')
            ->expectsOutput('Starting password migration...')
            ->expectsOutput('Password migration completed! Updated 500 users.')
            ->assertExitCode(0);

        // Verify all passwords are hashed
        // In SQLite, LIKE is case-insensitive by default depending on PRAGMA,
        // but $2y$ is specific enough.
        // Actually, bcrypt hashes are 60 chars.
        $this->assertEquals(0, User::where('password', 'not like', '$2y$%')->count(), 'Found unhashed passwords');
        $this->assertEquals(550, User::count(), 'Total users count mismatch');
    }
}

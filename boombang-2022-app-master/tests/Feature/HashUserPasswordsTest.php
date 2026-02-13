<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Hash;
use Tests\TestCase;

class HashUserPasswordsTest extends TestCase
{
    use RefreshDatabase;

    /** @test */
    public function it_hashes_plain_text_passwords()
    {
        // Arrange
        $plainPassword = 'plain-text-password';
        $user = User::factory()->create([
            'password' => $plainPassword,
        ]);

        // Act
        $this->artisan('users:hash-passwords')
            ->expectsOutput('Starting password migration...')
            ->expectsOutput("Updated password for user: {$user->name}")
            ->expectsOutput('Password migration completed! Updated 1 users.')
            ->assertExitCode(0);

        // Assert
        $user->refresh();
        $this->assertStringStartsWith('$2y$', $user->password);
        $this->assertTrue(Hash::check($plainPassword, $user->password));
    }

    /** @test */
    public function it_skips_already_hashed_passwords()
    {
        // Arrange
        $hashedPassword = Hash::make('hashed-password');
        $user = User::factory()->create([
            'password' => $hashedPassword,
        ]);

        // Act
        $this->artisan('users:hash-passwords')
            ->expectsOutput('Starting password migration...')
            ->expectsOutput('Password migration completed! Updated 0 users.')
            ->assertExitCode(0);

        // Assert
        $user->refresh();
        $this->assertEquals($hashedPassword, $user->password);
    }

    /** @test */
    public function it_handles_mixed_users()
    {
        // Arrange
        $plainPassword = 'plain-text-password';
        $user1 = User::factory()->create([
            'password' => $plainPassword,
        ]);

        $hashedPassword = Hash::make('hashed-password');
        $user2 = User::factory()->create([
            'password' => $hashedPassword,
        ]);

        // Act
        $this->artisan('users:hash-passwords')
            ->expectsOutput('Starting password migration...')
            ->expectsOutput("Updated password for user: {$user1->name}")
            ->expectsOutput('Password migration completed! Updated 1 users.')
            ->assertExitCode(0);

        // Assert
        $user1->refresh();
        $this->assertStringStartsWith('$2y$', $user1->password);
        $this->assertTrue(Hash::check($plainPassword, $user1->password));

        $user2->refresh();
        $this->assertEquals($hashedPassword, $user2->password);
    }
}

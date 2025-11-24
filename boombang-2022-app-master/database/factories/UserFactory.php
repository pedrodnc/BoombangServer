<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
            'account_type' => User::ACCOUNT_TYPE_WEB,
            'session_expires_at' => null,
            'is_premium' => false,
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }

    /**
     * Create a web user with active session.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function webUser()
    {
        return $this->state(function (array $attributes) {
            return [
                'account_type' => User::ACCOUNT_TYPE_WEB,
                'session_expires_at' => now()->addHours(2),
                'is_premium' => false,
            ];
        });
    }

    /**
     * Create a web user with expired session.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function webUserExpired()
    {
        return $this->state(function (array $attributes) {
            return [
                'account_type' => User::ACCOUNT_TYPE_WEB,
                'session_expires_at' => now()->subHour(),
                'is_premium' => false,
            ];
        });
    }

    /**
     * Create a launcher user.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function launcherUser()
    {
        return $this->state(function (array $attributes) {
            return [
                'account_type' => User::ACCOUNT_TYPE_LAUNCHER,
                'session_expires_at' => null,
                'is_premium' => false,
            ];
        });
    }

    /**
     * Create an admin user.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function admin()
    {
        return $this->state(function (array $attributes) {
            return [
                'account_type' => User::ACCOUNT_TYPE_ADMIN,
                'session_expires_at' => null,
                'is_premium' => false,
            ];
        });
    }

    /**
     * Create a premium user.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function premium()
    {
        return $this->state(function (array $attributes) {
            return [
                'is_premium' => true,
            ];
        });
    }
}

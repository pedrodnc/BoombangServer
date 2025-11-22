<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class HashUserPasswords extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'users:hash-passwords';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Hash all plain text passwords in the database';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $this->info('Starting password migration...');

        // Get all users
        $users = User::all();
        $updated = 0;

        foreach ($users as $user) {
            // Check if password is already hashed (bcrypt hashes start with $2y$)
            if (!str_starts_with($user->password, '$2y$')) {
                $plainPassword = $user->password;

                // Hash the password
                $user->password = Hash::make($plainPassword);
                $user->save();

                $updated++;
                $this->info("Updated password for user: {$user->name}");
            }
        }

        $this->info("Password migration completed! Updated {$updated} users.");

        if ($updated > 0) {
            $this->warn('IMPORTANT: Make sure to communicate new password requirements to users.');
        }

        return 0;
    }
}

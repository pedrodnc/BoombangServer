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

        $updated = 0;

        // Process users in chunks to avoid memory issues with large datasets
        User::where('password', 'not like', '$2y$%')->chunkById(100, function ($users) use (&$updated) {
            foreach ($users as $user) {
                // Hash the password
                $user->password = Hash::make($user->password);
                $user->save();

                $updated++;
                $this->info("Updated password for user: {$user->name}");
            }
        });

        $this->info("Password migration completed! Updated {$updated} users.");

        if ($updated > 0) {
            $this->warn('IMPORTANT: Make sure to communicate new password requirements to users.');
        }

        return 0;
    }
}

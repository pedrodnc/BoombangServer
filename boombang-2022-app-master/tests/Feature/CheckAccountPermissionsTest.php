<?php

namespace Tests\Feature;

use App\Http\Middleware\CheckAccountPermissions;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Route;
use Tests\TestCase;
use Illuminate\Support\Facades\DB;

class CheckAccountPermissionsTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();

        Route::get('/benchmark-middleware', function () {
            return 'ok';
        })->middleware(CheckAccountPermissions::class . ':any_permission_for_test');
    }

    public function test_it_performs_db_write_on_every_request_for_web_users()
    {
        // Create a user who is a web user
        $user = User::factory()->create([
            'account_type' => User::ACCOUNT_TYPE_WEB,
            'session_expires_at' => now()->addHour(),
        ]);

        $this->actingAs($user);

        // First request - this should trigger an update
        $this->travel(1)->seconds();
        DB::enableQueryLog();
        $this->get('/benchmark-middleware');
        $queries1 = DB::getQueryLog();
        DB::flushQueryLog();

        // Check if there is an update query
        $hasUpdate1 = false;
        foreach ($queries1 as $query) {
            if (str_contains(strtolower($query['query']), 'update')) {
                $hasUpdate1 = true;
                break;
            }
        }
        $this->assertTrue($hasUpdate1, "Expected an update query in the first request");

        // Second request - this currently triggers another update
        $this->travel(1)->seconds();
        DB::enableQueryLog();
        $this->get('/benchmark-middleware');
        $queries2 = DB::getQueryLog();
        DB::flushQueryLog();

        // Check if there is an update query
        $hasUpdate2 = false;
        foreach ($queries2 as $query) {
            if (str_contains(strtolower($query['query']), 'update')) {
                $hasUpdate2 = true;
                break;
            }
        }

        $this->assertFalse($hasUpdate2, "Did NOT expect an update query in the second request (optimized behavior)");

        // Third request - 31 minutes later - this should trigger an update
        $this->travel(31)->minutes();
        DB::enableQueryLog();
        $this->get('/benchmark-middleware');
        $queries3 = DB::getQueryLog();
        DB::flushQueryLog();

        // Check if there is an update query
        $hasUpdate3 = false;
        foreach ($queries3 as $query) {
            if (str_contains(strtolower($query['query']), 'update')) {
                $hasUpdate3 = true;
                break;
            }
        }
        $this->assertTrue($hasUpdate3, "Expected an update query in the third request (after 30 mins)");
    }
}

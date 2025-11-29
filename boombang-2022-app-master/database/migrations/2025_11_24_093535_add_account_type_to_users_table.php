<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAccountTypeToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->enum('account_type', ['web', 'launcher', 'admin'])->default('web')->after('password');
            $table->timestamp('session_expires_at')->nullable()->after('account_type');
            $table->boolean('is_premium')->default(false)->after('session_expires_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['account_type', 'session_expires_at', 'is_premium']);
        });
    }
}

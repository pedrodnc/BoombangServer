<?php

namespace Tests;

use Illuminate\Contracts\Console\Kernel;
use Laravel\Sanctum\Sanctum;

trait CreatesApplication
{
    /**
     * Creates the application.
     *
     * @return \Illuminate\Foundation\Application
     */
    public function createApplication()
    {
        $app = require __DIR__.'/../bootstrap/app.php';

        if (class_exists(Sanctum::class)) {
            Sanctum::ignoreMigrations();
        }

        $app->make(Kernel::class)->bootstrap();

        return $app;
    }
}

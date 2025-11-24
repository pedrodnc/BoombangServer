<?php

namespace App\Http\Controllers\Pages;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class GameController extends Controller
{
    /**
     * Display the game page.
     *
     * Authentication and permissions are handled by middleware.
     * The account.permissions middleware will:
     * - Check if session has expired for web users
     * - Extend session for web users on each request
     * - Provide user data to the view
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        // No need for manual auth check - handled by 'auth' middleware
        // User access level (web/launcher/admin) is available via $request->user()
        return view('pages.GamePage');
    }
}

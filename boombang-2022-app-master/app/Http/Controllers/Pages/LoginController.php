<?php

namespace App\Http\Controllers\Pages;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    public function index(Request $request){
        if (Auth::check()){
            return redirect()->route('game');
        }
        return view('pages.LoginPage');
    }
    
    public function login(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'password' => 'required|string|min:4'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Invalid input'
            ], 400);
        }

        $response = [
            'success' => false
        ];

        $user = User::where('name', $request->name)->first();

        if ($user && Hash::check($request->password, $user->password)){
            $response = [
                'success' => true
            ];
            Auth::login($user);
        }

        return response()->json($response);
    }
}

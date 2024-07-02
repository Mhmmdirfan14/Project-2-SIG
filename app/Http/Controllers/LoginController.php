<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login() {
        return view('frontend.login');
    }

    public function postlogin(Request $request)
    {
        // Validasi input
        $request->validate([
            'name' => 'required|string',
            'password' => 'required|string',
        ]);

        // Cek kredensial
        $credentials = $request->only('name', 'password');

        if (Auth::attempt($credentials)) {
            // Autentikasi berhasil
            return redirect()->intended('backend');
        }

        // Autentikasi gagal
        return redirect()->route('login')->with('error', 'Login failed');
    }
}

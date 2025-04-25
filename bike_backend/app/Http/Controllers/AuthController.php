<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Carbon\Carbon;

use App\Mail\RegistrationConfirmationMail;
use App\Mail\NewUserRegisteredMail;
use Illuminate\Support\Facades\Mail;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        // Validáljuk a regisztrációs adatokat, most már a username-t is
        $validator = Validator::make($request->all(), [
            'name'      => 'required|string|max:255',
            'username'  => 'required|string|max:255|',
            'email'     => 'required|string|email|max:255|',
            'birthdate' => 'required|date',
            'password'  => 'required|string|min:8|confirmed'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        
        // 2) Felhasználónév egyediségének kézi ellenőrzése
         if (User::where('username', $request->username)->exists()) {
        return response()->json([
            'username' => ['Ez a felhasználónév már foglalt.']
        ], 422);
        
        }
        
        // 3) E‑mail egyediségének kézi ellenőrzése
        if (User::where('email', $request->email)->exists()) {
        return response()->json([
            'email' => ['Ezen az e‑mail címen már van regisztrált felhasználó.']
        ], 422);
         
        }
        
        
         // 4) Korhatár ellenőrzése
        $birthDate = Carbon::parse($request->birthdate);
        $age = $birthDate->diffInYears(Carbon::now());
        if ($age < 18) {
            return response()->json(['birthdate' => ['A regisztrációhoz legalább 18 évesnek kell lenned.']], 422);
        }
        
        // Token generálás
        $token = Str::random(80);

        // Új felhasználó létrehozása a username mezővel is
        $user = User::create([
            'name'      => $request->name,
            'username'  => $request->username, 
            'email'     => $request->email,
            'birthdate' => $request->birthdate,
            'password'  => Hash::make($request->password),
            'api_token' => $token,
        ]);

        // 5) User‑értesítés

        Mail::to($user->email)
            ->send(new RegistrationConfirmationMail($user));

        // 6) Admin‑értesítés
        Mail::to(config('mail.admin_address'))
            ->send(new NewUserRegisteredMail($user));
        
        
        return response()->json(['user' => $user, 'api_token' => $token], 201);
    }

    public function login(Request $request)
    {
        // 1) Validálás
        $data = $request->validate([
            'login'    => 'required|string',  // lehet email vagy username
            'password' => 'required|string',
        ]);

        // 2) User keresése
        $user = User::where('email', $data['login'])
                    ->orWhere('username', $data['login'])
                    ->first();

        // 3) Hitelesítés
        if (! $user || ! Hash::check($data['password'], $user->password)) {
            return response()->json(['error' => 'Érvénytelen felhasználónév vagy jelszó'], 401);
        }

        // 4) Token generálása ha még nincs
        if (! $user->api_token) {
            $user->api_token = Str::random(80);
            $user->save();
        }

        // 5) Admin‐flag beállítása az env‑ben definiált admin email alapján
        $isAdmin = $user->email === config('mail.admin_address');

        // 6) Válasz a frontendnek
        return response()->json([
            'user'      => $user,
            'api_token' => $user->api_token,
            'is_admin'  => $isAdmin,
        ], 200);
    }
}




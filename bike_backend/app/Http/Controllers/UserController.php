<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    // Felhasználók listázása
    public function index(Request $request)
    {
        $users = User::all(); // Vagy használj paginate()-t, ha sok adat van
        return response()->json($users);
    }

    // Felhasználó törlése
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return response()->json(['message' => 'Felhasználó sikeresen törölve']);
    }
}
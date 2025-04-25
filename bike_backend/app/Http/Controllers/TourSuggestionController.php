<?php

namespace App\Http\Controllers;

use App\Http\Requests\TourSuggestionRequest;
use App\Models\TourSuggestion;
use Illuminate\Http\JsonResponse;

class TourSuggestionController extends Controller
{
    /**
     * Felhasználói javaslat mentése az adatbázisba.
     */
    public function store(TourSuggestionRequest $request): JsonResponse
    {
        // Validált, snake_case mezők a requestből
        $data = $request->validated();

        $data['user_id'] = $request->user()->id;
        
        
        // Mentés
        $suggestion = TourSuggestion::create($data);

        return response()->json([
            'status' => 'success',
            'data'   => $suggestion
        ], 201);
    }

    /**
     * Adminnak: összes javaslat lekérése.
     */
    public function index(): JsonResponse
    {
        

        $all = TourSuggestion::with('user')
         ->orderBy('created_at', 'desc')
         ->get();

        return response()->json($all, 200);
    }

    public function destroy($id)
    {
        $suggestion = TourSuggestion::find($id);
        if (! $suggestion) {
            return response()->json(['message' => 'Not found.'], 404);
        }
        $suggestion->delete();
        return response()->json(null, 204);
    }

}
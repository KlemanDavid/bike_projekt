<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BikeTour;
use Illuminate\Support\Facades\DB;

class TourController extends Controller
{
    // Szűrőadatok lekérése: egyedi értékeket ad vissza a dropdown menük számára
    public function getTourFilters()
    {
        $locations = DB::table('bike_tours')
                       ->selectRaw('DISTINCT(tour_country) as tour_country')
                       ->pluck('tour_country');
        $times = BikeTour::select('tour_time')
            ->groupBy('tour_time')
            ->pluck('tour_time');
        $difficulties = BikeTour::select(DB::raw('TRIM(LOWER(difficulty)) as difficulty'))
            ->groupBy('difficulty')
            ->pluck('difficulty');
        $bikeTypes = BikeTour::select(DB::raw('TRIM(LOWER(bike_type)) as bike_type'))
            ->groupBy('bike_type')
            ->pluck('bike_type');

        return response()->json([
            'locations'   => $locations,
            'times'       => $times,
            'difficulties'=> $difficulties,
            'bikeTypes'   => $bikeTypes,
        ]);
    }

    // Túrák listázása (GET)
    public function index(Request $request)
    {
        $query = BikeTour::query();

        if ($request->filled('tour_country')) {
            $query->where('tour_country', $request->tour_country);
        }
        if ($request->filled('tour_time')) {
            $query->where('tour_time', $request->tour_time);
        }
        if ($request->filled('difficulty')) {
            $query->where('difficulty', $request->difficulty);
        }
        if ($request->filled('bike_type')) {
            $query->where('bike_type', $request->bike_type);
        }

        $tours = $query->get();

        return response()->json($tours);
    }

    // Új túra létrehozása (POST)
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'tour_country'      => 'required|string',
            'tour_time'         => 'required|string',
            'difficulty'        => 'required|string',
            'bike_type'         => 'required|string',
            'route_name'        => 'required|string',
            'tour_description'  => 'nullable|string',
            'bike_pic'          => 'nullable|string',
            'backgr_pic'        => 'nullable|string',
                   
        ]);

        if (!isset($validatedData['calories'])) {
            $validatedData['calories'] = 0;
        }

    $tour = BikeTour::create($validatedData);

    return response()->json($tour, 201);
    }

    // Meglévő túra frissítése (PUT)
    public function update(Request $request, $id)
    {
        $tour = BikeTour::findOrFail($id);

        $validatedData = $request->validate([
            'tour_country'      => 'sometimes|required|string',
            'tour_time'         => 'sometimes|required|string',
            'difficulty'        => 'sometimes|required|string',
            'bike_type'         => 'sometimes|required|string',
            'route_name'        => 'sometimes|required|string',
            'tour_description'  => 'nullable|string',
            'bike_pic'          => 'nullable|string',
            'backgr_pic'        => 'nullable|string',
        ]);

        if (!isset($validatedData['calories'])) {
            $validatedData['calories'] = 0;
        }
        
        $tour->update($validatedData);

        return response()->json($tour);
    }

    // Túra törlése (DELETE)
    public function destroy($id)
    {
        $tour = BikeTour::findOrFail($id);
        $tour->delete();

        return response()->json(['message' => 'Tour deleted successfully']);
    }
}
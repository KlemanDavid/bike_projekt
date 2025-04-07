<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TourController;

Route::get('tours', [TourController::class, 'index']);
Route::get('tours/filters', [TourController::class, 'getTourFilters']);
Route::post('tours', [TourController::class, 'store']);

// Új útvonalak a frissítéshez és törléshez:
Route::put('tours/{id}', [TourController::class, 'update']);
Route::delete('tours/{id}', [TourController::class, 'destroy']);

Route::get('counties', [TourController::class, 'getUniqueCounties']);
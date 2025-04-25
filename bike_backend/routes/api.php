<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TourController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TourSuggestionController;

Route::get('tours', [TourController::class, 'index']);
Route::get('tours/filters', [TourController::class, 'getTourFilters']);
Route::post('tours', [TourController::class, 'store']);

// Új útvonalak a frissítéshez és törléshez:
Route::put('tours/{id}', [TourController::class, 'update']);
Route::delete('tours/{id}', [TourController::class, 'destroy']);

Route::get('counties', [TourController::class, 'getUniqueCounties']);

Route::post('register', [AuthController::class, 'register']);

Route::post('/login', [AuthController::class, 'login']);

Route::get('/users', [UserController::class, 'index']);

Route::delete('/users/{id}', [UserController::class, 'destroy']);

Route::group(['middleware'=>'auth:api'], function(){
    Route::post('/tour-suggestions', [TourSuggestionController::class,'store']);
    Route::get('/tour-suggestions',  [TourSuggestionController::class,'index']);
    Route::delete('/tour-suggestions/{id}', [TourSuggestionController::class, 'destroy']);

});

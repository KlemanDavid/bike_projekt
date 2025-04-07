<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BikeTour extends Model
{
    use HasFactory;

    protected $table = 'bike_tours';

    public $timestamps = false;

    protected $fillable = [
        'tour_country',
        'tour_time',
        'difficulty',
        'bike_type',
        'route_name',
        'tour_description',
        'bike_pic',
        'backgr_pic',
        'calories'
    ];
}
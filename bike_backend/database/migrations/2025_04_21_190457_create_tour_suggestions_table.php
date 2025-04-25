<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTourSuggestionsTable extends Migration
{
    public function up()
    {
        Schema::create('tour_suggestions', function (Blueprint $table) {
            $table->id();
            $table->string('tour_country');
            $table->string('tour_time');
            $table->string('difficulty');
            $table->string('bike_type');
            $table->string('route_name');
            $table->text('tour_description');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('tour_suggestions');
    }
}
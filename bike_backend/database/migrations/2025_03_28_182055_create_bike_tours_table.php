<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
{
    if (!Schema::hasTable('bike_tours')) {
        Schema::create('bike_tours', function (Blueprint $table) {
            $table->id();
            $table->string('tour_country'); 
            $table->integer('tour_time');      
            $table->string('difficulty');      
            $table->string('bike_type');       
            $table->string('route_name');     
            $table->integer('calories');       
            $table->timestamps();
        });
    }

}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bike_tours');
    }
};


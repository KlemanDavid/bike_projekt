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
            $table->string('tour_country');  // Túra helye (megye vagy régió)
            $table->integer('tour_time');      // Túra időtartama órában
            $table->string('difficulty');      // Nehézségi szint
            $table->string('bike_type');       // Bicikli típusa
            $table->string('route_name');      // Pálya neve
            $table->integer('calories');       // Elégetett energia (kcal)
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


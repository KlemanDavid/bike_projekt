<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('bike_tours', function (Blueprint $table) {
            $table->text('tour_description')->nullable()->after('bike_type');
            $table->string('bike_pic')->nullable()->after('tour_description');
            $table->string('backgr_pic')->nullable()->after('bike_pic');
        });
    }
    
    public function down(): void
    {
        Schema::table('bike_tours', function (Blueprint $table) {
            $table->dropColumn(['tour_description', 'bike_pic', 'backgr_pic']);
        });
    }
};
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
        Schema::create('highwayfreights', function (Blueprint $table) {
            $table->id();
            $table->string('name'); 
            $table->string('company'); 
            $table->string('vehicle_id'); 
            $table->string('arrival_location'); 
            $table->string('insurance_number'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('highwayfreights');
    }
};

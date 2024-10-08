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
        Schema::create('airfreights', function (Blueprint $table) {
            $table->id();
            $table->string('name'); 
            $table->string('company_name'); 
            $table->string('flight_number'); 
            $table->string('arrival_airport_name'); 
            $table->string('insurance_number'); 

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('airfreights');
    }
};

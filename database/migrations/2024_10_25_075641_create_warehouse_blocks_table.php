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
        Schema::create('warehouse_blocks', function (Blueprint $table) {
            $table->id();
            $table->string('warehouse_id');
            $table->string('name');
            $table->float('width'); 
            $table->float('height'); 
            $table->float('depth'); 
            $table->string('location'); 
            $table->text('note')->nullable(); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('warehouse_blocks');
    }
};

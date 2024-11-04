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
        Schema::create('cargotracks', function (Blueprint $table) {
            $table->id();
            $table->string('status');
            $table->text('note')->nullable();
            $table->string('location');
            $table->timestamp('location_time'); 
            $table->decimal('lat_id', 10, 7);
            $table->decimal('long_id', 10, 7);
            $table->string('recived_by')->nullable();
            $table->unsignedBigInteger('warehouse_id'); 
            $table->unsignedBigInteger('warehouse_block_id'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cargotracks');
    }
};

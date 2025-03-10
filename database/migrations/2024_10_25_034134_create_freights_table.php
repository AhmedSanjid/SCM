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
        Schema::create('freights', function (Blueprint $table) {
            $table->id();
            $table->string('customer_id')->constrained();
            $table->string('contact_no'); 
            $table->string('email', 255);
            $table->string('address', 255);
            $table->string('item', 255);
            $table->string('shipment_type', 50);
            $table->dateTime('pickup_time');
            $table->dateTime('delivery_time');
            $table->integer('total_qty', 11);
            $table->string('pickup_location', 255);
            $table->string('delivery_location', 255);
            $table->foreignId('transport_type_id')->constrained();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('freights');
    }
};

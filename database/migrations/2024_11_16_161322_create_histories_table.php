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
        Schema::create('histories', function (Blueprint $table) {
            $table->id();
            $table->string('company_name');
            $table->string('email');
            $table->date('shipment_date');
            $table->string('cargo_type');
            $table->string('shipment_country');
            $table->string('warehouse_name');
            $table->decimal('cost', 10, 2);
            $table->string('shipment_status');
            $table->string('tracking_number')->unique();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('histories');
    }
};

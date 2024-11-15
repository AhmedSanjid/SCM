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
        Schema::create('alerts', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('contact_no'); 
            $table->string('email'); 
            $table->string('location');
            $table->enum('freight_type', ['Air', 'Sailing', 'Highway']); 
            $table->enum('alert_type', [
                'Order', 'Inventory', 'Transportation', 'Warehouse', 'Supply', 'Customer Service', 'Compliance', 
                'Transaction', 'Financial', 'Environmental', 'Custom', 'Security', 'Quality Control', 
                'Human Resources', 'Risk Management', 'Facility Management']); 
            $table->text('status'); 
            $table->time('time'); 
            $table->date('date'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('alerts');
    }
};

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Insurance extends Model
{
    use HasFactory;
    protected $fillable=['name', 'company_name', 'product_name', 'weight', 'destination', 'bank_name', 'cargo_serial_number', 'claim_period'];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Airfreight extends Model
{
    use HasFactory;
    protected $fillable=['name', 'company_name','flight_number','arrival_airport_name','insurance_number'];
}

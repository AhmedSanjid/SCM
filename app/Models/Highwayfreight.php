<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Highwayfreight extends Model
{
    use HasFactory;
    protected $fillable=['name', 'company_name','vehicle_id','arrival_location','insurance_number'];
}

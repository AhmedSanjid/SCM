<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sailingfreight extends Model
{
    use HasFactory;
    protected $fillable=['name', 'company_name','ship_name','arrival_port_name','insurance_number'];
}

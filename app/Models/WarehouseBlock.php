<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WarehouseBlock extends Model
{
    use HasFactory;
    protected $fillable=['name', 'width','height','depth','location','note'];

    
}

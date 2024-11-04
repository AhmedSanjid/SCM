<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cargotrack extends Model
{
    use HasFactory;
    protected $fillable=['status','note', 'location','location_time','lat_id','long_id','recived_by','warehouse_id','warehouse_block_id'];
}

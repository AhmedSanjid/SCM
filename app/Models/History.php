<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    use HasFactory;
    protected $fillable=['company_name', 'email', 'shipment_date', 'cargo_type', 'shipment_country', 'warehouse_name', 'cost', 'shipment_status','tracking_number'];
}

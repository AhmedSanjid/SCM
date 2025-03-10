<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class freights extends Model
{
    use HasFactory;
    protected $fillable=['company_name', 'customer_id', 'address', 'item', 'shipment_type','pickup_time','delivery_time', 'total_qty', 'pickup_location', 'delivery_location', 'transport_type_id'];

    public function customer(){
        return $this->belongsTo(Customers::class);
    }
    public function transporttype(){
        return $this->belongsTo(TransportType::class, 'transport_type_id');
    }
}

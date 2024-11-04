<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class freights extends Model
{
    use HasFactory;
    protected $fillable=['customer_id','total_amount','vat', 'payment_method','shipment_type','pickup_time','delivery_time', 'total_qty', 'pickup_location', 'delivery_location', 'transport_type_id'];

    public function customer(){
        return $this->belongsTo(Customers::class);
    }
    public function TransportType(){
        return $this->belongsTo(TransportType::class);
    }
}

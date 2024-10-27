<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    use HasFactory;
    protected $fillable=['item_id', 'item_origin','qty','amount'];

    public function item(){
        return $this->belongsTo(Item::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    protected $fillable=['item_category_id', 'item_name', 'note'];

    public function ItemCategory(){
        return $this->belongsTo(ItemCategory::class);
    }
}

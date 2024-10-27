<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class location extends Model
{
    use HasFactory;
    protected $fillable=['country_id', 'state_id','address'];

    public function country(){
        return $this->belongsTo(country::class);
    }
    public function state(){
        return $this->belongsTo(state::class);
    }
}

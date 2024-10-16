<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class vendors extends Model
{
    use HasFactory;
    protected $fillable=['name', 'designation','work_status','details','contact_number','email','photo'];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Why_mustrad extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id',
        'icon',
        'details',
    ];
}
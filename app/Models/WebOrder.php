<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebOrder extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id', 'name', 'phone', 'email', 'address', 'price', 'quantity', 'sub_total'
    ];
}

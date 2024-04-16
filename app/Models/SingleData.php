<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SingleData extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'heading_one',
        'picture_one',
        'heading_second',
        'heading_third',
        'picture_second',
        'heading_fourth',
        'picture_third',
        'heading_fifth',
    ];
}
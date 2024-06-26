<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $guarded =['id'];
    public function attributes()
    {
        return $this->hasMany(ProductAttribute::class, 'product_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function reviews()
    {
        return $this->hasMany(ProductReviews::class, 'product_id');
    }

}
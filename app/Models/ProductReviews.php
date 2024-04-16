<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductReviews extends Model
{
    use HasFactory;
    protected $fillable = ['product_id', 'user_id','user_rating','user_review','status'];
    
    public function getProduct(){
        return $this->belongsTo(Product::class, 'product_id');
    }
    public function getUser()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}

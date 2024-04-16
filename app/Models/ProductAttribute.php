<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    use HasFactory;
    protected $fillable =['attribute_name','attribute_values','attribute_stock', 'attribute_price', 'attribute_sku', 'product_id'];
    public function products()
    {
        return $this->belongsTo(Product::class);
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title')->unique();
            $table->string('slug')->unique();
            $table->string('sku')->unique();
            $table->float('regular_price');
            $table->float('sale_price');
            $table->text('description')->nullable();
            $table->text('short_desc')->nullable();
            $table->string('featured_img');
            $table->text('gallery_img')->nullable();
            $table->string('category_id');
            $table->string('special_cat_id')->nullable();
            $table->integer('stock_quantity')->nullable();
            $table->string('related_product_id')->nullable();
            $table->text('flash_title')->nullable();
            $table->tinyInteger('status')->default(1)->comment('Active=1, Inactive=2');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}

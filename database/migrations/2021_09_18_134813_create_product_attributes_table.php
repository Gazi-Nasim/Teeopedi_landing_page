<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductAttributesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_attributes', function (Blueprint $table) {
            $table->id();
            $table->string('attr_size')->nullable();
            $table->text('attr_color')->nullable();
            $table->string('attr_color_val')->nullable();
            $table->string('attr_price')->nullable();
            $table->unsignedBigInteger('product_id');
            $table->tinyInteger('status')->default(1)->comment('in_stock=1, out_of_stock=2');
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
        Schema::dropIfExists('product_attributes');
    }
}

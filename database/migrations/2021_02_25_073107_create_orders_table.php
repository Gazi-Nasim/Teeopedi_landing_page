<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('invoice_id');
            $table->string('payment_method');
            $table->string('transaction_id')->nullable();
            $table->double('sub_total', 8, 2);
            $table->double('total', 8, 2);
            $table->string('coupon_code')->nullable();
            $table->double('coupon_amount', 8, 2);
            $table->double('vat', 8, 2)->default(0);
            $table->double('tax', 8, 2)->default(0);
            $table->double('shipping_rate', 8, 2);
            $table->tinyInteger('shipping_option')->comment('1=Outside Dhaka, 2=Inside Dhaka');
            $table->unsignedBigInteger('billing_id');
            $table->unsignedBigInteger('user_id');
            $table->string('special_note')->nullable();
            $table->tinyInteger('status')->default(1)->comment('0=Pending,1=On The Way,2=Processing,3=Completed,4=Canceled,5=Failed');
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
        Schema::dropIfExists('orders');
    }
}

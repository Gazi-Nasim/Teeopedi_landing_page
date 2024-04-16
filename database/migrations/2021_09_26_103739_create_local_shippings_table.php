<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLocalShippingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('local_shippings', function (Blueprint $table) {
            $table->id();
            $table->foreignId('ship_id');
            $table->string('zone_name');
            $table->tinyInteger('fee_type')->comment('1=Cart total fixed amount, 2=Cart total percentage(%), 3=Per product fixed amount, 4=Per product percentage(%)');
            $table->float('fee_amount');
            $table->tinyInteger('status')->default(1)->comment('Active = 1, Inactive = 0');
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
        Schema::dropIfExists('local_shippings');
    }
}

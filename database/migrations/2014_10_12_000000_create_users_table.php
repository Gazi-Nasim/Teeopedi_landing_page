<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('username');
            $table->string('email')->unique();
            $table->string('password')->nullable();
            $table->string('avatar')->nullable();
            $table->tinyInteger('gender')->default(0)->comment('Male=1,Female=2,Other=3');
            $table->string('phone')->unique()->nullable();
            $table->string('address')->nullable();
            $table->integer('zip')->nullable();
            $table->string('city')->nullable();
            $table->string('state/district')->nullable();
            $table->string('country')->nullable();
            $table->tinyInteger('role')->comment('Admin=1, User=2');
            $table->tinyInteger('account_type')->default(1)->comment('Normal=1, Google=2,Facebook=3');
            $table->string('provider_id')->nullable();
            $table->string('user_currency')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->tinyInteger('status')->default(1)->comment('Active=1, Inactive=2');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}

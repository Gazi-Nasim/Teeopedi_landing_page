<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGeneralSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('general_settings', function (Blueprint $table) {
            $table->id();
            $table->string('site_title');
            $table->string('logo');
            $table->string('fb_logo');
            $table->string('favicon');
            $table->text('site_description')->nullable();
            $table->text('about_us_text')->nullable();
            $table->string('about_us_image')->nullable();
            $table->string('about_icon_title_1')->nullable();
            $table->string('about_icon_1')->nullable();
            $table->string('about_icon_title_2')->nullable();
            $table->string('about_icon_2')->nullable();
            $table->string('about_icon_title_3')->nullable();
            $table->string('about_icon_3')->nullable();
            $table->string('home_promo_video_title')->nullable();
            $table->string('home_promo_video')->nullable();
            $table->text('address')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('hash_tag')->nullable();
            $table->text('hash_slogan')->nullable();
            $table->text('notice')->nullable();
            $table->text('copyright_text')->nullable();
            $table->tinyInteger('default_currency')->default(3);
            $table->tinyInteger('status')->default(1)->comment('Active = 1, Inactive = 2');
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
        Schema::dropIfExists('general_settings');
    }
}

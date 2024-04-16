<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use DB;
use Validator;
use Auth;
use Illuminate\Pagination\Paginator;
use Session;
use Illuminate\Support\Facades\URL;
use App\Models\GeneralSetting;
use App\Models\SocialIcon;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // if($this->app->environment('production')) {
        //     \URL::forceScheme('https');
        // }
        Paginator::useBootstrap();
        // $attribute_name =  ProductAttribute::where('status', 1)->get();
        // view()->share([
        //     'attribute_name' => $attribute_name,
        // ]);
        $settings = GeneralSetting::where('status', 1)->first();
        $social_icons = SocialIcon::where('status', 1)->latest()->take(6)->get();
        view()->share([ 'settings' => $settings, 'social_icons'=> $social_icons]);
    }
}

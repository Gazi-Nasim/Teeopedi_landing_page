<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IsUserMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next){
        if(Auth::user() && Auth::user()->role == 2){
            return $next($request);
        }else if(Auth::user() && Auth::user()->role == 1){
            return redirect('/Teeopedia_Dashboard');
        }
        return redirect('/')->with('error','You can not access this page without login');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Session;

class CustomerAuthController extends Controller
{
    public function userLogin(){
        $title = "User Login";
        if(!auth()->check()){
            return view('frontend.user.auth.login',compact('title'));
        }else if(auth()->user()->role==2){
            return redirect()->route('user.dashboard');
        }else if (auth()->user()->role == 1) {
            return redirect()->route('admin.dashboard');
        }
    }
    public function credential(Request $request){
        $request->validate([
            'login_email' => 'required|email|max:100',
            'password' => 'required|string|max:100'
        ]);
        $login=  $request->input('login_email');
        $field = filter_var($login, FILTER_VALIDATE_EMAIL)? 'email' : '';
        $request->merge([$field => $login]);
        if (Auth::attempt($request->only($field, 'password')))
        {
            if(Auth::user()->role == 2){
                if(Auth::user()->account_type == 1){
                    return redirect('/user/dashboard');
                }else{
                    Auth::logout();
                    return redirect()->route('user-login')->withInput()->withErrors(['login_email' => 'No user found with the credentials.']);
                }
            }
            elseif (auth()->user()->role == 1) {
                Auth::logout();
                return redirect()->route('user-login')->withInput()->withErrors(['login_email' => 'No user found with the credentials.']);
            }
        }
        return redirect()->route('user-login')->withInput()->withErrors(['login_email' => 'These credentials do not match our records.']);
    }

}

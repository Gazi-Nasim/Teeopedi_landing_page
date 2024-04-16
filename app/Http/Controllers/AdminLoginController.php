<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminLoginController extends Controller
{
    protected $redirectTo = '/admin/Teeopedia_Dashboard';

    public function showAdminLoginForm()
    {
        $title="Admin Login";
        $user = Auth::user();
        if (!empty($user)) {
            if ($user->role == 1 || $user->role == 3) {
                return redirect()->route('admin.dashboard')->with('success-admin', 'You are successfully logged in!!');
            }
            if ($user->role == 2) {
                 Auth::logout($user);
                return redirect('/');
            }
        } else {
            return view('admin.login',compact('title'));
        }
    }
    public function adminLogin(Request $request)
    {
        if (auth()->attempt(['email' => $request->input('r_email'), 'password' => $request->input('r_password')])) {
            $user = Auth::user();
            if ($user && $user->role == 1) {
                return redirect()->route('admin.dashboard')->with('success-admin', 'You are successfully logged in!!');
            }else if($user && $user->role == 3){
                return redirect()->route('admin.dashboard')->with('success-admin', 'You are successfully logged in!!');
            }
            else {
                return back()->with('error', 'No user found with the username and password.');
            }
        } else {
            return back()->with('error', 'Your username or password is incorrect.');
        }
    }
}

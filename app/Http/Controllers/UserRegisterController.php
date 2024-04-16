<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class UserRegisterController extends Controller
{
    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }
    public function userRegister(){
        $title = "User Registration";
        if (!auth()->check()) {
            return view('frontend.user.auth.register',compact('title'));
        } else if (auth()->user()->role == 2) {
            return redirect()->route('user.dashboard');
        } else if (auth()->user()->role == 1) {
            return redirect()->route('admin.dashboard');
        }
    }
    protected function registerSubmit(Request $request)
    {
        $validator =  Validator::make($request->all(), [
            'name' => 'required|string|max:100',
            'email' => 'required|string|max:255|unique:users,email',
            'password' => 'required|string|min:8|max:60|same:password_confirmation',
            'password_confirmation'=>'required|string|min:8|max:60'
        ]);

        if($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $user= User::create([
            'name' => $request->name,
            'username' =>strtolower($request->name).rand(1,548448484),
            'role'=>2,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        auth()->login($user);
        return redirect()->route('user.dashboard');
    }
}

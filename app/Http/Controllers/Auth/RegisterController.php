<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

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

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        $niceNames = array(
            'fname' => 'name',
            'r_email'=>'email',
            'r_phone'=>'phone',
            'r_password'=>'password',
            'password_confirmation'=>'confirm password',
        ); 
        
        $validator =  Validator::make($data, [
            'fname' => ['required', 'string', 'max:100'],
            'r_email' => ['required', 'string', 'email:rfc,dns', 'max:255', 'unique:users,email'],
            'r_phone' => ['digits:10','unique:users,phone'],
            'r_password' => ['required', 'string', 'min:8','max:60','same:password_confirmation'],
            'password_confirmation'=>['required', 'string', 'min:8','max:60']
        ]);

        $validator->setAttributeNames($niceNames); 

    	return $validator;
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
    
        return User::create([
            'name' => $data['fname'],
            'username' =>strtolower($data['fname']),
            'phone' => $data['r_phone'],
            'role'=>2,
            'email' => $data['r_email'],
            'password' => Hash::make($data['r_password']),
        ]);
    }
}

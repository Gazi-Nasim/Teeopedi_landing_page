<?php


namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class CustomerRegisterController extends Controller
{
    public function register(Request $request)
    {
        $data= $request->all();
        $niceNames = array(
            'fname' => 'name',
            'r_email'=>'email',
            'r_phone'=>'phone',
            'r_password'=>'password',
            'password_confirmation'=>'confirm password',
        );
        $validator =  Validator::make($data, [
            'fname' => ['required', 'string', 'max:255'],
            'r_email' => ['required', 'string', 'email:rfc,dns', 'max:255', 'unique:users,email'],
            'r_phone' => ['required','digits:10','unique:users,phone'],
            'r_password' => ['required', 'string', 'min:8',],
            'password_confirmation'=>['required', 'string', 'min:8','same:r_password']
        ]);

        $validator->setAttributeNames($niceNames);
        if ($validator->passes()) {
            $user = User::create([
                'name' => $data['fname'],
                'username' =>strtolower($data['fname']),
                'phone' => $data['r_phone'],
                'role'=>2,
                'email' => $data['r_email'],
                'password' => Hash::make($data['r_password']),
            ]);
            Session::pull('currency_value');
            Auth::login($user);
			return response()->json(['success'=>'Registration Successful.']);
        }

    	return response()->json(['error'=>$validator->errors()->all()]);
    }
}

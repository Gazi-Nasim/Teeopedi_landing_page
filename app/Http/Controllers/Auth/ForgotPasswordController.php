<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Support\Facades\Password;
use Illuminate\Validation\ValidationException;
use Auth;
use App\Models\User;
class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;
  
    public function sendResetLinkEmail(Request $request)
    {

        $user=User::where('email',$request->email)->first();
        if(!empty($user)){
            $account_type = $user->account_type;
            if($account_type != 3){ 
                $this->validateEmail($request);
                if($account_type == 2){
                    $user->account_type = 1;
                    $user->update(); 
                }

                // We will send the password reset link to this user. Once we have attempted
                // to send the link, we will examine the response then see the message we
                // need to show to the user. Finally, we'll send out a proper response.

                $response = $this->broker()->sendResetLink(
                    $this->credentials($request)
                );

                return $response == Password::RESET_LINK_SENT
                            ? $this->sendResetLinkResponse($request, $response)
                            : $this->sendResetLinkFailedResponse($request, $response);
            }else{
                return back()->with('error','We could not find a user with that e-mail address.');
            }
        }else{
            return back()->with('error','We could not find a user with that e-mail address.');
        }
    }
    // use SendsPasswordResetEmails;
}

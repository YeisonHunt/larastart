<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Log;
use App\User;
use Illuminate\Http\Request;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/innovations';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()

    
    {


        

        $this->middleware('guest')->except('logout');
    }

    /* 
        Add one more entrie to user entries.
        */
    protected function authenticated(Request $request, $user)

    
    {   

        $u = User::find($user->id);
        $u->entries = $u->entries +1;
        $u->save();

        
    }
}

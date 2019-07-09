<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Socialite;
use Log;
use App\User;
use DB;
use Illuminate\Support\Facades\Mail;
use Auth;


class SocialAuthController extends Controller
{


    public function redirectToProvider ($provider){

        return Socialite::driver($provider)->redirect();
    }

    public function handleProviderCallback($provider){

        try {


            $user = Socialite::driver($provider)->user();

            //Verificamos si existe un usuario con ese email,
            //Si existe, lo logueamos y si no lo creamos y lo logueamos.

            $pretendingUser = DB::table('users')->where('email',$user->getEmail())->first();

            if(empty($pretendingUser)){
                //No se encuentra el usuario
                //CREAR USUARIO

                $newUser = new User();

                $newUser->email   = $user->getEmail();
                $newUser->name    = $user->getName();
                $newUser->avatar  = $user->getAvatar();

                $newUser->role_id = 2;
                $pass = $this->generateRandomString();
                $newUser->password = bcrypt($pass); 
                $newUser->active= 1;
                $newUser->save();

                $dates = array('tempPass'=>$pass,'email'=>$user->getEmail());
                $this->email($dates,$newUser->email);


                Log::info('El usuario esta registrado e intenta pasar por 1');

                //LOGUEAR

                $credentials = $request->only('email', 'password');

                    if (Auth::attempt(['email' => $user->getEmail(), 'password' => $pass, 'active' => 1])) {
                        

                        return redirect()->route('admin');
                    }


            }else{
                //El usuario existe
                //LOGUEAR

                

                Log::info('El usuario esta registrado e intenta pasar por 2 - ID:'.$pretendingUser->id);
                
                //Auth::loginUsingId($pretendingUser->id);

                $usuario = User::find($pretendingUser->id);

                if(Auth::loginUsingId(17)){
                    Log::info('Pasando por 2.1');
                    //Auth::loginUsingId($usuario->id);
                    return redirect()->route('admin');

                }else {
                    Log::info('Pasando por 2.2');

                }

                      

               
               


            }





        }catch(\GuzzleHttp\Exception\ClientException $e){
            dd($e);

        }

    } 

    public function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    function email($dates,$email)
    {
        Mail::send('emails.details',$dates, function($message) use ($email) 
        {
           $message->subject('Welcome to Asakaa | Innova !');
           $message->to($email);
           $message->from('innovation-team@guardproject.com','Account Details');
        });
    }


   

}

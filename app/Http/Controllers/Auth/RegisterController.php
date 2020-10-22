<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Mail;
use App\Business;

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
    protected $redirectTo = '/registrationStep1';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    function generarCodigo($longitud)
       
    {
        $key='';
        $pattern='1234567890abcdefghijklmnopqrstuvwxyz';
        $max = strlen($pattern)-1;
        for($i=0;$i<$longitud;$i++) 
        $key.= $pattern{mt_rand(0,$max)};
        return $key;
    }
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    

    
    protected function validator(array $data)
    {

            

         $usuarioInvitado1 = User::where('email',$data['email'])->where('temporal',1)->first();

          if(!empty($usuarioInvitado1)){

            return Validator::make($data, [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255',
                'businessName' => 'required|max:30'
               
            ]);


         }else{

          return Validator::make($data, [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:users',
                'businessName' => 'required|max:30'
               
               
            ]);
      
         }

                
           
       
    }



 public function generateRandomString($length = 20) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
     protected function create(array $data)

     {
 
         $code = $this->generarCodigo(10);
         $email = $data['email'];

         


         //Business section
       


        $randString= $this->generateRandomString();

        if(strval($data['businessName'])==''){



        }else{
            
        $business = new Business();
        $business->name = $data['businessName'];
        $business->randString = $randString;

        $business->save();
        }
        
      


         $dates = array('code'=>$code,'email'=>$email,'randString'=>$randString);
         $this->email($dates,$email);



         $usuarioInvitado = User::where('email',$email)->first();

         if(!empty($usuarioInvitado)){


            $usuarioP = User::find($usuarioInvitado->id);

            $usuarioP->code= $code;
            $usuarioP->save();



         }else{

           return User::create([
             'email' => strtolower($data['email']),
             'code' => $code,
             'account_type'=>$data['account_type'], 
             'businessName'=>$data['businessName'],
             'name'=>$data['name']         
         ]);
      
         }
        

         
         
     }

         function email($dates,$email)
         {
             Mail::send('emails.registration',$dates, function($message) use ($email) 
             {
                $message->subject('Welcome to Asakaa | Innova !');
                $message->to($email);
                $message->from('support@asakaa.com','Activate account');
             });
         }



     

   
}

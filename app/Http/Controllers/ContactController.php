<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use Auth;
use Log;
use DB;
use App\User;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function deleteContact(Request $request, $id){

        if(Auth::check()){

            $user= Auth::user();
            $c = Contact::find($request->id);


            $c->delete();

            $anotherUser = User::where('email',$c->email)->firstOrFail();
            $anotherUser->delete();



            return response()->json([
                'mgs'=>'Deleted Successfully'
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }


    }


    public function updateContact(Request $request){

        if(Auth::check()){

            $user= Auth::user();
            $c = Contact::find($request->id);

            $c->firstName = $request->firstName;
            $c->lastName= $request->lastName;
            $c->avatar = $request->avatar;
            $c->email= $request->email;
            $c->type = $request->type;
            $c->birthdate= $request->birthdate;
            $c->company= $request->company;
            $c->country= $request->country;
            $c->city= $request->city;
            $c->phone= $request->phone;
            $c->friend_id = $request->friend_id;

            $c->save();



            return response()->json([
                'contact'=>$c
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }

    }



    public function getContact(Request $request, $id){


        if(Auth::check()){

            $user= Auth::user();
            $contact = DB::table('contacts')->where('id',$id)->where('friend_id',$user->id)->first();



            return response()->json([
                'contact'=>$contact
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }


    }


    public function getContacts(Request $request){

        if(Auth::check()){

            $user= Auth::user();
            $contacts = DB::table('contacts')->where('friend_id',$user->id)->orderBy('created_at','DESC')->get();

            return response()->json([
                'contacts'=>$contacts
            ]);

        }else{
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }
    }

    public function saveContact(Request $request){ // Funcion para guardar el contacto y su imagen

        //TODO: para terminos de rapidez, haremos la subida de la imagen en caracteres, aunque al idea no es esta.

        //Miramos que este el usuario autenticado



        if(Auth::check()){


            $checkUser = DB::table('users')->where('email',$request->email)->first();

            Log::info('Usuario creado');

            if($checkUser === null){

                $user = new User();

                $user->account_type = 'personal';
                $user->name = $request->firstName . " ". $request->lastName;
                $user->email=$request->email;
                $user->avatar= 'users/default.png';

                $pass = $this->generateRandomString(8);
                $user->password = bcrypt($pass);
                $user->businessName = auth()->user()->businessName;
                $user->businessLogo = auth()->user()->businessLogo;
                $user->businessBoss= auth()->user()->id;
								$user->company_id  = auth()->user()->company_id;

                $user->active=1;
                $user->save();

                $nombreDeEmpresa = auth()->user()->businessName;

                $c = new Contact();
                $c->firstName = $request->firstName;
                $c->lastName= $request->lastName;
                $c->avatar = $request->avatar;
                $c->email= $request->email;
                $c->type = $request->type;
                $c->birthdate= $request->birthdate;
                $c->company= auth()->user()->businessName;
                $c->country= $request->country;
                $c->city= $request->city;
                $c->phone= $request->phone;
                $c->friend_id = $request->friend_id;

                $c->save();

                Log::info('usuario y contacto creados');

                $dates = array('code'=>$nombreDeEmpresa,'email'=>$request->email,'randString'=>$pass);
                $this->email($dates,$request->email);


                return response()->json([
                    'msg'=>'User saved successfully'
                ]);


            }else{

                return response()->json([
                    'msg'=>'User already exists'
                ]);


            }







        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }




    }

    public function generateRandomString($length = 6) {
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
             Mail::send('emails.invitationUser',$dates, function($message) use ($email)
             {
                $message->subject('Bienvenido(a) a Innova!');
                $message->to($email);
                $message->from('support@asakaa.com','Credenciales Innova');
             });
         }


}

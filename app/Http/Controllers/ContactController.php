<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use Auth;
use Log;
use DB;

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

            $c = new Contact();
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
                'msg'=>'Contact saved successfully'
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }


    }


}

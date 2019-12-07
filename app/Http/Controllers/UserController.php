<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\User;
use DB;
use Auth;
use Log;
use Redirect;
use App\Http\Requests\UserRequest;
use App\Business;
use App\UserHasBusiness;

class UserController extends Controller
{


    public function getPuntos(){

        $user= Auth::user();

        $puntos =  DB::table('puntos')->where('user_id',$user->id)->sum('numero');

         
        $u = User::find(Auth::user()->id);
       

        return response()->json([
            'puntos'=>$puntos + intval($u->entries)
        ]);
    }

	public function store(Request $request){



	}

	public function activate($code,$randString)

    {
            $users = User::where('code',$code);
            $exist = $users->count();
            $user = $users->first();

            $randString = $randString;

            if($exist == 1 and $user->active == 0)
            {
            $id = $user->id;
            return view('auth.date_complete',compact('id','randString'));
           }
           else
           {
            return redirect::to('/');
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

    public function complete(UserRequest $request,$id)

    {
       // dd($id);

        $businessJustSaved= DB::table('businesses')->where('randString',$request->randString)->first();
        
        $businessU = Business::find($businessJustSaved->id);
        $businessU->created_by = $id;
        $businessU->save();

        if(!empty($businessJustSaved)){

        $uhb = new UserHasBusiness();
        $uhb->user_id = $id;
        $uhb->business_id = $businessJustSaved->id;
        $uhb->save();

        }else{

        }






        $user = User::find($id);
        $user->password = bcrypt($request->password);
        $user->active = 1;
        $user->name= ucfirst($request->name);

        $nF = strtolower($request->name);
        $n = $nF[0];

        if(!empty($businessJustSaved)){

        $user->businessName = $businessJustSaved->name;
				$user->company_id  = $businessJustSaved->id;

        }else{

        }


        $user->save();


        $user2 = User::find($id);

        if($n=="a"){
            $user2->avatar= "users/letterA.png";
        }elseif($n=="b"){

            $user2->avatar= "users/letterB.png";
        }elseif($n=="c"){

            $user2->avatar= "users/letterC.png";
        }
        elseif($n=="d"){

            $user2->avatar= "users/letterD.png";
        }elseif($n=="e"){

            $user2->avatar= "users/letterE.png";
        }elseif($n=="f"){

            $user2->avatar= "users/letterF.png";
        }elseif($n=="g"){

            $user2->avatar= "users/letterG.png";
        }elseif($n=="h"){

            $user2->avatar= "users/letterH.png";
        }elseif($n=="i"){

            $user2->avatar= "users/letterI.png";
        }elseif($n=="j"){

            $user2->avatar= "users/letterJ.png";
        }elseif($n=="k"){

            $user2->avatar= "users/letterK.png";
        }elseif($n=="l"){

            $user2->avatar= "users/letterL.png";
        }elseif($n=="m"){

            $user2->avatar= "users/letterM.png";
        }elseif($n=="n"){

            $user2->avatar= "users/letterN.png";
        }elseif($n=="o"){

            $user2->avatar= "users/letterO.png";
        }elseif($n=="p"){

            $user2->avatar= "users/letterP.png";
        }elseif($n=="q"){

            $user2->avatar= "users/letterQ.png";
        }elseif($n=="r"){

            $user2->avatar= "users/letterR.png";
        }elseif($n=="s"){

            $user2->avatar= "users/letterS.png";
        }elseif($n=="t"){

            $user2->avatar= "users/letterT.png";
        }elseif($n=="u"){

            $user2->avatar= "users/letterU.png";
        }elseif($n=="v"){

            $user2->avatar= "users/letterV.png";
        }elseif($n=="w"){

            $user2->avatar= "users/letterW.png";
        }elseif($n=="x"){

            $user2->avatar= "users/letterX.png";
        }elseif($n=="y"){
            Log::info('entra al condicional Y');
            $user2->avatar= "users/letterY.png";
        }elseif($n=="z"){

            $user2->avatar= "users/letterZ.png";
        }else{
            Log::info('entra al condicional else');
            $user2->avatar = "users/default.png";
        }

        Log::info('Usuario:'.$user2. ' La primer letra es:'.$n);


        $user2->save();

        //Guardar, autenticar y redireccionar.
        //return redirect::to('/login');
        //



         if (Auth::attempt(['email' => $user->email, 'password' => $request->password])) {
            // Authentication passed...
            return redirect()->route('innovations');
        }

        //return redirect('login')
    }

}

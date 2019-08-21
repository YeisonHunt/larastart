<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Business;
use Illuminate\Support\Facades\Auth;

class CompanyController extends Controller




{

	public function __construct()
    {
        $this->middleware('auth');
    }

     public function getCompanyInfo(Request $request){

            if(Auth::check()){

            $user = Auth::user();

						$company = Business::find($user->company_id);
						$name= $company->name;
						$logo= $company->logo;

            if($user->account_type=='business'){



                return response()->json([
                    'name'=>$name,
                    'logo'=>$logo,
                    'userType'=>'admin',
                    'user'=>$user
                ]);

            }elseif($user->account_type=='personal'){



                return response()->json([
                    'name'=>$name,
                    'logo'=>$logo,
                    'userType'=>'employee'
                ]);


            }else {
            	 return response()->json([
                    'name'=>$name,
                    'logo'=>$logo,
                    'userType'=>'employee'
                ]);
            }

        }else{
            return respone()->json([
				'msg','loginRequired'
			]);
        }

    }

    public function updateCompanyInfo(Request $request){

    	$user = User::find(auth()->user()->id);
    	$user->businessName = $request->name;
    	//$user->businesslogo = $request->logo;
    	$user->save();

			$company = Business::find($user->company_id);
			$company->name = $request->name;
			$company->logo = $request->logo;
			$company->save();

    	return response()->json([
    		'msg'=>'Company info updated'
    	]);

    }


}

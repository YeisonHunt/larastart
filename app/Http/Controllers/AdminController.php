<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
	/*
	Function used to display admin page
	 */

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index(Request $request){

    	return view('admin.index');
    }

    /*
    Function used to test not necessary reloading
     */
    
   
    public function users(Request $request){

    	return view('admin.users');
    }

     


}

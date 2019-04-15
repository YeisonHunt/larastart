<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
	/*
	Function used to display admin page
	 */
    public function index(Request $request){

    	return view('admin.index');
    }
}

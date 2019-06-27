<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PublicController extends Controller
{

		public function publicIdeas(Request $request){

			return view('public.ideas');
		}

}

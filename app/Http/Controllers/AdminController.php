<?php

namespace App\Http\Controllers;
use App\Business;


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

			$user = auth()->user();
			$company = Business::find($user->company_id);

			$logoVacio=false;

			if(empty($company->logo)){
				$logo= '';

				$logoVacio=true;

			}else {
				$logoVacio = false;
				$logo=$company->logo;
			}

    	return view('admin.index',compact('logoVacio','logo'));
    }

    /*
    Function used to test not necessary reloading
     */


    public function users(Request $request){

			$user = auth()->user();
			$company = Business::find($user->company_id);

			$logoVacio=false;

			if(empty($company->logo)){
				$logo= '';

				$logoVacio=true;

			}else {
				$logoVacio = false;
				$logo=$company->logo;
			}

    	return view('admin.users',compact('logoVacio','logo'));
    }

		public function pngToJpg($pngImage){ // Not working

			//$imageData = base64_decode($pngImage);
			$data= $pngImage;
			$data = str_replace('data:image/png;base64,', '', $data);

			$data = str_replace(' ', '+', $data);

			$data = base64_decode($data);
			$source_img = imagecreatefromstring($data);
			$image = imagecreatefrompng($source_img);
				$bg = imagecreatetruecolor(imagesx($image), imagesy($image));
				imagefill($bg, 0, 0, imagecolorallocate($bg, 255, 255, 255));
				imagealphablending($bg, TRUE);
				imagecopy($bg, $image, 0, 0, 0, 0, imagesx($image), imagesy($image));

				$quality = 50; // 0 = worst / smaller file, 100 = better / bigger file
				$imagenJpg = imagejpeg($bg, $filePath . ".jpg", $quality);
				imagedestroy($bg);

			return $imagenJpg;

		}








}

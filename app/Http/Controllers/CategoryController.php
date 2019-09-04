<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cat;
use DB;

class CategoryController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }

    public function save(Request $request){

        // Guarda una categoria personalizada para empresas
        $user= auth()->user();


        if(intval($request->id)!=0){

        $cat = Cat::find(intval($request->id));
        $cat->name = $request->name;
        $cat->company_id= $user->company_id;

        $cat->save();

        }else {
            
        $cat = new Cat();
        $cat->name = $request->name;
        $cat->company_id= $user->company_id;

        $cat->save();
        }

        

        

        $allCategories = DB::table('cats')->where('company_id',$user->company_id)->get();


        return response()->json([
            'msg'=>'Category saved',
            'categories'=>$allCategories
        ]);
    }
    
    public function getCategories(Request $request){

        $user= auth()->user();

        $allCategories = DB::table('cats')->where('company_id',$user->company_id)->get();


        return response()->json([
            'msg'=>'Categories here!',
            'categories'=>$allCategories
        ],200);
    }

    public function deleteCategory(Request $request, $id){

        $user= auth()->user();

        $cat= Cat::find(intval($id));
        $cat->delete();

        $allCategories = DB::table('cats')->where('company_id',$user->company_id)->get();


        return response()->json([
            'msg'=>'Category deleted',
            'categories'=>$allCategories
        ]);
    }

    public function brignPersonalizedCategories(){

        $user= auth()->user();
        $allCategories = DB::table('cats')->where('company_id',$user->company_id)->get();

        $tempObj= array(
            'label'=>'Categorías Personalizadas',
            'options'=>$allCategories
        );

        $categorias = array();    
        

        array_push($categorias,$tempObj);

   
       

        
        $options = DB::table('cats')->where('company_id',0)->get();


        $categoriasPredefinidas = array(

            'label'=>'Categorías Predefinidas',
            'options'=>$options
        );

        array_push($categorias,$categoriasPredefinidas);


        return response()->json([
          
            'categories'=>$categorias
        ]);

    }
}

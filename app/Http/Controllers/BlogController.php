<?php

namespace App\Http\Controllers;

use http\Env\Response;
use Illuminate\Http\Request;
use App\Blog;
use Log;
use DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

class BlogController extends Controller


{


    public function delete(Request $request){


        $blog = Blog::find(intval($request->id));
        $blog->delete();

        return response()->json([
            'data'=>'data'
        ]);

        return response()->json([
            'msg'=>'Blog borrado correctamente'
        ]);


    }



    public function update(Request $request, $id){


        $blog = Blog::find(intval($id));

        if($request->hasFile('img')){



            $cover = $request->img;

            $imageName = time().'.'.$request->img->getClientOriginalExtension();


            Storage::disk('public')->put($imageName,File::get($cover));

            Log::info($request);

            $url = Storage::url($imageName);
            $env_url = substr_replace(env('APP_URL'),"", -1);
            $imgUrl = $env_url.$url;

            $blog->title= $request->title;
            $blog->des=$request->des;
            $blog->content=$request->content;
            $blog->autores=$request->autores;
            $blog->tags=$request->tags;
            $blog->vistas = 0;
            $blog->img = $imgUrl;
            $blog->company_id = auth()->user()->company_id;
            $blog->save();



        }else {

            //Imagen que venia con el blog

            $blog->title= $request->title;
            $blog->des=$request->des;
            $blog->content=$request->content;
            $blog->autores=$request->autores;
            $blog->tags=$request->tags;
            $blog->vistas = 0;
            $blog->img = $request->img;
            $blog->company_id = auth()->user()->company_id;
            $blog->save();
        }

        Log::info('Se actualizo correctamente');

        return response()->json([
            'msg'=>'Blog actualizado correctamente'
        ]);





    }

    public function show($id){

        //Validamos que el usuario tiene acceso a ese blog

        $companyId = auth()->user()->company_id;
        $blog = Blog::find(intval($id));

        $this->contadorVistas($id);

        $autor = false;


        if($blog->created_by==auth()->user()->id){
            $autor = true;
        }

        if($blog->company_id==$companyId){


            $user= auth()->user();



            return response()->json([
                'blog'=>$blog,
                'msg'=>'ok',
                'autor'=>$autor
            ]);


        }else {


            return response()->json([
                'blog'=>[],
                'msg'=>'No tienes acceso a este blog.'
            ]);
        }




    }

    public function contadorVistas($id){

        $blog = Blog::find(intval($id));

        $blog->vistas += 1;
        $blog->save();

    }


    public function store(Request $request){

        //Guardarmos un nuevo blog


        $blog = new Blog();

        $blog->created_by = auth()->user()->id;

        if($request->hasFile('img')){



            $cover = $request->img;

            $imageName = time().'.'.$request->img->getClientOriginalExtension();


            Storage::disk('public')->put($imageName,File::get($cover));

            Log::info($request);

            $url = Storage::url($imageName);
            $env_url = substr_replace(env('APP_URL'),"", -1);
            $imgUrl = $env_url.$url;

            $blog->title= $request->title;
            $blog->des=$request->des;
            $blog->content=$request->content;
            $blog->autores=$request->autores;
            $blog->tags=$request->tags;
            $blog->vistas = 0;
            $blog->img = $imgUrl;
            $blog->company_id = auth()->user()->company_id;
            $blog->save();



        }else {

            //Imagen por defecto

            $blog->title= $request->title;
            $blog->des=$request->des;
            $blog->content=$request->content;
            $blog->autores=$request->autores;
            $blog->tags=$request->tags;
            $blog->vistas = 0;
            $blog->img = $request->img;
            $blog->company_id = auth()->user()->company_id;
            $blog->save();
        }



        return response()->json([
            'msg'=>'Blog guardado correctamente'
        ]);


    }


    public function index(){

        $blogs = DB::table('blogs')->where('company_id',auth()->user()->company_id)->orderBy('id','desc')->get();


        return response()->json([
            'blogs'=>$blogs
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Ideas;
use Log;
use Illuminate\Http\Request;
use App\Http\Requests\IdeasRequest;
use App\Innovation;


class IdeasController extends Controller
{


    public function index2(){

        return Innovation::latest()->paginate(10);
    }



    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        return Ideas::latest()->paginate(20);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(IdeasRequest $request)
    {
        
       


        return Ideas::create([

                'ideatxt'=> $request->ideatxt,
                'bugorfeaturetxt'=>$request->bugorfeaturetxt,
                'img'=>$request->img
        ]);

        //Log::info('Idea creada correctamente');


    }

    public function store2(Request $request)
    {
        
       //Log::info('Request recibida:'.$request);


        return Innovation::create([

             'title'=>$request->title,
             'description'=>$request->description,
             'body'=>$request->editordata,
             'img'=>$request->img,
             'category'=>$request->category,
             'language'=>$request->language,
             'author'=>$request->author
        ]);

        Log::info('Idea2 creada correctamente');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Ideas  $ideas
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        // Show one idea

        $idea = Innovation::find($id);

        return $idea;


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Ideas  $ideas
     * @return \Illuminate\Http\Response
     */
    public function edit(Ideas $ideas)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Ideas  $ideas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $idea = Innovation::findOrFail($id);


        $idea->title = $request->title;
        $idea->description = $request->description;
        $idea->body = $request->editordata;
        $idea->img = $request->img;
        $idea->language = $request->language;
        $idea->category = $request->category;
        $idea->author = $request->author;


        $idea->save();
        
        return $idea;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Ideas  $ideas
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $idea = Ideas::findOrFail($id);
        $idea->delete();
        

        return ['message'=>'Idea was deleted'];
    }
}

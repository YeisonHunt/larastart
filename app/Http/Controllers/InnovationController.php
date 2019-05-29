<?php

namespace App\Http\Controllers;

use App\Innovation;
use Illuminate\Http\Request;

class InnovationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    public function check(Request $request){

        return view('auth.registerStepTwo');
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Innovation  $innovation
     * @return \Illuminate\Http\Response
     */
    public function show(Innovation $innovation)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Innovation  $innovation
     * @return \Illuminate\Http\Response
     */
    public function edit(Innovation $innovation)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Innovation  $innovation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Innovation $innovation)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Innovation  $innovation
     * @return \Illuminate\Http\Response
     */
    public function destroy(Innovation $innovation)
    {
        //
    }
}

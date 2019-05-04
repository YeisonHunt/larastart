<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/admin','AdminController@index')->name('admin');
Route::get('/dashboard2','AdminController@dashboard2')->name('dashboard2');
Route::get('/users','AdminController@users')->name('users');

Route::any('/saveIdea','IdeasController@store');
Route::post('/saveIdea2','IdeasController@store2');
Route::get('/ideas','IdeasController@index');

Route::get('/getInnovations','IdeasController@index2');


Route::delete('/deleteIdea/{id}','IdeasController@destroy');
Route::any('/editIdea/{id}','IdeasController@update');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/getInnovation/{id}','IdeasController@show');




Route::get('{path}',"AdminController@users")->where( 'path', '([A-z\d-\/_.]+)?' );


//Route::resource('innovations', 'InnovationController');

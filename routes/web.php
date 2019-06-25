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
})->name('raiz');


Route::get('/dashboard','AdminController@index')->name('admin');
//Route::get('/dashboard2','AdminController@dashboard2')->name('dashboard2');
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

Route::post('/updateIdea/{id}','IdeasController@update');

Route::post('/addComment','DiscussionController@store');
Route::post('/saveLike','DiscussionController@storeLike');
Route::post('/saveDesired','IdeasController@vote');

Route::get('/registerCheck','InnovationController@check')->name('r2');

//Route::get('/innovations/{id}','AdminController@index');

Route::post('/updateIdeaPrivacy','IdeasController@updateIdeaPrivacy');
Route::post('/addUserPermission','IdeasController@addUserPermission');
Route::post('/deletePermissionsUser','IdeasController@deletePermissionsUser');
Route::post('/updatePermissionPerId','IdeasController@updatePermissionPerId');
Route::post('/saveContact','ContactController@saveContact');
Route::get('/getContacts','ContactController@getContacts');
Route::get('/getContact/{id}','ContactController@getContact');
Route::post('/updateContact','ContactController@updateContact');
Route::delete('/deleteContact/{id}','ContactController@deleteContact');

Route::post('/saveTeam','TeamController@saveTeam');
Route::get('/getTeams','TeamController@getTeams');


Route::get('/{any}', 'AdminController@users')->where('any', '.*');
//Route::get('{path}',"AdminController@users")->where( 'path', '([A-z\d-\/_.]+)?' );


//Route::resource('innovations', 'InnovationController');

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

/*Route::get('/', function () {
    return view('layout-final.layout-final');
})->name('raiz'); */


Route::post('/deleteInnovation','IdeasController@deleteInnovation');

Route::post('/saveCategory','CategoryController@save');
Route::post('/deleteCategory/{id}','CategoryController@deleteCategory');

Route::get('/getVotes/{id}','IdeasController@getVotes');
Route::post('/getPuntos','UserController@getPuntos');

Route::get('/dashboard','AdminController@index')->name('admin')->middleware('auth');
Route::get('/innovations','AdminController@index')->name('innovations');
//Route::get('/dashboard2','AdminController@dashboard2')->name('dashboard2');
Route::get('/users','AdminController@users')->name('users');
Route::get('/getDataInfo','AdminController@getDataInfo');
Route::get('/getData','AdminController@getData');

Route::any('/saveIdea','IdeasController@store');
Route::post('/saveIdea2','IdeasController@saveIdea2');
Route::get('/ideas','IdeasController@index');


Route::post('/getCategories','CategoryController@getCategories');
Route::get('/getInnovations','IdeasController@index2');
Route::get('/getRetos','IdeasController@getRetos');

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

Route::any('/blog-interno-save','BlogController@store');


Route::get('/getContacts','ContactController@getContacts');
Route::get('/getContact/{id}','ContactController@getContact');
Route::post('/updateContact','ContactController@updateContact');
Route::delete('/deleteContact/{id}','ContactController@deleteContact');

Route::post('/saveTeam','TeamController@saveTeam');
Route::post('/updateTeam','TeamController@updateTeam');
Route::post('/deleteTeam','TeamController@deleteTeam');

Route::get('/getTeams','TeamController@getTeams');

Route::get('/global-ideas','PublicController@publicIdeas')->name('publicIdeas');


Route::get('/facebook',function(){

    return Redirect::to('https://www.facebook.com/Asaka-Project-Management-476601186135413');
})->name('facebook');


Route::get('/twitter',function(){

    return Redirect::to('https://twitter.com/AsakaaProject');
})->name('twitter');

Route::get('/linkedin',function(){

    return Redirect::to('https://www.linkedin.com/company/asakaa');
})->name('linkedin');


//Ideas publicas controller
Route::get('/getPublicIdeas','PublicController@getPublicIdeas');


Route::get('/public-ideas/view/{id}','PublicController@publicIdeas');

Route::get('/getPublicIdea/{id}','PublicController@getPublicIdea');
Route::get('/pricing','PublicController@pricing')->name('pricing');


Route::get('activacion/{code}/{randString}','UserController@activate');
Route::post('complete/{id}','UserController@complete')->name('guardado');

Route::get('/registrationStep1', function (){

    Auth::logout();
    Session::flush();

    return view('response');
});

Route::get('/assets/assets/app/custom/login/login-v1.js',function(){

    return redirect()->route('admin');
});

Route::get('/brignPersonalizedCategories','CategoryController@brignPersonalizedCategories');



Route::get('/assets/vendors/base/purify.js.map',function(){
    return redirect()->route('admin');
});

Route::get('/login/{provider}','SocialAuthController@redirectToProvider');
Route::get('/login/{provider}/callback','SocialAuthController@handleProviderCallback');


Route::any('/global-ideas','PublicController@publicIdeas');
Route::any('/products','PublicController@publicIdeas');
Route::any('/pricing','PublicController@publicIdeas');
Route::any('/blog','PublicController@publicIdeas');
Route::any('/global-ideas/view/{id}','PublicController@publicIdeas');
Route::post('/data/updateCompanyInfo','CompanyController@updateCompanyInfo');
Route::get('/data/getCompanyInfo','CompanyController@getCompanyInfo');


/* Rutas controladas por VueJS */

//Route::get('{path}',"AdminController@users")->where( 'path', '([A-z\d-\/_.]+)?' );


Route::get('/profile',"AdminController@users");
Route::get('/innovations',"AdminController@users")->name('innovations');
Route::get('/ideaCreation',"AdminController@users");
Route::get('/solucion-reto/{id}',"AdminController@users");
Route::get('/innovations/{id}',"AdminController@users");
Route::get('/innovations/public/{id}',"AdminController@users");
Route::get('/retos',"AdminController@users");
Route::get('/retos/nuevo',"AdminController@users");
Route::get('/retos/ver/{id}',"AdminController@users");
Route::get('/retos/ver-public/{id}',"AdminController@users");
Route::get('/business',"AdminController@users");
Route::get('/business/users',"AdminController@users");
Route::get('/business/users/create-contact',"AdminController@users");
Route::get('/business/user-profile/{id}',"AdminController@users");
Route::get('/business/edit-user/{id}',"AdminController@users");
Route::get('/business/work-teams',"AdminController@users");
Route::get('/business/company',"AdminController@users");
Route::get('/shareInnovation/{id}',"AdminController@users");
Route::get('/categories',"AdminController@users");
Route::get('/reportes',"AdminController@users");
Route::get('/blog-interno',"AdminController@users");
Route::get('/blog-interno/create',"AdminController@users");
Route::get('/blog-interno/edit/{id}',"AdminController@users");
Route::get('/blog-interno/show/{id}',"AdminController@users");


Route::get('/blog-interno/blogs','BlogController@index');
Route::get('/blog-interno/get/{id}','BlogController@show');
Route::post('/blog-interno/update/{id}','BlogController@update');
Route::post('/blog-interno/delete','BlogController@delete');


/* Rutas usadas por pagina de bienvenida */ 



Route::get('/global-ideas',"PublicController@publicIdeas");
Route::get('/products',"PublicController@publicIdeas");
Route::get('/pricing',"PublicController@publicIdeas");
Route::get('/blog',"PublicController@publicIdeas");
Route::get('/global-ideas/view/{id}',"PublicController@publicIdeas");
Route::get('/blog/como-va-latinoamerica-en-innovacion',"PublicController@viewBlog");
Route::get('/blog/por-que-la-innovacion-es-importante-para-las-empresas',"PublicController@viewBlog");
Route::get('/',"PublicController@publicIdeas")->name('raiz');




/* Fin de rutas controladas por VueJS */




//Route::get('/{any}', 'AdminController@users')->where('any', '.*');

//Route::resource('innovations', 'InnovationController');

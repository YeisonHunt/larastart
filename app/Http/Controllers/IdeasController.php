<?php

namespace App\Http\Controllers;

use App\Ideas;
use Log;
use Illuminate\Http\Request;
use App\Http\Requests\IdeasRequest;
use App\Innovation;
use Auth;
use App\User;
use App\Discussion;
use DB;
use App\Desired;
use App\Punto;

use App\User_Has_Idea;
use App\User_Has_Ideas_Permission;


class IdeasController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }


    public function getVotes(Request $request,$id){

        $megusta = DB::table('desireds')
        ->join('users','desireds.user_id','users.id')
        ->where('desireds.innovation_id',$id)
        ->where('desireds.type','like')
        ->orderBy('desireds.created_at','DESC')
        ->select('users.*')
        ->get();

        $pulirmas = DB::table('desireds')
        ->join('users','desireds.user_id','users.id')
        ->where('desireds.innovation_id',$id)
        ->where('desireds.type','dislike')
        ->orderBy('desireds.created_at','DESC')
        ->select('users.*')
        ->get();

        $acciondemejora = DB::table('desireds')
        ->join('users','desireds.user_id','users.id')
        ->where('desireds.innovation_id',$id)
        ->where('desireds.type','action')
        ->orderBy('desireds.created_at','DESC')
        ->select('users.*')
        ->get();

        return response()->json([

            'megusta'=>$megusta,
            'pulirmas'=>$pulirmas,
            'acciondemejora'=>$acciondemejora
        ]);

    }

    public function deleteInnovation(Request $request){

        //Borrar innovacion y user has innovation 
        $idIdea = intval($request->id);

        $user = Auth::user();
        $innovation = Innovation::find($idIdea);
        $innovation->delete();

        $relacion = DB::table('user__has__ideas')->where('id_idea',$idIdea)->delete();
       

        $permisos = DB::table('user__has__ideas__permissions')->where('id_idea',$idIdea)->delete();
       

        $votos = DB::table('desireds')->where('innovation_id',$idIdea)->delete();
       

        $comentarios = DB::table('comments')->where('task_id',$idIdea)->delete();


        $punto = DB::table('puntos')->where('idea_id',$idIdea)->where('user_id',$user->id)->where('tipo','creacion_idea')->delete();
      

        Log::info('todo borrado correctamente');





        return response()->json([

                'estado'=>'OK',
                'msg'=>'Idea borrada correctamente'
        ]);


    }

    public function updatePermissionPerId(Request $request){

        $p = User_Has_Ideas_Permission::find($request->id);
        $p->permission_type=$request->valor;
        $p->save();

        return response()->json([
            'msg'=>'Updated successfully'
        ]);

    }

    public function deletePermissionsUser(Request $request){




        if(Auth::check()){

            $registrarIdea = DB::table('user__has__ideas')
            ->where('id_user',$request->id_user)
            ->where('id_idea',$request->id_idea)
            ->first();


            $r = User_Has_Idea::find($registrarIdea->id);

            $r->delete();

            $permission = DB::table('user__has__ideas__permissions')
            ->where('id_user',$request->id_user)
            ->where('id_idea',$request->id_idea)
            ->first();

            $p = User_Has_Ideas_Permission::find($permission->id);
            $p->delete();

            return response()->json([
                'msg'=>'Permissions deleted'
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }
    }


    public function addUserPermission(Request $request){

        if (Auth::check()) {
            // The user is logged in...
            $user= Auth::user();




                //El usuario tiene que estar registrado en asakaa

                if($this->checkUserRegistered($request->email)){

                    $user = DB::table('users')->where('email',$request->email)->first();

                    if($request->permissions=='watch'){

                        $registrarIdea = new User_Has_Idea();
                        $registrarIdea->id_user= $user->id;
                        $registrarIdea->id_idea= $request->idea_id;
                        $registrarIdea->save();

                        $permission = new User_Has_Ideas_Permission();
                        $permission->id_user= $user->id;
                        $permission->id_idea= $request->idea_id;
                        $permission->permission_type= 'can view';
                        $permission->save();



                        return response()->json([

                            'msg'=>'Now you can watch'
                        ]);


                    }elseif($request->permissions=='watch-edit'){


                        $registrarIdea = new User_Has_Idea();
                        $registrarIdea->id_user= $user->id;
                        $registrarIdea->id_idea= $request->idea_id;
                        $registrarIdea->save();

                        $permission = new User_Has_Ideas_Permission();
                        $permission->id_user= $user->id;
                        $permission->id_idea= $request->idea_id;
                        $permission->permission_type= 'can view-edit';
                        $permission->save();



                        return response()->json([

                            'msg'=>'Now you can wath-edit'
                        ]);

                    }else{
                        return response()->json([
                            'msg'=>'Bad request'
                        ]);
                    }


                }else{
                    return response()->json([

                        'msg'=>'User not registered on Asakaa.'
                    ]);

                }






        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }
    }

    public function checkUserRegistered($email){

        $user = DB::table('users')->where('email',$email)->first();

        if(empty($user)){
            return false;
        }else{
            return true;
        }
    }

    public function updateIdeaPrivacy(Request $request){

        if (Auth::check()) {
            // The user is logged in...
            $user= Auth::user();

            $idea = Innovation::find(intval($request->idea_id));

            $idea->privacy = 'public';
            $idea->save();

            return response()->json([
                'idea'=>$idea,
                'msg'=>'Privacy of idea updated'
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }
    }


		public function getRetos(){

            if(Auth::check()){

			        $userAuth = Auth::user();

			        // Para halar las innovaciones por usuario, el determinante debe ser el id del usuario.
			        $ideas= DB::table('user__has__ideas')
							->join('innovations','user__has__ideas.id_idea','innovations.id')
			        ->where('user__has__ideas.id_user',$userAuth->id)
							->where('innovations.type','reto')
							->select('user__has__ideas.*')
							->orderBy('user__has__ideas.id','DESC')
			        ->get();



							$ideasAllCorporate=array();





								$corporateIdeas = DB::table('innovations')
								->where('company_id',$userAuth->company_id)
								->where('privacy','empresarial')
								->where('type','reto')
								->where('created_by','!=',$userAuth->id)
								->orderBy('created_at','DESC')
								->get();



								if (!empty($corporateIdeas)) {
										foreach($corporateIdeas as $idea){

												$checkLikesIdea = DB::table('desireds')->where('innovation_id',$idea->id)->get();

												$ideaUser = DB::table('innovations')->where('id',$idea->id)->first();
												$escrita = DB::table('users')->where('id',$ideaUser->created_by)->first();

												$permissions = DB::table('user__has__ideas__permissions')->where('id_idea',$idea->id)->get();

												if(count($checkLikesIdea)!=0) {

														$tempIdea=array(

																'id'=>$ideaUser->id,
																'title'=>$ideaUser->title,
																'description'=>$ideaUser->description,
																'body'=>$ideaUser->body,
																'img'=>$ideaUser->img,
																'category'=>$ideaUser->category,
																'language'=>$ideaUser->language,
																'tags'=>$ideaUser->tags,
																'author'=>$ideaUser->author,
																'created_by'=>$ideaUser->created_by,
																'created_at'=>$ideaUser->created_at,
																'likes'=>$checkLikesIdea,
																'permissions'=>$permissions,
																'escrita'=>$escrita->name


														);

														array_push($ideasAllCorporate, $tempIdea);

														$tempIdea=array();
												}else{
														$tempIdea=array(

																'id'=>$ideaUser->id,
																'title'=>$ideaUser->title,
																'description'=>$ideaUser->description,
																'body'=>$ideaUser->body,
																'img'=>$ideaUser->img,
																'category'=>$ideaUser->category,
																'language'=>$ideaUser->language,
																'tags'=>$ideaUser->tags,
																'author'=>$ideaUser->author,
																'created_by'=>$ideaUser->created_by,
																'created_at'=>$ideaUser->created_at,
																'likes'=>array(),
																'permissions'=>$permissions,
																'escrita'=>$escrita->name


														);

														array_push($ideasAllCorporate, $tempIdea);

														$tempIdea=array();

												}



										}

								}else {
										$ideasAllCorporate=array();

								}







			      $public = DB::table('innovations')->where('innovations.privacy','public')
						->where('innovations.type','reto')
						->join('users','innovations.created_by','users.id')
						->where('innovations.created_by','!=',$userAuth->id)
						->select('innovations.*','users.name as escrita')
						->orderBy('created_at','DESC')->get();

			        $likesIdea = array();
			        $ideasAll = array();

			        $likesIdeaPublic = array();
			        $ideasAllPublic = array();


			        if (!empty($ideas)) {
			            foreach($ideas as $idea){

			                $checkLikesIdea = DB::table('desireds')->where('innovation_id',$idea->id_idea)->get();

			                $ideaUser = DB::table('innovations')->where('id',$idea->id_idea)->where('type','reto')->first();

			                $permissions = DB::table('user__has__ideas__permissions')->where('id_idea',$idea->id_idea)->get();

			                if(count($checkLikesIdea)!=0) {

			                    $tempIdea=array(

			                        'id'=>$ideaUser->id,
			                        'title'=>$ideaUser->title,
			                        'description'=>$ideaUser->description,
			                        'body'=>$ideaUser->body,
			                        'img'=>$ideaUser->img,
			                        'category'=>$ideaUser->category,
			                        'language'=>$ideaUser->language,
			                        'tags'=>$ideaUser->tags,
			                        'author'=>$ideaUser->author,
			                        'created_by'=>$ideaUser->created_by,
			                        'created_at'=>$ideaUser->created_at,
			                        'likes'=>$checkLikesIdea,
			                        'permissions'=>$permissions


			                    );

			                    array_push($ideasAll, $tempIdea);

			                    $tempIdea=array();
			                }else{
			                    $tempIdea=array(

			                        'id'=>$ideaUser->id,
			                        'title'=>$ideaUser->title,
			                        'description'=>$ideaUser->description,
			                        'body'=>$ideaUser->body,
			                        'img'=>$ideaUser->img,
			                        'category'=>$ideaUser->category,
			                        'language'=>$ideaUser->language,
			                        'tags'=>$ideaUser->tags,
			                        'author'=>$ideaUser->author,
			                        'created_by'=>$ideaUser->created_by,
			                        'created_at'=>$ideaUser->created_at,
			                        'likes'=>$likesIdea,
			                        'permissions'=>$permissions


			                    );

			                    array_push($ideasAll, $tempIdea);

			                    $tempIdea=array();

			                }



			            }

			        }else {
			            $ideasAll=array();

			        }

			        //Para ideas publicas


			        if (!empty($public)) {
			            foreach($public as $idea){

			                $checkLikesIdea = DB::table('desireds')->where('innovation_id',$idea->id)->get();

			                $ideaUser = DB::table('innovations')->where('id',$idea->id)->first();

			                $permissions = DB::table('user__has__ideas__permissions')->where('id_idea',$idea->id)->get();

			                if(count($checkLikesIdea)!=0) {

			                    $tempIdea=array(

			                        'id'=>$ideaUser->id,
			                        'title'=>$ideaUser->title,
			                        'description'=>$ideaUser->description,
			                        'body'=>$ideaUser->body,
			                        'img'=>$ideaUser->img,
			                        'category'=>$ideaUser->category,
			                        'language'=>$ideaUser->language,
			                        'tags'=>$ideaUser->tags,
			                        'author'=>$ideaUser->author,
			                        'created_by'=>$ideaUser->created_by,
			                        'created_at'=>$ideaUser->created_at,
			                        'likes'=>$checkLikesIdea,
			                        'permissions'=>$permissions,
			                        'escrita'=>$idea->escrita


			                    );

			                    array_push($ideasAllPublic, $tempIdea);

			                    $tempIdea=array();
			                }else{
			                    $tempIdea=array(

			                        'id'=>$ideaUser->id,
			                        'title'=>$ideaUser->title,
			                        'description'=>$ideaUser->description,
			                        'body'=>$ideaUser->body,
			                        'img'=>$ideaUser->img,
			                        'category'=>$ideaUser->category,
			                        'language'=>$ideaUser->language,
			                        'tags'=>$ideaUser->tags,
			                        'author'=>$ideaUser->author,
			                        'created_by'=>$ideaUser->created_by,
			                        'created_at'=>$ideaUser->created_at,
			                        'likes'=>$likesIdea,
			                        'permissions'=>$permissions,
			                        'escrita'=>$idea->escrita


			                    );

			                    array_push($ideasAllPublic, $tempIdea);

			                    $tempIdea=array();

			                }



			            }

			        }else {
			            $ideasAllPublic=array();

			        }


							Log::info('info traida correctamente');

			        return response()->json([

			            'privateRetos'=>$ideasAll,
			            'publicRetos'=>$ideasAllPublic,
									'companyRetos'=>$ideasAllCorporate,
									'user'=>$userAuth,


                    ]);
                    
                    }else {
                        return respone()->json([
                            'msg','loginRequired'
                        ]);
                    }

		}// end getRetos

    public function index2(){

        // De aqui se estan trayendo las innovaciones.

        if (Auth::check()) {
        $userAuth = Auth::user();

        // Para halar las innovaciones por usuario, el determinante debe ser el id del usuario.


				$ideas= DB::table('user__has__ideas')
				->join('innovations','user__has__ideas.id_idea','innovations.id')
				->where('user__has__ideas.id_user',$userAuth->id)
                ->where(function ($query) {
                    $query->where('innovations.type', '=', 'solucion')
                          ->orWhere('innovations.type', '=', 'idea');
                })
        
				->select('user__has__ideas.*')
				->orderBy('user__has__ideas.id','DESC')
				->get();




				$ideasAllCorporate=array();





					$corporateIdeas = DB::table('innovations')
					->where('company_id',$userAuth->company_id)
					->where('privacy','empresarial')
                    ->where(function ($query) {
                        $query->where('type', '=', 'solucion')
                              ->orWhere('type', '=', 'idea');
                    })
					->where('created_by','!=',$userAuth->id)
					->orderBy('created_at','DESC')
					->get();

					$ideasCorporateFinal = array();



					if (!empty($corporateIdeas)) {
							foreach($corporateIdeas as $idea){

									$checkLikesIdea = DB::table('desireds')->where('innovation_id',$idea->id)->get();

								

                                    $ideaUser = DB::table('innovations')->where('id',$idea->id)->first();
                                    
                                    $userIdea = User::find($idea->created_by);

									$permissions = DB::table('user__has__ideas__permissions')->where('id_idea',$idea->id)->get();

									if(count($checkLikesIdea)>0) {

											$ideaCorporate=array(

													'id'=>$ideaUser->id,
													'title'=>$ideaUser->title,
													'description'=>$ideaUser->description,
													'body'=>$ideaUser->body,
													'img'=>$ideaUser->img,
													'category'=>$ideaUser->category,
													'language'=>$ideaUser->language,
													'tags'=>$ideaUser->tags,
													'author'=>$ideaUser->author,
													'created_by'=>$ideaUser->created_by,
													'created_at'=>$ideaUser->created_at,
													'likes'=>$checkLikesIdea,
                                                    'permissions'=>$permissions,
                                                    'escrita'=>$userIdea->name


											);

											Log::info($ideaCorporate);

											array_push($ideasAllCorporate, $ideaCorporate);

											//$tempIdea=array();
									}else{
											$tempIdea=array(

													'id'=>$ideaUser->id,
													'title'=>$ideaUser->title,
													'description'=>$ideaUser->description,
													'body'=>$ideaUser->body,
													'img'=>$ideaUser->img,
													'category'=>$ideaUser->category,
													'language'=>$ideaUser->language,
													'tags'=>$ideaUser->tags,
													'author'=>$ideaUser->author,
													'created_by'=>$ideaUser->created_by,
													'created_at'=>$ideaUser->created_at,
													'likes'=>array(),
                                                    'permissions'=>$permissions,
                                                    'escrita'=>$userIdea->name


											);

											array_push($ideasAllCorporate, $tempIdea);

											$tempIdea=array();

									}



							}

					}else {
							$ideasAllCorporate=array();

					}







      $public = DB::table('innovations')->where('privacy','public')
			->where('innovations.type','idea')
            ->join('users','innovations.created_by','users.id')
            ->where('innovations.created_by','!=',$userAuth->id)
			->select('innovations.*','users.name as escrita')
			->orderBy('created_at','DESC')->get();

        $likesIdea = array();
        $ideasAll = array();

        $likesIdeaPublic = array();
        $ideasAllPublic = array();


        if (!empty($ideas)) {
            foreach($ideas as $idea){

                $checkLikesIdea = DB::table('desireds')->where('innovation_id',$idea->id_idea)->get();

                $ideaUser = DB::table('innovations')->where('id',$idea->id_idea)->first();

                $permissions = DB::table('user__has__ideas__permissions')->where('id_idea',$idea->id_idea)->get();

                if(count($checkLikesIdea)!=0) {

                    $tempIdea=array(

                        'id'=>$ideaUser->id,
                        'title'=>$ideaUser->title,
                        'description'=>$ideaUser->description,
                        'body'=>$ideaUser->body,
                        'img'=>$ideaUser->img,
                        'category'=>$ideaUser->category,
                        'language'=>$ideaUser->language,
                        'tags'=>$ideaUser->tags,
                        'author'=>$ideaUser->author,
                        'created_by'=>$ideaUser->created_by,
                        'created_at'=>$ideaUser->created_at,
                        'likes'=>$checkLikesIdea,
                        'permissions'=>$permissions


                    );

                    array_push($ideasAll, $tempIdea);

                    $tempIdea=array();
                }else{
                    $tempIdea=array(

                        'id'=>$idea->id_idea,
                        'title'=>$ideaUser->title,
                        'description'=>$ideaUser->description,
                        'body'=>$ideaUser->body,
                        'img'=>$ideaUser->img,
                        'category'=>$ideaUser->category,
                        'language'=>$ideaUser->language,
                        'tags'=>$ideaUser->tags,
                        'author'=>$ideaUser->author,
                        'created_by'=>$ideaUser->created_by,
                        'created_at'=>$ideaUser->created_at,
                        'likes'=>$likesIdea,
                        'permissions'=>$permissions


                    );

                    array_push($ideasAll, $tempIdea);

                    $tempIdea=array();

                }



            }

        }else {
            $ideasAll=array();

        }

        //Para ideas publicas


        if (!empty($public)) {
            foreach($public as $idea){

                $checkLikesIdea = DB::table('desireds')->where('innovation_id',$idea->id)->get();

                $ideaUser = DB::table('innovations')->where('id',$idea->id)->first();

                $permissions = DB::table('user__has__ideas__permissions')->where('id_idea',$idea->id)->get();

                if(count($checkLikesIdea)!=0) {

                    $tempIdea=array(

                        'id'=>$ideaUser->id,
                        'title'=>$ideaUser->title,
                        'description'=>$ideaUser->description,
                        'body'=>$ideaUser->body,
                        'img'=>$ideaUser->img,
                        'category'=>$ideaUser->category,
                        'language'=>$ideaUser->language,
                        'tags'=>$ideaUser->tags,
                        'author'=>$ideaUser->author,
                        'created_by'=>$ideaUser->created_by,
                        'created_at'=>$ideaUser->created_at,
                        'likes'=>$checkLikesIdea,
                        'permissions'=>$permissions,
                        'escrita'=>$idea->escrita


                    );

                    array_push($ideasAllPublic, $tempIdea);

                    $tempIdea=array();
                }else{
                    $tempIdea=array(

                        'id'=>$ideaUser->id,
                        'title'=>$ideaUser->title,
                        'description'=>$ideaUser->description,
                        'body'=>$ideaUser->body,
                        'img'=>$ideaUser->img,
                        'category'=>$ideaUser->category,
                        'language'=>$ideaUser->language,
                        'tags'=>$ideaUser->tags,
                        'author'=>$ideaUser->author,
                        'created_by'=>$ideaUser->created_by,
                        'created_at'=>$ideaUser->created_at,
                        'likes'=>$likesIdea,
                        'permissions'=>$permissions,
                        'escrita'=>$idea->escrita


                    );

                    array_push($ideasAllPublic, $tempIdea);

                    $tempIdea=array();

                }



            }

        }else {
            $ideasAllPublic=array();

        }


				Log::info('info traida correctamente');

        return response()->json([

            'ideas'=>$ideasAll,
            'publicIdeas'=>$ideasAllPublic,
            'user'=>$userAuth,
						'companyIdeas'=>$ideasAllCorporate,


        ]);


    }else {
        return respone()->json([
            'msg','loginRequired'
        ]);
    }

    }

    /*
    This function stores votes for an innovation.
    */

    public function vote(Request $request){

        $user= Auth::user();

        $innovacion = Innovation::find(intval($request->innovation_id));


        $finder = DB::table('desireds')->where('user_id',$request->user_id)
        ->where('innovation_id',$request->innovation_id)->first();

        $puntos = DB::table('puntos')->where('user_id',$user->id)->where('idea_id',$request->innovation_id)
        ->where('tipo','votar_idea')->get();

				$type= $request->type;

				if(!empty($finder)){

					$like= Desired::find($finder->id);
                    $like->delete();
                    
                    if(!empty($puntos)){
                        $puntos = DB::table('puntos')->where('user_id',$user->id)->where('idea_id',$request->innovation_id)
                            ->where('tipo','votar_idea')->delete();
                    }
				}

				if($type=='like'){

					$like = new Desired();
					$like->innovation_id = $request->innovation_id;
					$like->user_id    = $request->user_id;
					$like->type='like';
                    $like->save();
                    
                    $punto = Punto::create([
                        'numero'=>1,
                        'tipo'=>'votar_idea',
                        'user_id'=>$user->id,
                        'idea_id'=>$request->innovation_id
                    ]);

                    $punto2 = Punto::create([
                        'numero'=>1,
                        'tipo'=>'votar_idea',
                        'user_id'=>$innovacion->created_by,
                        'idea_id'=>$request->innovation_id
                    ]);

					
				}elseif($type=='unlike' || $type =='undislike' || $type=='unaction'){


				}elseif($type=='dislike'){

					$like = new Desired();
					$like->innovation_id = $request->innovation_id;
					$like->user_id    = $request->user_id;
					$like->type='dislike';
                    $like->save();
                    
                    $punto = Punto::create([
                        'numero'=>1,
                        'tipo'=>'votar_idea',
                        'user_id'=>$user->id,
                        'idea_id'=>$request->innovation_id
                    ]);


				}elseif($type=='action'){

					$like = new Desired();
					$like->innovation_id = $request->innovation_id;
					$like->user_id    = $request->user_id;
					$like->type='action';
                    $like->save();
                    
                    $punto = Punto::create([
                        'numero'=>1,
                        'tipo'=>'votar_idea',
                        'user_id'=>$user->id,
                        'idea_id'=>$request->innovation_id
                    ]);


				}else {

				}


            $desired = DB::table('desireds')->where('innovation_id',$request->innovation_id)->get();




           return response()->json([

                'desired'=>$desired
            ]);

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {




        //return Ideas::latest()->paginate(2);
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



    }

    public function saveIdea2(Request $request)
    {

       //Log::info('Request recibida:'.$request);

        $user = Auth::user();


            if(empty($request->reto_id)){
					$retoId = 0;
				}else {
					$retoId = $request->reto_id;
				}

        $idea=  Innovation::create([

             'title'=>$request->title,
             'description'=>$request->description,
             'body'=>$request->editordata,
             'img'=>$request->img,
             'category'=>$request->category,
             'language'=>$request->language,
             'author'=>$request->author,
             'privacy'=>$request->privacy,
            'company_id'=>$user->company_id,
             'created_by'=>$user->id,
            'type'=>$request->type,
            'reto_id'=>$retoId,
            'votes_privacy'=>$request->votes_privacy
        ]);

        if($request->type=='idea')
        {
            $punto = Punto::create([

                'numero'=>5,
                'tipo'=>'creacion_idea',
                'user_id'=>$user->id,
                'idea_id'=>$idea->id
    
            ]);
        }elseif($request->type=='reto'){
            $punto = Punto::create([

                'numero'=>10,
                'tipo'=>'creacion_reto',
                'user_id'=>$user->id,
                'idea_id'=>$idea->id
    
            ]);
        }else {

        }

       



        $nuevoPermiso = new User_Has_Ideas_Permission();
        $nuevoPermiso->id_user = $user->id;
        $nuevoPermiso->id_idea = $idea->id;
        $nuevoPermiso->permission_type = 'can view-edit';
        $nuevoPermiso->save();



        $nuevoLinkUserTask = new User_Has_Idea();
        $nuevoLinkUserTask->id_user = $user->id;
        $nuevoLinkUserTask->id_idea = $idea->id;
        $nuevoLinkUserTask->save();



        Log::info('Innovation creada correctamente');


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

        $vacio= array();
        $idea = Innovation::find($id);


        if (Auth::check()) {
            // The user is logged in...
            $user= Auth::user();
        }


        


        $permissions = DB::table('user__has__ideas__permissions')->where('id_idea',$idea->id)->where('id_user',$user->id)->get();

        //$results = DB::select('select * from user__has__ideas__permissions where id_idea = :id_idea  and id_user = :id_user' , ['id_idea' =>$idea->id,'id_user'=>$user->id ]);


        $permissions2=array();


        foreach($permissions as $lel){

            $permissions2[] = [
                'id_user'=>$lel->id_user,
                'id_idea'=>$lel->id_idea,
                'permission_type'=>$lel->permission_type,

            ];

        }




        if($idea->author=='showme'){

                $user = User::find($idea->created_by);
        }else{
                $user= '';
        }

        $comments = DB::table('discussions')->where('idea_id',$id)->where('discussion_parent_id',0)
        ->join('users','discussions.user_id','=','users.id')
        ->select('discussions.*','users.name','users.email','users.avatar')
        ->orderBy('discussions.id','ASC')->get();

        $discussions= array();

        $childs= array();

        if(!empty($comments)){
            foreach($comments as $comment){

                $idCommentTemp = $comment->id;

                $temp = 0;

                $checkLikesPadre = DB::table('likes')->join('discussions','likes.comment_id','=','discussions.id')->where('discussions.id',$idCommentTemp)
                ->where('discussions.discussion_parent_id','=',0)
                ->select('likes.*')
                ->get();

                $checkLikesHijo = DB::table('likes')
                ->join('discussions','likes.comment_id','=','discussions.id')
                ->where('discussions.id',$idCommentTemp)
                ->where('discussions.discussion_parent_id','!=',0)
                ->select('likes.*')
                ->get();

             $disscussion_child= DB::table('discussions')->where('idea_id',0)->where('discussion_parent_id',$comment->id)
             ->join('users','discussions.user_id','=','users.id')
             ->select('discussions.*','users.name','users.email','users.avatar')
             ->orderBy('discussions.id','ASC')->get();

             if(count($disscussion_child)!=0){


                foreach($disscussion_child as $child){

                    $checkLikesHijo2 = DB::table('likes')
                            ->join('discussions','likes.comment_id','=','discussions.id')
                            ->where('discussions.id',$child->id)
                            ->where('discussions.discussion_parent_id','!=',0)
                            ->select('likes.*')
                            ->get();

                        $childLike=array(
                            'id'=>$child->id,
                            'idea_id'=>$child->idea_id,
                            'discussion_parent_id'=>$child->discussion_parent_id,
                            'user_id'=>$child->user_id,
                            'body'=>$child->body,
                            'created_at'=>$child->created_at,
                            'updated_at'=>$child->updated_at,
                            'name'=>$child->name,
                            'email'=>$child->email,
                            'avatar'=>$child->avatar,
                            'likes'=>$checkLikesHijo2


                        );

                        array_push($childs, $childLike);

                        $childLike=array();

                }




             }else{


             }

             if(count($checkLikesPadre)!=0){

                $commentsFinal=array(
                    'id'=>$comment->id,
                    'idea_id'=>$comment->idea_id,
                    'discussion_parent_id'=>$comment->discussion_parent_id,
                    'user_id'=>$comment->user_id,
                    'body'=>$comment->body,
                    'created_at'=>$comment->created_at,
                    'updated_at'=>$comment->updated_at,
                    'name'=>$comment->name,
                    'email'=>$comment->email,
                    'avatar'=>$comment->avatar,
                    'likes'=>$checkLikesPadre


                );
             }elseif(count($checkLikesHijo)!=0){

                $commentsFinal=array(
                    'id'=>$comment->id,
                    'idea_id'=>$comment->idea_id,
                    'discussion_parent_id'=>$comment->discussion_parent_id,
                    'user_id'=>$comment->user_id,
                    'body'=>$comment->body,
                    'created_at'=>$comment->created_at,
                    'updated_at'=>$comment->updated_at,
                    'name'=>$comment->name,
                    'email'=>$comment->email,
                    'avatar'=>$comment->avatar,
                    'likes'=>$checkLikesHijo


                );
             }else{


                $commentsFinal=array(
                    'id'=>$comment->id,
                    'idea_id'=>$comment->idea_id,
                    'discussion_parent_id'=>$comment->discussion_parent_id,
                    'user_id'=>$comment->user_id,
                    'body'=>$comment->body,
                    'created_at'=>$comment->created_at,
                    'updated_at'=>$comment->updated_at,
                    'name'=>$comment->name,
                    'email'=>$comment->email,
                    'avatar'=>$comment->avatar,
                    'likes'=>$vacio


                );
             }



             $discussions[] = [
                'discussions'=>$commentsFinal,
                'childs'=>$childs
            ];

            $childs=array();

            }
        }else{
            $discussions='';
        }



        $desired = DB::table('desireds')->where('innovation_id',$id)->get();

        $othersPermissions= DB::table('user__has__ideas__permissions')
        ->where('id_idea',$idea->id)
        ->join('users','users.id','user__has__ideas__permissions.id_user')
        ->select('users.*','user__has__ideas__permissions.permission_type','user__has__ideas__permissions.id_idea','user__has__ideas__permissions.id as permissionId')
        ->get();


				$solutions = DB::table('innovations')->where('reto_id',$idea->id)
				->join('users','users.id','innovations.created_by')
				->select('innovations.*','users.name as escrita')
				->orderBy('innovations.created_at','DESC')
				->get();



        return response()->json([
            'idea' => $idea,
            'permissions'=>$permissions2,
            'user' => $user,
            'discussions'=>$discussions,
            'desired'=>$desired,
            'othersPermissions'=>$othersPermissions,
						'solutions'=>$solutions
        ]);

        //return $idea;


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

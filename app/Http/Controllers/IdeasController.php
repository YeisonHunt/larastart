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

use App\User_Has_Idea;
use App\User_Has_Ideas_Permission;


class IdeasController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
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

    public function index2(){

        // De aqui se estan trayendo las innovaciones.
        
       
        $userAuth = Auth::user();

        // Para halar las innovaciones por usuario, el determinante debe ser el id del usuario.
        $ideas= DB::table('user__has__ideas')
  
        ->where('id_user',$userAuth->id)
        
        ->get();

        $public = DB::table('innovations')
  
        ->where('privacy','public')
        ->where('created_by','!=',$userAuth->id)
        
        ->get();
        
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
                        'permissions'=>$permissions
        
        
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
                        'permissions'=>$permissions
        
        
                    );

                    array_push($ideasAllPublic, $tempIdea);

                    $tempIdea=array();
                    
                }

                
    
            }
    
        }else {
            $ideasAllPublic=array();
           
        }


        

        return response()->json([

            'ideas'=>$ideasAll,
            'publicIdeas'=>$ideasAllPublic
            
        ]);
    }

    /*
    This function stores votes for an innovation.
    */

    public function vote(Request $request){


        $finder = DB::table('desireds')->where('user_id',$request->user_id)
        ->where('innovation_id',$request->innovation_id)->first();

            if(!empty($finder)){

            $like= Desired::find($finder->id);
            $like->delete();

            }else{

                $like = new Desired();
                $like->innovation_id = $request->innovation_id;
                $like->user_id    = $request->user_id;
                $like->save();
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

    public function store2(Request $request)
    {
        
       //Log::info('Request recibida:'.$request);

        $user = Auth::user();

        
       

        $idea=  Innovation::create([

             'title'=>$request->title,
             'description'=>$request->description,
             'body'=>$request->editordata,
             'img'=>$request->img,
             'category'=>$request->category,
             'language'=>$request->language,
             'author'=>$request->author,
             'privacy'=>$request->privacy,
             'created_by'=>$user->id
        ]);



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
        
        


       
        return response()->json([
            'idea' => $idea,
            'permissions'=>$permissions2,
            'user' => $user,
            'discussions'=>$discussions,
            'desired'=>$desired,
            'othersPermissions'=>$othersPermissions
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

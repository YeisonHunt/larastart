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


class IdeasController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth');
    }

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

        $user = Auth::user();

       

        return Innovation::create([

             'title'=>$request->title,
             'description'=>$request->description,
             'body'=>$request->editordata,
             'img'=>$request->img,
             'category'=>$request->category,
             'language'=>$request->language,
             'author'=>$author,
             'created_by'=>$user->id
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

        $vacio= array();
        $idea = Innovation::find($id);

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
        

        return response()->json([
            'idea' => $idea,
            'user' => $user,
            'discussions'=>$discussions
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

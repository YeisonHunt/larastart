<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Innovation;
use App\Discussion;
use DB;
use App\Like;
use Log;

class DiscussionController extends Controller
{
    

   public function storeLike(Request $request){


    $finder = DB::table('likes')->where('user_id',$request->user_id)
    ->where('comment_id',$request->comment_id)->first();

    if(!empty($finder)){

    $like= Like::find($finder->id);
    $like->delete();

    }else{

        $like = new Like();
        $like->comment_id = $request->comment_id;
        $like->user_id    = $request->user_id;
        $like->save();
    }

    Log::info('Comentario guardado -> Request:');
    Log::info($request);


    $id = $request->idea_id;
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


                Log::info($childs);

                

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

        Log::info('El like se guardo normal perros');
        

        return response()->json([
            'idea' => $idea,
            'user' => $user,
            'discussions'=>$discussions
        ]);


   }


   public function store(Request $request){

    $d = new Discussion();
    $vacio= array();

    $id = $request->idea_id;


    if($request->discussion_parent_id==0){

        $d->idea_id= $request->idea_id;
        $d->user_id = $request->user_id;
        $d->body = $request->body;
        $d->discussion_parent_id=0; 
    
    
        $d->save();

        $lastComment = DB::table('discussions')->where('idea_id',$id)->where('discussion_parent_id',0)->orderBy('id','DESC')->first();

    }else {

        $d->idea_id= 0;
        $d->user_id = $request->user_id;
        $d->body = $request->body;
        $d->discussion_parent_id=$request->discussion_parent_id; 
    
        
    
        $d->save();

        $lastComment = DB::table('discussions')->where('discussion_parent_id',$request->discussion_parent_id)->orderBy('id','DESC')->first();

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


            Log::info($childs);

            

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
            'discussions'=>$discussions,
            'lastCommentId'=>$lastComment->id
        ]);



   }

}

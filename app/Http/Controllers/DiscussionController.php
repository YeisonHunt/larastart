<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Innovation;
use App\Discussion;
use DB;

class DiscussionController extends Controller
{
    

   public function store(Request $request){

    $d = new Discussion();

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

             $disscussion_child= DB::table('discussions')->where('idea_id',0)->where('discussion_parent_id',$comment->id)
             ->join('users','discussions.user_id','=','users.id')
             ->select('discussions.*','users.name','users.email','users.avatar')  
             ->orderBy('discussions.id','ASC')->get();

             if(!empty($disscussion_child)){
                

                foreach($disscussion_child as $child){

                    array_push($childs, $child);

                }  

             }else{

                
             }

             $discussions[] = [
                'discussions'=>$comment,
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

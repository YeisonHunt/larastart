<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Innovation;
use App\User;

class PublicController extends Controller
{

		public function pricing(Request $request){

			return view('pricing');
		}

		public function publicIdeas(Request $request){

			return view('public.ideas');
		}

		public function getPublicIdeas(Request $request){
			// This function returns all public ideas without auth 


			$publicIdeas = DB::table('innovations')->where('privacy','public')
			
			->orderBy('created_at','DESC')->get();

			return response()->json([

				'publicIdeas'=>$publicIdeas
				
				
			]);

		}


		public function getPublicIdea(Request $request, $id){

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
			
	
			
			$desired = count(DB::table('desireds')->where('innovation_id',$id)->get());
	
		    

			 $public= DB::table('innovations')->where('privacy','public')->get();
			 
			 $featured = DB::select( DB::raw("SELECT innovations.*, COUNT(*) as cuenta FROM `desireds` inner join innovations on innovations.id = desireds.innovation_id where innovations.privacy='public' group by innovations.id order by cuenta desc limit 3") );

			
			return response()->json([
				'idea' => $idea,
				'discussions'=>$discussions,
				'desired'=>$desired,
				'featured'=>$featured

			]);

		}

}

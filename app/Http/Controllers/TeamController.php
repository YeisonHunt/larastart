<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use Auth;
use Log;
use DB;
use App\Team;
use App\Tmember;

class TeamController extends Controller
{
    


    public function deleteTeam(Request $request){

               
        if(Auth::check()){

            
                $idTeam = Team::find(intval($request->id));

                $idTeam->delete();
              
                

                return response()->json([
                    'msg'=>'Team deleted successfully',
                    
                ]);
    
            

        } else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }

    }

    public function updateTeam(Request $request){

        //This function will save work teams

        
        if(Auth::check()){

            $idTeam = intval($request->id);

            Log::info('id del equipo'.$idTeam);

            $user= Auth::user();
            $t = Team::find(intval($request->id));
            $t->name = $request->name;
            $t->department= $request->department;
            $t->creator_id = $user->id;
            $t->save();


            $oldMembers = DB::table('tmembers')->where('id_team',$idTeam)->delete();

            if(count($request->members)>0){
                foreach($request->members as $member){

                    $m = new Tmember();
                    $m->id_team = $t->id;
                    $m->email_contact = $member;
                    $m->save();

                }


                $teams = DB::table('teams')->where('teams.creator_id',$user->id)
                ->join('tmembers','teams.id','tmembers.id_team')
                ->join('contacts','tmembers.email_contact','contacts.email')
                ->select('teams.*','contacts.email as emails','contacts.avatar as avatars')
                ->orderBy('teams.id','DESC')->get();

                Log::info('Team actualizado');

                return response()->json([
                    'msg'=>'Team updated successfully',
                    'teams'=>$teams
                ]);
    
            
            }else {
                return response()->json([
                    'msg'=>'Team must have at least 1 member successfully'
                ]);
    
            }


            
            

           

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }


    }

    public function saveTeam(Request $request){

        //This function will save work teams

        
        if(Auth::check()){

            $user= Auth::user();
            $t = new Team();
            $t->name = $request->name;
            $t->department= $request->department;
            $t->creator_id = $user->id;
            $t->save();

            if(count($request->members)>0){
                foreach($request->members as $member){

                    $m = new Tmember();
                    $m->id_team = $t->id;
                    $m->email_contact = $member;
                    $m->save();

                }


                $teams = DB::table('teams')->where('teams.creator_id',$user->id)
                ->join('tmembers','teams.id','tmembers.id_team')
                ->join('contacts','tmembers.email_contact','contacts.email')
                ->select('teams.*','contacts.email as emails','contacts.avatar as avatars')
                ->orderBy('teams.id','DESC')->get();

                return response()->json([
                    'msg'=>'Team saved successfully',
                    'teams'=>$teams
                ]);
    
            
            }else {
                return response()->json([
                    'msg'=>'Team must have at least 1 member successfully'
                ]);
    
            }


            
            

           

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }


    }


    public function getTeams (Request $request){

        if(Auth::check()){

            $user= Auth::user();
           
            $teams = DB::table('teams')->where('teams.creator_id',$user->id)->get();
            $avatars = array();
            $mails  = array();
            $teamsGeneral = array();

            if(count($teams)!=0){

                foreach ($teams as $t){
                    
                    //$mail = DB::table('tmembers')->where('id_team',$t->id)->get();
                    $avatar = DB::table('tmembers')->where('id_team',$t->id)
                    ->join('contacts','contacts.email','tmembers.email_contact')
                    ->select('contacts.*')
                    ->get();


                    $tempT = array(
                        'team'=>$t
                    );

                    $tempAvatar = array(
                        'avatar'=>$avatar
                    );
                                        

                    $teams = array(
                        'team'=>$tempT,
                        'avatars'=>$tempAvatar,
                        'name'=>$t->name,
                        'department'=>$t->department,
                        'id'=>$t->id
                        
                    );


                    array_push($teamsGeneral, $teams);

                    $teams= array();

           

                }


            }
            
         


            return response()->json([
                'mgs'=>'Teams loaded successfully',
                'teams'=>$teamsGeneral
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }


       
    }
}

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
           
            $teams = DB::table('teams')->where('teams.creator_id',$user->id)
            ->join('tmembers','teams.id','tmembers.id_team')
            ->join('contacts','tmembers.email_contact','contacts.email')
            ->select('teams.*','contacts.email as emails','contacts.avatar as avatars')
            ->groupBy('id')
            ->orderBy('teams.id','DESC')->get();

            return response()->json([
                'mgs'=>'Deleted Successfully',
                'teams'=>$teams
            ]);

        }else {
            return response()->json([
                'msg'=>'User not authenticated'
            ]);
        }


       
    }
}

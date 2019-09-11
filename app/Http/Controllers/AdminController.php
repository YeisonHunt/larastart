<?php

namespace App\Http\Controllers;

use App\Business;
use Auth;
use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Log;
use App\Innovation;

class AdminController extends Controller
{
    /*
    Function used to display admin page
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getDataInfo()
    {

        if (Auth::check()) {

            $user = auth()->user();

            $companyId = Auth::user()->company_id;
            $company = Business::find($companyId);
            $creator_id = $company->created_by;

            $iPublicas = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'idea');

            })->where('privacy', 'public')->get();

            $iPrivadas = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'solucion')
                    ->orWhere('innovations.type', '=', 'idea');

            })->where('privacy', 'me')
                ->where('created_by', $user->id)
                ->get();

            $iEmpresariales = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'solucion')
                    ->orWhere('innovations.type', '=', 'idea');

            })->where('privacy', 'empresarial')
                ->where('company_id', $companyId)
                ->get();

            $rPublicos = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'reto');

            })->where('privacy', 'public')->get();
            $rPrivados = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'reto');

            })->where('privacy', 'me')
                ->where('created_by', $user->id)
                ->get();

            $rEmpresariales = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'reto');

            })->where('privacy', 'empresarial')
                ->where('company_id', $companyId)
                ->get();

            $tPublicos = DB::table('teams')->get();
            $tPrivados = DB::table('teams')->where('creator_id', $creator_id)->get();


            $user = Auth::user();

            $company = Business::find($user->company_id);
            $name= $company->name;
            $logo= $company->logo;

            if($user->account_type=='business'){



                    $userType='admin';
             
            }elseif($user->account_type=='personal'){



                    $userType='employee';
               

            }else {
            	
                    $userType='employee';
                
            }




            return response()->json([

                'iPublicas' => count($iPublicas),
                'iPrivadas' => count($iPrivadas),
                'iEmpresariales' => count($iEmpresariales),
                'rPublicos' => count($rPublicos),
                'rPrivados' => count($rPrivados),
                'rEmpresariales' => count($rEmpresariales),
                'tPublicos' => count($tPublicos),
                'tPrivados' => count($tPrivados),
                'ideas'=>$this->ideas(),
                'retos'=>$this->retos(),
                'usuarios'=>$this->usuarios(),
                'soluciones'=>$this->soluciones(),
                'userType'=>$userType

            ]);
        } else {
            return respone()->json([
                'msg', 'loginRequired',
            ]);
        }
    }

    public function soluciones(){

        $user= auth()->user();

        $ideas = DB::table('innovations')
        ->where('company_id',$user->company_id)->where(function ($query) {
            $query->where('type', '=', 'solucion');
               

        })->orderBy('created_at','DESC')->get();

        $ideasArray = array();

        foreach($ideas as $idea){

                $megusta = count(DB::table('desireds')->where('innovation_id',$idea->id)->where('type','like')->get());
                $pulirmas = count(DB::table('desireds')->where('innovation_id',$idea->id)->where('type','dislike')->get());
                $accion = count(DB::table('desireds')->where('innovation_id',$idea->id)->where('type','action')->get());
                $vistas = intval($idea->views);

                //$reto = Innovation::find(intval($idea->reto_id));
                $reto = DB::table('innovations')->where('id',intval($idea->reto_id))->get();
                //$reto = DB::table('innovations')->select(DB::raw('title as titulo'))->where('id',$reto_id)->first();
                //$retoName = $reto->get(0)->title;

                foreach($reto as $r){
                    $retoName = $r->title;
                }

                
                $comentarios = DB::table('discussions')->where('idea_id',$idea->id)->get();

                $cuenta =count($comentarios);

                foreach($comentarios as $co){

                    $tempCo = count(DB::table('discussions')->where('id',$co->id)->get());

                    $cuenta = $cuenta + $tempCo;


                }

                $total = intval($megusta) + intval($pulirmas) + intval($accion);


                $temp = array(

                    'megusta'=>$megusta,
                    'pulirmas'=>$pulirmas,
                    'accion'=>$accion,
                    'vistas'=>$vistas,
                    'title'=>$idea->title,
                    'id'=>$idea->id,
                    'comentarios'=>$cuenta,
                    'total'=>$total,
                    'retoName'=>$retoName
                );

                array_push($ideasArray,$temp);
                

        }

        return $ideasArray;
    }

    public function usuarios(){

        
        $user= auth()->user();

        $ideas = DB::table('users')
        ->where('company_id',$user->company_id)->orderBy('created_at','DESC')->get();

        $ideasArray = array();

        foreach($ideas as $idea){

              

                $puntos= count(DB::table('puntos')->where('user_id',$idea->id)->get());
                $soluciones = count(DB::table('innovations')->where('reto_id',$idea->id)->get());      
                $comentarios = DB::table('discussions')->where('user_id',$idea->id)->get();

                $cuenta =count($comentarios);

                foreach($comentarios as $co){

                    $tempCo = count(DB::table('discussions')->where('id',$co->id)->get());
                    $cuenta = $cuenta + $tempCo;

                }

            

                $ideas = count(DB::table('innovations')->where(function ($query) {
                    $query->where('innovations.type', '=', 'solucion')
                        ->orWhere('innovations.type', '=', 'idea');
                })->where('created_by',$idea->id)->get());  

                $retos = count(DB::table('innovations')->where('type','reto')->where('created_by',$idea->id)->get());  
                
                
                $votos = count(DB::table('desireds')->where('user_id',$idea->id)->get());




                


                $temp = array(

                    'nombre'=>$idea->name,
                    'puntos'=>$puntos,
                    'id'=>$idea->id,
                    'comentarios'=>$cuenta,
                    'ingresos'=>$idea->entries,
                    'ideas'=>$ideas,
                    'retos'=>$retos,
                    'votos'=>$votos
                );

                array_push($ideasArray,$temp);
                

        }

        return $ideasArray;
     
    }

    public function retos(){


        $user= auth()->user();

        $ideas = DB::table('innovations')
        ->where('company_id',$user->company_id)->where('type','reto')->orderBy('created_at','DESC')->get();

        $ideasArray = array();

        foreach($ideas as $idea){

              
                $soluciones = count(DB::table('innovations')->where('reto_id',$idea->id)->get());
                $comentarios = DB::table('discussions')->where('idea_id',$idea->id)->get();

                $cuenta =count($comentarios);

                foreach($comentarios as $co){

                    $tempCo = count(DB::table('discussions')->where('id',$co->id)->get());

                    $cuenta = $cuenta + $tempCo;


                }



                $vistas = $idea->views;


                $temp = array(

                    'soluciones'=>$soluciones,
                    'vistas'=>$vistas,
                    'title'=>$idea->title,
                    'id'=>$idea->id,
                    'comentarios'=>$cuenta,
                );

                array_push($ideasArray,$temp);
                

        }

        return $ideasArray;
     


    }


    public function ideas(){


        $user= auth()->user();

        $ideas = DB::table('innovations')
        ->where('company_id',$user->company_id)->where(function ($query) {
            $query->where('type', '=', 'idea');
               

        })->orderBy('created_at','DESC')->get();

        $ideasArray = array();

        foreach($ideas as $idea){

                $megusta = count(DB::table('desireds')->where('innovation_id',$idea->id)->where('type','like')->get());
                $pulirmas = count(DB::table('desireds')->where('innovation_id',$idea->id)->where('type','dislike')->get());
                $accion = count(DB::table('desireds')->where('innovation_id',$idea->id)->where('type','action')->get());
                $vistas = intval($idea->views);

                
                $comentarios = DB::table('discussions')->where('idea_id',$idea->id)->get();

                $cuenta =count($comentarios);

                foreach($comentarios as $co){

                    $tempCo = count(DB::table('discussions')->where('id',$co->id)->get());

                    $cuenta = $cuenta + $tempCo;


                }

                $total = intval($megusta) + intval($pulirmas) + intval($accion);


                $temp = array(

                    'megusta'=>$megusta,
                    'pulirmas'=>$pulirmas,
                    'accion'=>$accion,
                    'vistas'=>$vistas,
                    'title'=>$idea->title,
                    'id'=>$idea->id,
                    'comentarios'=>$cuenta,
                    'total'=>$total,
                );

                array_push($ideasArray,$temp);
                

        }

        return $ideasArray;
     


    }

    public function getData()
    {

        if (Auth::check()) {

            $user = auth()->user();

            $companyId = Auth::user()->company_id;
            $company = Business::find($companyId);
            $creator_id = $company->created_by;

            $iPublicas = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'idea');

            })->where('privacy', 'public')->get();

            $iPrivadas = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'solucion')
                    ->orWhere('innovations.type', '=', 'idea');

            })->where('privacy', 'me')
                ->where('created_by', $user->id)
                ->get();

            $iEmpresariales = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'solucion')
                    ->orWhere('innovations.type', '=', 'idea');

            })->where('privacy', 'empresarial')
                ->where('company_id', $companyId)
                ->get();

            $rPublicos = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'reto');

            })->where('privacy', 'public')->get();
            $rPrivados = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'reto');

            })->where('privacy', 'me')
                ->where('created_by', $user->id)
                ->get();

            $rEmpresariales = DB::table('innovations')->where(function ($query) {
                $query->where('innovations.type', '=', 'reto');

            })->where('privacy', 'empresarial')
                ->where('company_id', $companyId)
                ->get();

            $tPublicos = DB::table('teams')->get();
            $tPrivados = DB::table('teams')->where('creator_id', $creator_id)->get();

            $ideas = array(

                'Ideas Públicas' => count($iPublicas),
                'Ideas Privadas' => count($iPrivadas),
                'Ideas Empresariales' => count($iEmpresariales),

            );

            $retos = array(

                'Retos Públicos' => count($rPublicos),
                'Retos Privados' => count($rPrivados),
                'Retos Empresariales' => count($rEmpresariales),

            );

			
            $sumaSemanal = $this->retosSemana();
            $usuariosSemana =$this->usuariosSemana();
            $votosSemana = $this->votosSemana();
            $comentariosSemana =$this->comentariosSemana();

            return response()->json([

                'ideas' => $ideas,
				'retos' => $retos,
                'sumaSemanal'=>$sumaSemanal,
                'usuariosSemana'=>$usuariosSemana,
                'votosSemana'=>$votosSemana,
                'comentariosSemana'=>$comentariosSemana,
                'semana'=>$this->semana(),

            ]);
        } else {
            return respone()->json([
                'msg', 'loginRequired',
            ]);
        }
    }


    public function semana(){

        $actualDate= Carbon::now();

        

        $date1 = Carbon::now();
        $date2 = Carbon::now();
        $date3 = Carbon::now();
        $date4 = Carbon::now();
        $date5 = Carbon::now();
        $date6 = Carbon::now();
        $date7 = Carbon::now();

      
        
        
        $nD = $date1->dayOfWeekIso;

      
        if($nD==1){
            //Lunes

            $monday = $date1;
            $tuesday = $date2->addDay();
            $wednesday = $date3->addDays(2);
            $thursday= $date4->addDays(3);
            $friday= $date5->addDays(4);
            $saturday= $date6->addDays(5);
            $sunday= $date7->addDays(6);

        }elseif(intval($nD==2)){
            //Martes
            $monday = $date1->subDay();
            $tuesday = $date2;
            $wednesday = $date3->addDay();
            $thursday= $date4->addDays(2);
            $friday= $date5->addDays(3);
            $saturday= $date6->addDays(4);
            $sunday= $date7->addDays(5);

        }
        elseif(intval($nD==3)){
            //Miercoles
            
            $monday = $date1->subDays(2);
            $tuesday = $date2->subDay();
            $wednesday = $date3;
            $thursday= $date4->addDay();
            $friday= $date5->addDays(2);
            $saturday= $date6->addDays(3);
            $sunday= $date7->addDays(4);

           

        }elseif($nD==4){
            //Jueves
            $monday = $date1->subDays(3);
            $tuesday = $date2->subDays(2);
            $wednesday = $date3->subDay();
            $thursday= $date4;
            $friday= $date5->addDay();
            $saturday= $date6->addDays(2);
            $sunday= $date7->addDays(3);
        }elseif($nD==5){
            //Viernes
            $monday = $date1->subDays(4);
            $tuesday = $date2->subDays(3);
            $wednesday = $date3->subDays(2);
            $thursday= $date4->subDay();
            $friday= $date5;
            $saturday= $date6->addDay();
            $sunday= $date7->addDays(2);
        }elseif($nD==6){
            //Sabado
            $monday = $date1->subDays(5);
            $tuesday = $date2->subDays(4);
            $wednesday = $date3->subDays(3);
            $thursday= $date4->subDays(2);
            $friday= $date5->subDay();
            $saturday= $date6;
            $sunday= $date7->addDay();
        }else{
            //Domingo
            $monday = $date1->subDays(6);
            $tuesday = $date2->subDays(5);
            $wednesday = $date3->subDays(4);
            $thursday= $date4->subDays(3);
            $friday= $date5->subDays(2);
            $saturday= $date6->subDay();
            $sunday= $date7;
        }
        

        return $monday->day.' '.ucfirst($monday->locale('es')->monthName).' - '.$sunday->day.' '.ucfirst($sunday->locale('es')->monthName);
    }

    
    public function comentariosSemana(){

        $actualDate= Carbon::now();

        

        $date1 = Carbon::now();
        $date2 = Carbon::now();
        $date3 = Carbon::now();
        $date4 = Carbon::now();
        $date5 = Carbon::now();
        $date6 = Carbon::now();
        $date7 = Carbon::now();

      
        
        
        $nD = $date1->dayOfWeekIso;

      
        if($nD==1){
            //Lunes

            $monday = $date1;
            $tuesday = $date2->addDay();
            $wednesday = $date3->addDays(2);
            $thursday= $date4->addDays(3);
            $friday= $date5->addDays(4);
            $saturday= $date6->addDays(5);
            $sunday= $date7->addDays(6);

        }elseif(intval($nD==2)){
            //Martes
            $monday = $date1->subDay();
            $tuesday = $date2;
            $wednesday = $date3->addDay();
            $thursday= $date4->addDays(2);
            $friday= $date5->addDays(3);
            $saturday= $date6->addDays(4);
            $sunday= $date7->addDays(5);

        }
        elseif(intval($nD==3)){
            //Miercoles
            
            $monday = $date1->subDays(2);
            $tuesday = $date2->subDay();
            $wednesday = $date3;
            $thursday= $date4->addDay();
            $friday= $date5->addDays(2);
            $saturday= $date6->addDays(3);
            $sunday= $date7->addDays(4);

           

        }elseif($nD==4){
            //Jueves
            $monday = $date1->subDays(3);
            $tuesday = $date2->subDays(2);
            $wednesday = $date3->subDay();
            $thursday= $date4;
            $friday= $date5->addDay();
            $saturday= $date6->addDays(2);
            $sunday= $date7->addDays(3);
        }elseif($nD==5){
            //Viernes
            $monday = $date1->subDays(4);
            $tuesday = $date2->subDays(3);
            $wednesday = $date3->subDays(2);
            $thursday= $date4->subDay();
            $friday= $date5;
            $saturday= $date6->addDay();
            $sunday= $date7->addDays(2);
        }elseif($nD==6){
            //Sabado
            $monday = $date1->subDays(5);
            $tuesday = $date2->subDays(4);
            $wednesday = $date3->subDays(3);
            $thursday= $date4->subDays(2);
            $friday= $date5->subDay();
            $saturday= $date6;
            $sunday= $date7->addDay();
        }else{
            //Domingo
            $monday = $date1->subDays(6);
            $tuesday = $date2->subDays(5);
            $wednesday = $date3->subDays(4);
            $thursday= $date4->subDays(3);
            $friday= $date5->subDays(2);
            $saturday= $date6->subDay();
            $sunday= $date7;
		}


		$company_id = auth()->user()->company_id;
		

        $sumaLunes = count(DB::table('users')
        ->join('discussions','users.id','=','discussions.user_id')     
        ->where('users.company_id',$company_id)->whereDate('discussions.created_at',$monday->toDateString())->get());

        $sumaMartes = count(DB::table('users')
        ->join('discussions','users.id','=','discussions.user_id')     
        ->where('users.company_id',$company_id)->whereDate('discussions.created_at',$tuesday->toDateString())->get());

        $sumaMiercoles = count(DB::table('users')
        ->join('discussions','users.id','=','discussions.user_id')     
        ->where('users.company_id',$company_id)->whereDate('discussions.created_at',$wednesday->toDateString())->get());

        $sumaJueves = count(DB::table('users')
        ->join('discussions','users.id','=','discussions.user_id')     
        ->where('users.company_id',$company_id)->whereDate('discussions.created_at',$thursday->toDateString())->get());

        $sumaViernes = count(DB::table('users')
        ->join('discussions','users.id','=','discussions.user_id')     
        ->where('users.company_id',$company_id)->whereDate('discussions.created_at',$friday->toDateString())->get());

        $sumaSabado = count(DB::table('users')
        ->join('discussions','users.id','=','discussions.user_id')     
        ->where('users.company_id',$company_id)->whereDate('discussions.created_at',$saturday->toDateString())->get());

        $sumaDomingo = count(DB::table('users')
        ->join('discussions','users.id','=','discussions.user_id')     
        ->where('users.company_id',$company_id)->whereDate('discussions.created_at',$sunday->toDateString())->get());




		$usuariosSemana = array(

			'Lunes '   =>$sumaLunes,
			'Martes'=>$sumaMartes,
			'Miércoles'=>$sumaMiercoles,
			'Jueves'=>$sumaJueves,
			'Viernes'=>$sumaViernes,
			'Sábado'=>$sumaSabado,
			'Domingo '  =>$sumaDomingo,
		);

		return $usuariosSemana;

        


    }

     

    public function votosSemana(){

        $actualDate= Carbon::now();

        

        $date1 = Carbon::now();
        $date2 = Carbon::now();
        $date3 = Carbon::now();
        $date4 = Carbon::now();
        $date5 = Carbon::now();
        $date6 = Carbon::now();
        $date7 = Carbon::now();

      
        
        
        $nD = $date1->dayOfWeekIso;

      
        if($nD==1){
            //Lunes

            $monday = $date1;
            $tuesday = $date2->addDay();
            $wednesday = $date3->addDays(2);
            $thursday= $date4->addDays(3);
            $friday= $date5->addDays(4);
            $saturday= $date6->addDays(5);
            $sunday= $date7->addDays(6);

        }elseif(intval($nD==2)){
            //Martes
            $monday = $date1->subDay();
            $tuesday = $date2;
            $wednesday = $date3->addDay();
            $thursday= $date4->addDays(2);
            $friday= $date5->addDays(3);
            $saturday= $date6->addDays(4);
            $sunday= $date7->addDays(5);

        }
        elseif(intval($nD==3)){
            //Miercoles
            
            $monday = $date1->subDays(2);
            $tuesday = $date2->subDay();
            $wednesday = $date3;
            $thursday= $date4->addDay();
            $friday= $date5->addDays(2);
            $saturday= $date6->addDays(3);
            $sunday= $date7->addDays(4);

           

        }elseif($nD==4){
            //Jueves
            $monday = $date1->subDays(3);
            $tuesday = $date2->subDays(2);
            $wednesday = $date3->subDay();
            $thursday= $date4;
            $friday= $date5->addDay();
            $saturday= $date6->addDays(2);
            $sunday= $date7->addDays(3);
        }elseif($nD==5){
            //Viernes
            $monday = $date1->subDays(4);
            $tuesday = $date2->subDays(3);
            $wednesday = $date3->subDays(2);
            $thursday= $date4->subDay();
            $friday= $date5;
            $saturday= $date6->addDay();
            $sunday= $date7->addDays(2);
        }elseif($nD==6){
            //Sabado
            $monday = $date1->subDays(5);
            $tuesday = $date2->subDays(4);
            $wednesday = $date3->subDays(3);
            $thursday= $date4->subDays(2);
            $friday= $date5->subDay();
            $saturday= $date6;
            $sunday= $date7->addDay();
        }else{
            //Domingo
            $monday = $date1->subDays(6);
            $tuesday = $date2->subDays(5);
            $wednesday = $date3->subDays(4);
            $thursday= $date4->subDays(3);
            $friday= $date5->subDays(2);
            $saturday= $date6->subDay();
            $sunday= $date7;
		}


		$company_id = auth()->user()->company_id;
		

        $sumaLunes = count(DB::table('users')
        ->join('desireds','users.id','=','desireds.user_id')     
        ->where('users.company_id',$company_id)->whereDate('desireds.created_at',$monday->toDateString())->get());

        $sumaMartes = count(DB::table('users')
        ->join('desireds','users.id','=','desireds.user_id')     
        ->where('users.company_id',$company_id)->whereDate('desireds.created_at',$tuesday->toDateString())->get());

        $sumaMiercoles = count(DB::table('users')
        ->join('desireds','users.id','=','desireds.user_id')     
        ->where('users.company_id',$company_id)->whereDate('desireds.created_at',$wednesday->toDateString())->get());

        $sumaJueves = count(DB::table('users')
        ->join('desireds','users.id','=','desireds.user_id')     
        ->where('users.company_id',$company_id)->whereDate('desireds.created_at',$thursday->toDateString())->get());

        $sumaViernes = count(DB::table('users')
        ->join('desireds','users.id','=','desireds.user_id')     
        ->where('users.company_id',$company_id)->whereDate('desireds.created_at',$friday->toDateString())->get());

        $sumaSabado = count(DB::table('users')
        ->join('desireds','users.id','=','desireds.user_id')     
        ->where('users.company_id',$company_id)->whereDate('desireds.created_at',$saturday->toDateString())->get());

        $sumaDomingo = count(DB::table('users')
        ->join('desireds','users.id','=','desireds.user_id')     
        ->where('users.company_id',$company_id)->whereDate('desireds.created_at',$sunday->toDateString())->get());




		$usuariosSemana = array(

			'Lunes '   =>$sumaLunes,
			'Martes'=>$sumaMartes,
			'Miércoles'=>$sumaMiercoles,
			'Jueves'=>$sumaJueves,
			'Viernes'=>$sumaViernes,
			'Sábado'=>$sumaSabado,
			'Domingo ' =>$sumaDomingo,
		);

		return $usuariosSemana;

        

        


    }



    

    public function usuariosSemana(){

        $actualDate= Carbon::now();

        

        $date1 = Carbon::now();
        $date2 = Carbon::now();
        $date3 = Carbon::now();
        $date4 = Carbon::now();
        $date5 = Carbon::now();
        $date6 = Carbon::now();
        $date7 = Carbon::now();

      
        
        
        $nD = $date1->dayOfWeekIso;

      
        if($nD==1){
            //Lunes

            $monday = $date1;
            $tuesday = $date2->addDay();
            $wednesday = $date3->addDays(2);
            $thursday= $date4->addDays(3);
            $friday= $date5->addDays(4);
            $saturday= $date6->addDays(5);
            $sunday= $date7->addDays(6);

        }elseif(intval($nD==2)){
            //Martes
            $monday = $date1->subDay();
            $tuesday = $date2;
            $wednesday = $date3->addDay();
            $thursday= $date4->addDays(2);
            $friday= $date5->addDays(3);
            $saturday= $date6->addDays(4);
            $sunday= $date7->addDays(5);

        }
        elseif(intval($nD==3)){
            //Miercoles
            
            $monday = $date1->subDays(2);
            $tuesday = $date2->subDay();
            $wednesday = $date3;
            $thursday= $date4->addDay();
            $friday= $date5->addDays(2);
            $saturday= $date6->addDays(3);
            $sunday= $date7->addDays(4);

           

        }elseif($nD==4){
            //Jueves
            $monday = $date1->subDays(3);
            $tuesday = $date2->subDays(2);
            $wednesday = $date3->subDay();
            $thursday= $date4;
            $friday= $date5->addDay();
            $saturday= $date6->addDays(2);
            $sunday= $date7->addDays(3);
        }elseif($nD==5){
            //Viernes
            $monday = $date1->subDays(4);
            $tuesday = $date2->subDays(3);
            $wednesday = $date3->subDays(2);
            $thursday= $date4->subDay();
            $friday= $date5;
            $saturday= $date6->addDay();
            $sunday= $date7->addDays(2);
        }elseif($nD==6){
            //Sabado
            $monday = $date1->subDays(5);
            $tuesday = $date2->subDays(4);
            $wednesday = $date3->subDays(3);
            $thursday= $date4->subDays(2);
            $friday= $date5->subDay();
            $saturday= $date6;
            $sunday= $date7->addDay();
        }else{
            //Domingo
            $monday = $date1->subDays(6);
            $tuesday = $date2->subDays(5);
            $wednesday = $date3->subDays(4);
            $thursday= $date4->subDays(3);
            $friday= $date5->subDays(2);
            $saturday= $date6->subDay();
            $sunday= $date7;
		}


		$company_id = auth()->user()->company_id;
		

        $sumaLunes = count(DB::table('users')->where('company_id',$company_id)->whereDate('updated_at',$monday->toDateString())->get());
        $sumaMartes = count(DB::table('users')->where('company_id',$company_id)->whereDate('updated_at',$tuesday->toDateString())->get());
        $sumaMiercoles = count(DB::table('users')->where('company_id',$company_id)->whereDate('updated_at',$wednesday->toDateString())->get());
        $sumaJueves = count(DB::table('users')->where('company_id',$company_id)->whereDate('updated_at',$thursday->toDateString())->get());
        $sumaViernes = count(DB::table('users')->where('company_id',$company_id)->whereDate('updated_at',$friday->toDateString())->get());
        $sumaSabado = count(DB::table('users')->where('company_id',$company_id)->whereDate('updated_at',$saturday->toDateString())->get());
        $sumaDomingo = count(DB::table('users')->where('company_id',$company_id)->whereDate('updated_at',$sunday->toDateString())->get());
        

		



		$usuariosSemana = array(

			'Lunes ' =>$sumaLunes,
			'Martes'=>$sumaMartes,
			'Miércoles'=>$sumaMiercoles,
			'Jueves'=>$sumaJueves,
			'Viernes'=>$sumaViernes,
			'Sábado'=>$sumaSabado,
			'Domingo '  =>$sumaDomingo,
		);

		return $usuariosSemana;

        


    }
	
	public function retosSemana(){

		//Funcion para sacar el numero de retos por fecha entregada


        //$s = explode("-",$fecha);

		//$actualDate = Carbon::create(intval($s[2]),intval($s[1]),intval($s[0]));
		
		$actualDate= Carbon::now();

        

        $date1 = Carbon::now();
        $date2 = Carbon::now();
        $date3 = Carbon::now();
        $date4 = Carbon::now();
        $date5 = Carbon::now();
        $date6 = Carbon::now();
        $date7 = Carbon::now();

      
        
        
        $nD = $date1->dayOfWeekIso;

      
        if($nD==1){
            //Lunes

            $monday = $date1;
            $tuesday = $date2->addDay();
            $wednesday = $date3->addDays(2);
            $thursday= $date4->addDays(3);
            $friday= $date5->addDays(4);
            $saturday= $date6->addDays(5);
            $sunday= $date7->addDays(6);

        }elseif(intval($nD==2)){
            //Martes
            $monday = $date1->subDay();
            $tuesday = $date2;
            $wednesday = $date3->addDay();
            $thursday= $date4->addDays(2);
            $friday= $date5->addDays(3);
            $saturday= $date6->addDays(4);
            $sunday= $date7->addDays(5);

        }
        elseif(intval($nD==3)){
            //Miercoles
            
            $monday = $date1->subDays(2);
            $tuesday = $date2->subDay();
            $wednesday = $date3;
            $thursday= $date4->addDay();
            $friday= $date5->addDays(2);
            $saturday= $date6->addDays(3);
            $sunday= $date7->addDays(4);

           

        }elseif($nD==4){
            //Jueves
            $monday = $date1->subDays(3);
            $tuesday = $date2->subDays(2);
            $wednesday = $date3->subDay();
            $thursday= $date4;
            $friday= $date5->addDay();
            $saturday= $date6->addDays(2);
            $sunday= $date7->addDays(3);
        }elseif($nD==5){
            //Viernes
            $monday = $date1->subDays(4);
            $tuesday = $date2->subDays(3);
            $wednesday = $date3->subDays(2);
            $thursday= $date4->subDay();
            $friday= $date5;
            $saturday= $date6->addDay();
            $sunday= $date7->addDays(2);
        }elseif($nD==6){
            //Sabado
            $monday = $date1->subDays(5);
            $tuesday = $date2->subDays(4);
            $wednesday = $date3->subDays(3);
            $thursday= $date4->subDays(2);
            $friday= $date5->subDay();
            $saturday= $date6;
            $sunday= $date7->addDay();
        }else{
            //Domingo
            $monday = $date1->subDays(6);
            $tuesday = $date2->subDays(5);
            $wednesday = $date3->subDays(4);
            $thursday= $date4->subDays(3);
            $friday= $date5->subDays(2);
            $saturday= $date6->subDay();
            $sunday= $date7;
		}


		$company_id = auth()->user()->company_id;
		

		$sumaLunes = count(DB::table('innovations')->where(function ($query) {
			$query->where('innovations.type', '=', 'solucion')
				->orWhere('innovations.type', '=', 'idea');

		})->where('company_id',$company_id)->whereDate('created_at',$monday->toDateString())->get());
		$sumaMartes = count(DB::table('innovations')->where(function ($query) {
			$query->where('innovations.type', '=', 'solucion')
				->orWhere('innovations.type', '=', 'idea');

		})->where('company_id',$company_id)->whereDate('created_at',$tuesday->toDateString())->get());
		$sumaMiercoles = count(DB::table('innovations')->where(function ($query) {
			$query->where('innovations.type', '=', 'solucion')
				->orWhere('innovations.type', '=', 'idea');

		})->where('company_id',$company_id)->whereDate('created_at',$wednesday->toDateString())->get());
		$sumaJueves = count(DB::table('innovations')->where(function ($query) {
			$query->where('innovations.type', '=', 'solucion')
				->orWhere('innovations.type', '=', 'idea');

		})->where('company_id',$company_id)->whereDate('created_at',$thursday->toDateString())->get());
		$sumaViernes = count(DB::table('innovations')->where(function ($query) {
			$query->where('innovations.type', '=', 'solucion')
				->orWhere('innovations.type', '=', 'idea');

		})->where('company_id',$company_id)->whereDate('created_at',$friday->toDateString())->get());
		$sumaSabado = count(DB::table('innovations')->where(function ($query) {
			$query->where('innovations.type', '=', 'solucion')
				->orWhere('innovations.type', '=', 'idea');

		})->where('company_id',$company_id)->whereDate('created_at',$saturday->toDateString())->get());
		$sumaDomingo = count(DB::table('innovations')->where(function ($query) {
			$query->where('innovations.type', '=', 'solucion')
				->orWhere('innovations.type', '=', 'idea');

		})->where('company_id',$company_id)->whereDate('created_at',$sunday->toDateString())->get());

		



		$sumaSemanal = array(

			'Lunes '  =>$sumaLunes,
			'Martes'=>$sumaMartes,
			'Miércoles'=>$sumaMiercoles,
			'Jueves'=>$sumaJueves,
			'Viernes'=>$sumaViernes,
			'Sábado'=>$sumaSabado,
			'Domingo '  =>$sumaDomingo,
		);

		return $sumaSemanal;
	}

    public function index(Request $request)
    {

        $user = auth()->user();
        $company = Business::find($user->company_id);

        $logoVacio = false;

        if (empty($company->logo)) {
            $logo = '';

            $logoVacio = true;

        } else {
            $logoVacio = false;
            $logo = $company->logo;
        }

        return view('admin.index', compact('logoVacio', 'logo'));
    }

    /*
    Function used to test not necessary reloading
     */

    public function users(Request $request)
    {

        $user = auth()->user();
        $company = Business::find($user->company_id);

        $logoVacio = false;

        if (empty($company->logo)) {
            $logo = '';

            $logoVacio = true;

        } else {
            $logoVacio = false;
            $logo = $company->logo;
        }

        return view('admin.users', compact('logoVacio', 'logo'));
    }

    public function pngToJpg($pngImage)
    { // Not working

        //$imageData = base64_decode($pngImage);
        $data = $pngImage;
        $data = str_replace('data:image/png;base64,', '', $data);

        $data = str_replace(' ', '+', $data);

        $data = base64_decode($data);
        $source_img = imagecreatefromstring($data);
        $image = imagecreatefrompng($source_img);
        $bg = imagecreatetruecolor(imagesx($image), imagesy($image));
        imagefill($bg, 0, 0, imagecolorallocate($bg, 255, 255, 255));
        imagealphablending($bg, true);
        imagecopy($bg, $image, 0, 0, 0, 0, imagesx($image), imagesy($image));

        $quality = 50; // 0 = worst / smaller file, 100 = better / bigger file
        $imagenJpg = imagejpeg($bg, $filePath . ".jpg", $quality);
        imagedestroy($bg);

        return $imagenJpg;

    }

}

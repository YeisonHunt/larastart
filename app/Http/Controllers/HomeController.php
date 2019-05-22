<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\User;;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        //Aqui vamos a probar los roles
       // $role = Role::create(['name'=>'business user']);
       // $permission = Permission::create(['name'=>'edit ideas']);

        //$role= Role::findById(1);
        //$permission= Permission::findById(1);

        //$permission->assignRole($role);


        $user =User::find(17);

        //$user->givePermissionTo('edit ideas');



        return redirect()->route('admin');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User_Has_Ideas_Permission extends Model
{
    protected $fillable = [
       'id_user','id_idea','permission_type'
    ];

}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User_Has_Idea extends Model
{
    protected $fillable = [
        'id_user','id_idea',
    ];

}

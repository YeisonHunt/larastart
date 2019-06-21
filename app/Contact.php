<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
        'firstName', 'lastName','avatar','email','type','birthdate','company','friend_id','phone','country','city'
    ];


}

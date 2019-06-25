<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tmember extends Model
{
    protected $fillable = [
        'id_team', 'email_contact'
    ];

}

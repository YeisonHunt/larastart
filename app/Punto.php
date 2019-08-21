<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Punto extends Model
{
    protected $fillable = [
        'numero', 'tipo','user_id','idea_id'
    ];

}

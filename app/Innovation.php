<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Innovation extends Model
{
    protected $fillable = [
        'title', 'body','img','category','language','author', 'created_by','privacy','type','company_id','type','reto_id','votes_privacy','description','fecha'
    ];

}

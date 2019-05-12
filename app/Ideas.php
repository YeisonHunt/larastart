<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ideas extends Model
{
    
       protected $fillable = [
        'ideatxt', 'bugorfeaturetxt','id','img','description'
    ];

}

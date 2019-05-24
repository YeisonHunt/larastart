<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Desired extends Model
{
    protected $fillable = [
        'user_id', 'innovation_id'
    ];

}

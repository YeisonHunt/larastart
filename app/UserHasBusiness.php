<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserHasBusiness extends Model
{
    protected $fillable = [
        'user_id','business_id'
    ];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

                                                                                

class Blog extends Model
{
    protected $fillable = [
        'title','created_by','des','content','img','fecha','autores','tags','vistas','company_id'
    ];
}

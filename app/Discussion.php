<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Discussion extends Model
{
    protected $fillable = [
        'idea_id', 'discussion_parent_id','user_id','body'
    ];

}

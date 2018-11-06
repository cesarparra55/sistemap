<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Entityuser extends Model
{
    public function users(){
        return $this->belongsTo('User::class');
    }

    public function entities(){
        return $this->belongsTo('Entity::class');
    }
}

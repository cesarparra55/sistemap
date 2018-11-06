<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Entity extends Model
{
	protected $fillable = [
        'name', 'rif', 'description',
    ];

    public function users(){
        return $this->belongsTo('User::class');
    }
}

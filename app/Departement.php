<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Departement extends Model
{
    public function welcome()
    {
    	return $this->belongsToMany('App\welcome');
    }
}

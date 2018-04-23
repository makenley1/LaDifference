<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
     public function departement()
    {
    	return $this->belongsToMany('App\Departement');
    }
}

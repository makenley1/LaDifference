<?php

namespace App;

use Laravel\Scout\Searchable;
use Illuminate\Database\Eloquent\Model;
use Nicolaslopezj\Searchable\SearchableTrait;

class Product extends Model
{
	use SearchableTrait, Searchable;

	/**
     * Searchable rules.
     *
     * @var array
     */
    protected $table = 'products';
    protected $searchable = [
        /**
         * Columns and their priority in search results.
         * Columns with higher values are more important.
         * Columns with equal values have equal importance.
         *
         * @var array
         */
        'columns' => [
            'products.nom' => 10,
        ],
    ];

     public function departement()
    {
    	return $this->belongsToMany('App\Departement');
    }

    public function getScoutKey()
    {
        return $this->id;
    }
    
    public function searchableAs()
    {
        return 'Products_index';
    }
}

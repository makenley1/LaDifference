<?php

use Illuminate\Database\Seeder;
use App\Welcome;

class WelcomeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Welcome::create([
        	'name' => 'Best Western Premier', 
        	'slug' => 'Best W-P', 
        	'details' => 'Pv - P-AU-P',
        	'price' => 999.99,
        	'description' => 'lorem ipsum dolor sit amet, consectetur adipisicing elit',
        ]);

        Welcome::create([
        	'name' => 'El Rancho', 
        	'slug' => 'R', 
        	'details' => 'Delmas 34',
        	'price' => 999.99,
        	'description' => 'lorem ipsum dolor sit amet, consectetur adipisicing elit',
        ]);

        Welcome::create([
        	'name' => 'Mariot', 
        	'slug' => 'MT', 
        	'details' => 'Pv 312- P-AU-P ',
        	'price' => 999.99, 
        	'description' => 'lorem ipsum dolor sit amet, consectetur adipisicing elit',
        ]);

        Welcome::create([
        	'name' => 'Royal Oasis', 
        	'slug' => 'RO', 
        	'details' => 'Carrefou',
        	'price' => 999.99,
        	'description' => 'lorem ipsum dolor sit amet, consectetur adipisicing elit',
        ]);
    }
}

<?php

namespace App\Http\Controllers;
use App\Welcome;
use App\Departement;

use Illuminate\Http\Request;

class LandingPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       if (request()->Departement) {
            $welcomes = welcome::with('departement')->whereHas('departement', function ($query) {
                $query->where('slug', request()->Departement);
            })->get();
           $departement = Departement::all();
        } else {            
            $welcomes = welcome::inRandomOrder()->take(9)->get();
            $departement = Departement::all();
        }       

        return view('landing-page')->with([
            'welcomes' => $welcomes,
            'departement' => $departement,
        ]);
    }

     /**
     * Display the specified resource.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $welcome = welcome::where('slug', $slug)->firstOrFail();
        $slugName = welcome::where('slug', '!=', $slug)->inRandomOrder()->take(4)->get();

        return view('hotels/slug-name')->with('welcome', $welcome);
       
    }
}

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
            $welcomes = welcome::inRandomOrder()->take(8)->get();
            $departement = Departement::all();
        }       
/*SELECT distinct nom, departement_id FROM departement_welcome,departements WHERE departement_id=9;**/

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

        return view('hotels/slug-name')->with('welcome', $welcome);
    }
}

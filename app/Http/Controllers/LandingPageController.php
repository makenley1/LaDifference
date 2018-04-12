<?php

namespace App\Http\Controllers;
use App\Welcome;

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
        $welcomes = welcome::inRandomOrder()->take(4)->get();

        return view('landing-page')->with('welcomes',$welcomes);
    }

     /**
     * Display the specified resource.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $welcomes = welcome::where('slug',$slug)->firstOrFail();

        return view('landing-page')->with('welcome', $product);
    }
}

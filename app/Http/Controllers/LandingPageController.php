<?php

namespace App\Http\Controllers;

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
        $products = welcomes::inRandomOrder()->take(2)->get();

        return view('landing-page')->with('products',$products);
    }
}

<?php

namespace App\Http\Controllers; 

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $welcome = '\'::inRandomOrder()->take(2)->get();

        return view('/')->with('wel', $welome);
    }

}

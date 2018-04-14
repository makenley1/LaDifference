<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Welcome;

class HotelsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $welcomes = welcome::inRandomOrder()->take(4)->get();

        return view('pages/hotels')->with('welcomes',$welcomes);
    }

    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
}

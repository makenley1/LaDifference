<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Newsletter;

class NewsletterController extends Controller
{
    public function create()
    {
        return view('/');
    }

    public function store(Request $request)
    {
        if ( ! Newsletter::isSubscribed($request->email) ) 
        {
            Newsletter::subscribePending($request->email);
            return redirect('/')->with('success', 'Merci de vous abonner !!!');
        }
        return redirect('/')->with('failure', 'Désolé! Vous avez déjà inscrit...');
            
    }
}
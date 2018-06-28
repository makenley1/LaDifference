<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\DB;
use Auth;
use Image;

class UserController extends Controller
{
    public function profile(){
    	return view('profile', array('user' => Auth::user()) );
    }

    public function update_avatar(Request $request){
    	//Handle the user upload of avatar
    	if($request->hasFile('avatar')){
    		$avatar = $request->file('avatar');
    		$filename = time() . '.' . $avatar->getClientOriginalExtension();
    		Image::make($avatar)->resize(120, 120)->save( public_path('/storage/users/avatars/'. $filename) );

    		$user = Auth::user();
    		$user->avatar = $filename;
    		$user->save();
    	}

    	return view('profile', array('user' => Auth::user()) );
    }
}

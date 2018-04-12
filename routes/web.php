<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/*
Route::get('/', function () {
    return view('landing-page');
});*/

Route::get('/', 'LandingPageController@index')->name('landing-page');
/*Route::get('/', "UserController@store");*/

Route::get('/landing-page/{product}', 'WelcomeController@show')->name('welcome.show');


Route::get('/contact', function () {
    return view('contact');
});

Route::get('/help', function () {
    return view('help/help');
});

Route::get('/ouest/best-western-premier', function () {
    return view('ouest/best-western-premier');
});

Auth::routes();
Route::get('/logout', 'Auth\LoginController@logout')->name('logout' );
Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

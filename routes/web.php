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

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('/', "UserController@store");*/


Route::get('/contact', function () {
    return view('contact');
});

Route::get('/help', function () {
    return view('help/help');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

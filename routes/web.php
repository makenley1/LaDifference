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

Route::get('/', 'LandingPageController@index')->name('landing-page');
Route::get('/hotels/{welcome}', 'LandingPageController@show')->name('show');
Route::get('/search','LandingPageController@search')->name('search');

Route::get('auth/{provider}', 'Auth\LoginController@redirectToProvider');
Route::get('auth/{provider}/callback', 'Auth\LoginController@handleProviderCallback');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Route::get('/aide', function () {
    return view('aide');
})->name('aide');

Auth::routes();

Route::get('profile', 'UserController@profile');
Route::post('profile', 'UserController@update_avatar');
Route::get('/logout', 'Auth\LoginController@logout')->name('logout' );
Route::get('/Accueil', 'HomeController@index')->name('home');

Auth::routes();

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('mail','mailController@index');
Route::post('postMail','mailController@post');

Route::get('newsletter','NewsletterController@create');
Route::post('newsletter','NewsletterController@store');
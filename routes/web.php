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


Auth::routes();

//make post
Route::get('/p/create', 'PostsController@create');
Route::post('/p', 'PostsController@store');
Route::get('/p/{post}', 'PostsController@show');
//display profile
Route::get('/profile/{user}', 'ProfilesController@index')->name('profile.show'); //show profile
Route::get('/profile/{user}/edit', 'ProfilesController@edit')->name('profile.edit'); //edit profile
Route::patch('/profile/{user}', 'ProfilesController@update')->name('profile.update'); //update main profile with img
//landing
Route::get('/home', 'HomeController@index'); // default landing page

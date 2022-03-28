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

Route::view("about","/about"); //first page name second url of page
Route::view("contact", "/contact");

// Route::get('/{name}', function ($name) {   //Get Dynamic Data on page form URL
//    // echo $name;
//     return view('welcome',['name'=>$name]); //Key Value Pair
// });

Route::get('/', function () {  //Defaulf Function
    return redirect('about');
});

 
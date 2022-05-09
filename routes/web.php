<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;
use App\Http\Controllers\UserController;
use App\Http\Controllers\personsContoller;
use App\Http\Controllers\uploadController;
use App\Http\Controllers\MemberController; 
use App\Http\Controllers\DeviceController; 
use App\Http\Controllers\ProductController;

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


//Laravel String operations Examples

//$info ="hi, anil saini";
// $info=Str::ucfirst($info);
// $info=Str::replaceFirst("Hi","Hello",$info);
// $info=Str::camel($info);

//Fluent String Operations Works in laravel 8 version

// $info=Str::of($info)
//  ->ucfirst($info)
//  ->replaceFirst("Hi","Hello",$info)
//  ->camel($info);
// echo $info;

Route::view("about","/about")->middleware("protectedUrls"); //first page name second url of page
Route::view("contact", "/contact")->middleware("protectedUrls");;

// Route::get('/{name}', function ($name) {   //Get Dynamic Data on page form URL
//    // echo $name;
//     return view('welcome',['name'=>$name]); //Key Value Pair
// });

// Route::get('/contact', function () {  //redirect Function
//     return redirect('about');
// });

Route::get("user/{id}",[UserController::class,'show']); //Laravel 8 Contoller Calling Method

Route::get("suser/{name}",[UserController::class,'loadView']);

Route::get("userdata",[UserController::class,'loadViewData']);

Route::get("users",'UserController@index'); //Laravel 7 Contoller Calling Method

Route::get("persons",[personsContoller::class,'index']);

Route::get('/userall',[UserController::class,'getUsersDataFromDB']);

Route::get('/memberslist',[UserController::class,'membersList']);

//GET POST Route for User Login Form 
Route::post("userform",[UserController::class,'UserLogin']);
//Route::view('userlogin','userlogin'); //first page url second page name

Route::view('noaccess','noaccess');

// Group Route Example

// Route::group(['middleware'=>['protectedPage']],function(){
//     Route::view('userlogin','userlogin'); 
// });

Route::get('/userlogin', function () {  //Logout Function
    if(session()->has('username')){
        return redirect('/persons');
    }
    return view('/userlogin');
});

Route::get('/logout', function () {  //Logout Function
    if(session()->has('username')){
        session()->pull('username',null);
    }
    return redirect('/userlogin');
});

Route::post('addmember',[personsContoller::class,'addPerson']);
Route::view('addmember','addperson');
Route::get('deletemember/{id}',[UserController::class,'deleteMember']);
Route::get('editmember/{id}',[UserController::class,'showMember']);
Route::post('editmember/',[UserController::class,'editMember']);

Route::get('query-operations',[UserController::class,'operations']);

Route::view('upload','upload');
Route::post('upload',[uploadController::class,'index']);

Route::get("one-to-one",[MemberController::class,'oneToOne']);
Route::get("one-to-many",[MemberController::class,'ManytoOne']);

Route::get('devices/{key}',[DeviceController::class,'index']);
 //{key:name} //{key:member_id}

 Route::get('products-list',[ProductController::class,'productList']);

Route::get('/', function () {  //Defaulf Function
    return view('welcome');
});


 
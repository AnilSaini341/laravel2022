<?php

use Illuminate\Http\Request;
use App\Http\Controllers\DummyData;
use App\Http\Controllers\DeviceController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//API's Routes

Route::get('dummy-data-api',[DummyData::class,'getData']);
Route::get('device-list/{id?}',[DeviceController::class,'deviceList']);
Route::post('add-device',[DeviceController::class,'addDevice']);
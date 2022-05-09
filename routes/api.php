<?php

use Illuminate\Http\Request;
use App\Http\Controllers\DummyData;
use App\Http\Controllers\DeviceController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\FileController;
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
Route::put('update-device',[DeviceController::class,'updateDevice']);
Route::get('search-device/{name}',[DeviceController::class,'SearchDecice']);
Route::post("add-valid-device",[DeviceController::class,'testData']);


Route::get('company',[CompanyController::class,'index']);
//Resource Routing Methods Not Working
//Route::apiResource("company",CompanyController::class);

Route::post('file-upload',[FileController::class,'upload']);
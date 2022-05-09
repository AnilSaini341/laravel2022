<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Device;
use App\Product;
class ProductController extends Controller
{
    //
    function productList()
    {
        //GET data using DB Method

        //get data from database1 table
         //return DB::table('devices')->get();

        //get data from database2 table
        //return DB::connection('mysql2')->table('products')->get();

        //GET data using Model

        //get data from databse1 table 
        //return Device::all();

        //data from databse2 table (change in product model public $connection="mysql2";)
        return Product::all();

    }
}

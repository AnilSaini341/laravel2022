<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class uploadController extends Controller
{
    //
    function index(Request $req){
        //return "Hello, Upload Controller";
        return $req->file('file')->store('img');
    }
}

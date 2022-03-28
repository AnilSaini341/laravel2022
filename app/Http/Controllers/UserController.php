<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{

    function index(){
        return "User Index Mehod Calling";
    } 
    function show($id){
        return $id;
    } 

    function loadView($name){
        return view("user",['name'=>$name]);
    }
}

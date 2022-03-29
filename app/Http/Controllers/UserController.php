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

    function loadViewData(){
        $data = ['anil','ram','shyam'];
        return view("userdata",['users'=>$data]);
    }

    function UserLogin(Request $req){
        //echo 'Form Submitted..';
        return $req->input();
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DummyData extends Controller
{
    //
    function getData()
    {
        return ["name"=>"Anil Saini","email"=>"anil@gmail.com","city"=>"Ballabgarh"];
    }
}

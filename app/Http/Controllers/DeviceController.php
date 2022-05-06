<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use\App\Device;

class DeviceController extends Controller
{
    //
    function index(Device $key)
    {
        return $key;
    }

    function deviceList($id=null)
    {
        return $id?Device::find($id):Device::all();
    }
}

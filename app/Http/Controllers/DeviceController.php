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

    function deviceList()
    {
        return Device::all();
    }
}

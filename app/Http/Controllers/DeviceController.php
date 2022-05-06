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

    function addDevice(Request $req)
    {
        $device= new Device;
        $device->name = $req->name;
        $device->member_id= $req->member_id;
        $result=$device->save();
        if($result)
        {
            return ["result"=>"Data has been saved"];
        }else
        {
            return ["error"=>"Please enter valid Data"];
        }
    }
}

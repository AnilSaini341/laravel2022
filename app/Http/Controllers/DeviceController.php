<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use\App\Device;
use Validator;

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


    function updateDevice(Request $req)
    {
        $device=Device::find($req->id);
        $device->name=$req->name;
        $device->member_id=$req->member_id;
        $result=$device->save();
        if($result){
            return ["result"=>"Data has been updated"];
        }else{
            return ["result"=>"Update Operation failed"]; 
        }
        //return ["result"=>"Data has been updated"];
    }

    function SearchDecice($name)
    {
        return Device::where("name","like","%".$name."%")->get();
    }

    function testData(Request $req)
    {
        $rules=array(
            "member_id"=>"required | max:4",
            "name"=> "required | max:8",
        );
        $validator=Validator::make($req->all(), $rules);
        if($validator->fails()){
            return response()->json($validator->errors(),401);
        }
        else{
            $device= new Device;
            $device->name=$req->name;
            $device->member_id=$req->member_id;
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
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Member;
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
        $req->validate([
            'username'=>'required | max:10',
            'password'=>'required | min:3'
        ]);
        //return $req->input();

        $data=  $req->input('username');
        $req->session()->put("username",$data);
        $req->session()->flash('user',$data);
        //echo session('username');
        return redirect('persons');
    }

    function getUsersDataFromDB(){
       // return "Connect with DB";
       return DB::select("select * from users");
    }

    function membersList(){
        // $data= Member::all();  Get All Data
        $data= Member::paginate(5); //Get Data with pagination
        return view("memberslist",['members'=>$data]);
    }

    function deleteMember($id){
        $data = Member::find($id);
        $data->delete();
        return redirect("memberslist");
    }

    function showMember($id){
        $data= Member::find($id);
        return view("editmember",["data"=>$data]);
    }
    function editMember(Request $req){
        $data= Member::find($req->id);
        $data->name=$req->name;
        $data->email=$req->email;
        $data->address=$req->address;
        $data->save();
        return redirect('memberslist');
    }
}

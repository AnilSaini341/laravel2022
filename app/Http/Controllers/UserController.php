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

    function operations(){
        //return 'code will be here';

         //return DB::table('members')->get();   //get all records of member table

        //return DB::table('members')->where('id',6)->get();   
        //get records with where clause

        //return (array)DB::table('members')->find(7);   //get records with find clause

        //return DB::table('members')->count();   //use count clouse

        // $res= DB::table('members')
        // ->insert([
        //     'name'=>'t5',
        //     'email'=>'t5@gmail.com',
        //     'address'=>'T5'
        // ]);   
        // return json_encode($res);
        //insert Command

        // $res= DB::table('members')
        // ->where('id',13)
        // ->update([
        //     'name'=>'t15',
        //     'email'=>'t15@gmail.com',
        //     'address'=>'T151'
        // ]);   
        // return json_encode($res);
        //Update Command

        // $res= DB::table('members')
        // ->where('id',13)
        // ->delete();
        // return json_encode($res);
        //Delete Command

        //Aggrigate Functions Examples

        //return DB::table('members')->sum('id'); 
        //Sum

        //return DB::table('members')->min('id'); 
        //min

        //return DB::table('members')->max('id');
        //max

        //return DB::table('members')->avg('id');
        //Average


        // Join Examples 
        return DB::table('employee')
        ->join('company','employee.id','=','company.employee_id') //join
        ->select('company.*','employee.*')
        ->where('employee.name','peter')
        ->select('employee.name','company.c_name')
        ->get();
    }
}

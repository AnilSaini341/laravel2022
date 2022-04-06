<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;
use App\Member;
class personsContoller extends Controller
{
    //
    function index(){
        //echo "hi user";
        //return Http::get("https://jsonplaceholder.typicode.com/posts");

        $client = new \GuzzleHttp\Client();
        $request = $client->get('https://jsonplaceholder.typicode.com/posts');
        $response = $request->getBody()->getContents();
        $response = json_decode($response, true);
        //return $response;
        return view("persons",['collection'=>$response]);
    }

    function addPerson(Request $req){
        //echo "add member";
        $member = new Member;
        $member->name =$req->name;
        $member->email =$req->email;
        $member->address =$req->address;
        $member->save();
        return redirect('memberslist');
    }
}

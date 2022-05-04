<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
class MemberController extends Controller
{
    //
    function oneToOne()
    {
        return Member::find(2)->companyData;
    }
}

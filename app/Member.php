<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    //
    //public $timestamps=false; // False Timestamps

    // Accessor example 
    function getNameAttribute($value){
        return ucfirst($value);
    }
    function getAddressAttribute($value){
        return $value.", India";
    }
}

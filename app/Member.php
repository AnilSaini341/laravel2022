<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    //
    //public $timestamps=false; // False Timestamps

    // Accessor example 
    //Modify data Before Display is called Accessor
    function getNameAttribute($value){
       // return ucfirst($value);
        return "Mr, ".$value;
    }
    function getAddressAttribute($value){
        return $value.", India";
    }

    //Mutator Example
    // Modify data before save in database are called mutator
    public function setNameAttribute($value){
        return $this->attributes['name']= 'Mr. '.$value;
    }
    public function setAddressAttribute($value){
        return $this->attributes['address']= $value.", India";
    }
}

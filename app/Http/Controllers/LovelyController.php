<?php

namespace App\Http\Controllers;

use App\Models\Lovely;
use Illuminate\Http\Request;

class LovelyController extends Controller
{
     public function index()
    {
    //     $lovelies=Lovely::all();
    //     echo "<pre>";
    //    var_dump($lovelies);
    //     echo "<pre>";
    //     exit;

     //  $lovelies=Lovely::get()->sortByDesc('created_at');

        return view('lovelies.index',[
            "lovelies"=>auth()->user()->timeline()
        ]);
    }

    public function store(){

       $attributes=request()->validate([
            "body"=>"required|max:255"
        ]);

        Lovely::create([
            "user_id"=> auth()->id(),
            "body"=>$attributes["body"],
        ]);

        return redirect("/lovelies");
    }
}

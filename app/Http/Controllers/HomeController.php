<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
    //     $lovelies=Lovely::all();
    //     echo "<pre>";
    //    var_dump($lovelies);
    //     echo "<pre>";
    //     exit;

     //  $lovelies=Lovely::get()->sortByDesc('created_at');

        // return view('home',[
        //     "lovelies"=>auth()->user()->timeline()
        // ]);
    }
}
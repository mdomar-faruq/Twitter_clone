<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class FollowsController extends Controller
{
    public function store(User $user){

        //have the auth'd user follow the given User

        // if(auth()->user()->following($user)){

        //     auth()->user()->unfollow($user);

        // }else{
        //      auth()->user()->follow($user);
        // }

     //or toggleFollow
    auth()->user()->toggleFollow($user);
    return back();

    }
}

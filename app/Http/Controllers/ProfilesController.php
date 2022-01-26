<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule as ValidationRule;
use Symfony\Contracts\Service\Attribute\Required;

class ProfilesController extends Controller
{
    public function show(User $user){
        // return view("profiles.show",compact("user"));
         return view("profiles.show",[
             'user'=>$user,
             "lovelies"=>$user->lovelies()->withLikes()->paginate(4),
         ]);
    }
    public function edit(User $user){

        //formula-1
        // if($user->isNot(current_user())){
        // abort(404);
        // }
       //formula-2
    // abort_if($user->isNot(current_user()), 404);

    //formula-3
    //******this action is unauthorized, UserPolicy******
    // $this->authorize("edit",$user);

    //or , Route_edit use ->middleware("can:edit,user")


    return view("profiles.edit",compact("user"));
    }

     public function update(User $user){

        //validation rule new username and email uniqe, ignore old user
    $attributes=request()->validate([

    "username"=>["string","required","max:255","alpha_dash",ValidationRule::unique("users")->ignore($user)],
    "name"=> ["string","required","max:255"],
    "avatar"=>["file"],
    "email"=> ["string","required","email","max:255",ValidationRule::unique("users")->ignore($user)],
    "password"=> ["string","required","min:8","max:255","confirmed"]

    ]);

    if(request("avatar")){
        $attributes["avatar"]=request("avatar")->store("avatars");
    }

    $user->update($attributes);
    return redirect($user->path());
    }
}

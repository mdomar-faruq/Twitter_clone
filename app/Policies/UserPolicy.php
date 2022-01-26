<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;

    // /**
    //  * Create a new policy instance.
    //  *
    //  * @return void
    //  */
    // public function __construct()
    // {
    //     //
    // }

  //can you edit user
    public function edit(User $currentUser,User $user){
     return $currentUser->is($user);
    }
}
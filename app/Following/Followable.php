<?php
namespace App\Following;
use App\Models\User;

trait Followable{

     //follow new relationship
 public function follow(User $user){
     return $this->follows()->save($user);
 }
 //Unfollow  relationship
  public function unfollow(User $user){
     return $this->follows()->detach($user);
 }

  //have the auth'd user follow the given User
 public function toggleFollow(User $user){

    //  if($this->following($user)){
    //      //if user follow,So unfollow
    //   return $this->unfollow($user);
    //  }
    //    //otherwise follow
    //  return $this->follow($user);

    $this->follows()->toggle($user);

 }

  //get collection,every current user follow
 public function following(User $user){

// return $this->follows->contains($user);
    return $this->follows()->where("following_user_id",$user->id)->exists();
}

 public function follows(){
     return $this->belongsToMany(User::class,"follows","user_id","following_user_id"); //User can follow many User
 }

}

?>

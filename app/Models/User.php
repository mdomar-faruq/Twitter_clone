<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Following\Followable; //my custome -User follow, using trait

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, Followable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */

    // protected $fillable = [
    //     'username',
    //     'avatar',
    //     'name',
    //     'email',
    //     'password',
    // ];
    //OR
     protected $guarded=[];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    //custome avator imge
 public function getAvatarAttribute($value){

    // return "https://i.pravatar.cc/40?u=".$this->email;
    //some like error , location file

    return asset($value ? 'storage/'.$value : 'images/default_avatar.jpg');
}

//$user->password="foobar";
public function setPasswordAttribute($value){
    $this->attributes["password"]= bcrypt($value);
}

 public function timeline(){

    // return Lovely::where("user_id",$this->id)->latest()->get(); //latest() -using show the new insertion fast raw

    //include all of the User's lovelies
    //as well as the lovelies of everyone,
    // they follow. ..in descending order by date.

    $friends= $this->follows()->pluck("id");
    //$friends->push($this->id); //Where the user id ,current user

    //get all of the lovelies , where user_id is in array we created. by decending oder.
    return Lovely::whereIn("user_id",$friends)
                  ->orWhere("user_id",$this->id)
                  ->withLikes()
                  ->latest()->paginate(50);

 }

 public function lovelies(){
   return $this->hasMany(Lovely::class)->latest();
 }

 //relation user,like or dislike
  public function likes(){
        return $this->hasMany(Like::class);
    }

//  public function getRouteKeyName()
//  {
//  //override methode getRoutekeyname
//     return "name";
//  }

public function path($append=""){
    $path = route("profile",$this->username);
    return $append ? "{$path}/{$append}" : $path;
}


}

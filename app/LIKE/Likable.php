<?php
namespace App\LIKE;
use App\Models\User;
use App\Models\Like;
use Illuminate\Database\Eloquent\Builder;

trait Likable{

    // Likes and dislike model
    //lovely->like(),lovely->dislike()

    public function like( $user=null, $liked=true){

        $this->likes()->updateOrCreate(
        ['user_id' =>$user ? $user->id : auth()->id()],
        ['liked' => $liked ] );

    }
      public function dislike($user=null){
        $this->like($user,false);
    }

    public function isLikedBy(User $user){
         return (bool) $user->likes->where("lovely_id",$this->id)->where("liked",true)->count();

        }

      public function isDislikedBy(User $user){
        return (bool) $user->likes->where("lovely_id",$this->id)->where("liked",false)->count();
    }

    public function likes(){
        return $this->hasMany(Like::class);
    }

    public function scopeWithLikes( Builder $query){

    // SELECT * FROM `lovelies`
    // LEFT JOIN(
    // SELECT lovely_id, SUM(liked) likes, SUM(!liked) dislikes FROM `likes` GROUP BY lovely_id
    // ) `likes` ON likes.lovely_id = lovelies.id;

    //$query->leftJoinSub($query, $as(table2-name), $first);

        $query->leftJoinSub(
        "SELECT lovely_id, sum(liked) likes, sum(!liked) dislikes FROM likes group by lovely_id",
        "likes",
        "likes.lovely_id",
        "lovelies.id"
        ); //becarefull-> space,clone,comma etc
    }

}
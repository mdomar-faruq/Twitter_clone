<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\LIKE\Likable; //my-custome->using trait

class Lovely extends Model
{
    use HasFactory, Likable;
    protected $guarded=[];

    public function user(){
        return $this->belongsTo(User::class);
    }

}

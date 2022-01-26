<?php

namespace App\Http\Controllers;

use App\Models\Lovely;

class LovelyLikesController extends Controller
{
    public function store(Lovely $lovely){

        $lovely->like(current_user());
        return back();
    }

    public function destroy(Lovely $lovely){
        $lovely->dislike(current_user());
        return back();
    }
}

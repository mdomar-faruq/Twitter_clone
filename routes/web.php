<?php

use Illuminate\Support\Facades\DB;
//this quickly database query,and dumping
// DB::listen(function($query){
//     var_dump($query->sql,$query->bindings);
// });

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware("auth")->group(function(){

    Route::get('/lovelies', [App\Http\Controllers\LovelyController::class, 'index'])->name("home");
    Route::post('/lovelies', [App\Http\Controllers\LovelyController::class, 'store'])->name('lovelies');

    //------------------ Profile -----------
    Route::post("/profiles/{user:username}/follow",[App\Http\Controllers\FollowsController::class,"store"])->name("follow");
     Route::get("/profiles/{user:username}/edit",[App\Http\Controllers\ProfilesController::class,"edit"])->middleware("can:edit,user");//******this milddlewar action is unauthorized, UserPolicy***
     Route::patch("/profiles/{user:username}",[App\Http\Controllers\ProfilesController::class,"update"])->middleware("can:edit,user");
     //---------Explore--
     Route::get("/explore",(\App\Http\Controllers\ExploreController::class));

     //-----LIKE-----------
     Route::post("/lovelies/{lovely}/like",[\App\Http\Controllers\LovelyLikesController::class,"store"]);
      Route::delete("/lovelies/{lovely}/like",[\App\Http\Controllers\LovelyLikesController::class,"destroy"]);

});

Route::get("/profiles/{user:username}",[App\Http\Controllers\ProfilesController::class,"show"])->name("profile"); //add directly user:name atribut


Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
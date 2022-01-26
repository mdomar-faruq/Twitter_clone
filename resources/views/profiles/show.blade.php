{{-- @extends('layouts.lovely')
@section('content') --}}
<x-lovely>

<header>
<div class="banar">
<img src="/images/banar3.jpg">
</div>
</header>
<footer class="banar_footer">
     <div>
       <h3><a href="">{{$user->name}}</a></h3>
       <small>Joined {{$user->created_at->diffForHumans()}}</small>
    </div>
    <div style="profile_img">
     <img src="{{$user->avatar}}" width="120" height="120">
    </div>
    <div style="display: flex; ">
    {{-- this Current_user methode my custome global methode,
     only current user Access edit profile  --}}
     {{-- @if (current_user()->is($user)) --}}

    @can("edit",$user)
    <a href="{{$user->path("edit")}}"><button type="submit" class="btn btn-success btn-sm">Edit Profile</button></a>
    @endcan
      {{-- @endif --}}

      {{-- follow button, Laracast This is called nonms blade component --}}
      {{-- not user string, :(clone) accese property user --}}
        <x-follow-button :user="$user"></x-follow-button>

    </div>
</footer>
<div class="tag">
    <small>Lorem ipsum dolor sit, amet consectetur adipisicing elit.minus natus dicta labore dolorum iste quibusdam error laborum tempore! Excepturi, delectus.</small>
</div>


  <!-- Content second part -->
  {{-- @include("_timeline",["lovelies"=> $user->lovelies]) --}}

  @include("_timeline",["lovelies" => $lovelies])


  </x-lovely>
{{-- @endsection --}}

<x-lovely>

    <div class="Explore-page">
        @foreach ($users as $user)
          <div>
           <a href="{{$user->path()}}"><img src="{{$user->avatar}}" alt="{{$user->username}}'s avatar" width="100px" height="100px">
            <h4>{{$user->name}}</h4></a>
          </div>
            @endforeach
</div>
{{ $users->links("pagination::bootstrap-4")}}
</x-lovely>

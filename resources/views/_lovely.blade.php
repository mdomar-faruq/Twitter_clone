
 <div class="uploadpost ">
     <div>
      <a href="{{$lovely->user->path()}}"><img  src="{{$lovely->user->avatar}}" height="60px" width="60px"></a>   {{-- Use uniq img --}}
    </div>
  <div class="uploadbody">
          <div>
            <a href="{{$lovely->user->path()}}"><h5>{{$lovely->user->name}}</h5></a>
              <p>{{$lovely->body}}</p>
          </div>
          {{-- Like and Dislike slot link to components --}}
         <x-like-button :lovely="$lovely"/>
          {{-- End slot --}}
    </div>
 </div>

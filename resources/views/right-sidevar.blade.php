
<div class="Friends">
            <ul>
                <li><h3>Following</h3></li>
                @forelse (current_user()->follows as $user)
                <li> <a href="{{route("profile",$user)}}">
                    <img  src={{ $user->avatar }} width="60" height="60">{{$user->name}}
                   </a>
                </li>
               @empty
               <li>
                 <h4>No friends Yet!</h4>
               </li>
                @endforelse

            </ul>
        </div>


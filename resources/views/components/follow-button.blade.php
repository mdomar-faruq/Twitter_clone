 @if (current_user()->isNot($user))
 <form method="POST" action="{{route("follow",$user->username)}}">
          @csrf
            <button type="submit" class="btn btn-primary btn-sm">
                {{ current_user()->following($user) ? "Unfollow Me" : "Follow Me" }}
            </button>
        </form>
@endif

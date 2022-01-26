
        <div class="Menu ">
            <ul>
                <li><a href="{{route("home")}}">Home</a></li>
                <li><a href="/explore">Explore</a></li>
                <li><a href="{{route("profile",auth()->user())}}">Profile</a></li>
                <li>
                    <form method="POST" action="/logout">
                    @csrf
                     <button class="btn btn-primary btn-sm">Logout</button>
                    </form>
                </li>
            </ul>


        </div>

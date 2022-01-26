        <div class="contentPost rounded-lg">

            <div class="tweetbox">
            <form method="POST" action="/lovelies" enctype="multipart/form-data">
                @csrf
            <textarea id="WriteDoc" name="body" cols="30" rows="10" placeholder="Whats up Doc?" required></textarea>
                <hr>
            <footer class="textariea-footer">
                {{-- image avatar --}}
                <a><img  src="{{auth()->user()->avatar}}" width="60" height="60">{{auth()->user()->name}}</a>
                <button type="submit" class="btn btn-Primary">
                publish
                </button>
            </footer>

            </form>

               @error('body')
              <p class="alert-danger" role="alert">{{$message}}</p>
              @enderror

          </div>
       </div>



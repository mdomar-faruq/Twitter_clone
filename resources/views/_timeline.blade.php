  <!-- Content second part -->
        <div class="content2">
     @forelse($lovelies as $lovely)
       @include('_lovely')
     @empty
       <div  style="color: white" class="m-2" >
           <h3>No Post yet!</h3>
       </div>
     @endforelse

    </div>
    <div class="mt-1">
    {{$lovelies->links("pagination::bootstrap-4")}}
    </div>

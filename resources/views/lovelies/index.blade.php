{{-- @extends('components.lovely')
@section('content') --}}

<x-lovely>

  <div>
      <!-- Content initial part -->
        @include('publish_lovely_panel')

        <!-- Content second part -->
       @include("_timeline")
  </div>

</x-lovely>

{{-- @endsection --}}

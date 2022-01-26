<x-master>
       {{-- Left Sidevar --}}
 @if (auth()->check())
    <div class="left-sidevar container">
    @include('Left_sidevar')
    </div>
 @endif

{{-- content part --}}
<div class="content">
 {{-- @yield('content') --}}
 {{$slot}}
</div>

{{-- Right Sidevar --}}
 @if (auth()->check())
    <div class="right-sidevar container">
    @include('right-sidevar')
    </div>
@endif
</x-master>

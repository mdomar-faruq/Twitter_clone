<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Only Friends</title>

    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/style.css')}}">

</head>
<body>
 <main>
<div id="app">
<div class="Controll">

    <div class="Header">
        <div class="logo">
            <h3>Love<span>Ly</span></h3>
        </div>
    </div>


{{$slot}}


      <div class="footer">
          {{-- <h1> footer</h1>--}}
        </div>


    </main>
</div>
</div>
<script src="http://unpkg.com/turbolinks"></script>
</body>
</html>

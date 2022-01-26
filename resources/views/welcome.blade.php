<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Lovely</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
         <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <style>
            body {
                font-family: 'Nunito', sans-serif;
                 background-color: lightseagreen;
                margin: 0;
                padding: 0;
            }
            .welcome{
            margin:200px 45%;
            }
            .welcome .b-edit{
                display: flex;
                gap: 10px;
                margin-left: 20px;
                margin-top: 10px;
               color: white;
                }
             .welcome h1{
                text-align: center;
                font-size: 50px;
                color: white;
            }
             .welcome h1 span{
                 color: black;
             }
            .welcome button{
                color: white;
            }
            .welcome a{
                color: white;
                text-decoration: none;
            }
        </style>
    </head>

    <body>

   <div class="welcome">
       @if (Route::has('login'))
       @auth
       <a href="{{ url('/lovelies') }}"><h1>LOVE<span>LY</span></h1></a>
       @else
         <h1>LOVE<span>LY</span></h1>
       <div class="b-edit">
       <a href="{{ route('login') }}"><button class="btn btn-primary btn-sm">Login</button></a>
        @if (Route::has('register'))
      <a href="{{ route('register') }}"><button class="btn btn-success btn-sm">Register</button></a>
        @endif
       </div>

       @endauth
      @endif
 </div>

</body>
</html>

<!DOCTYPE html>
<html>

<head>
    <title>Pelindo 4: RFID</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <!-- <nav class="navbar navbar-dark navbar-expand-lg bg-dark">
        <a class="navbar-brand" href="{{ route('products.index') }}">RFID</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="{{ route('scan.index') }}">Dashboard<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Data</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Admin</a>
                </li>
            </ul>
            <span class="navbar-text">

                Navbar text with an inline element
            </span>
            
        </div>
    </nav> -->

    <x-app-layout>
        <x-slot name="header">
        
    


</head>

<body>


    <div class="container">
        @yield('content')
    </div>

</body>
</x-slot>
</x-app-layout>
</html>
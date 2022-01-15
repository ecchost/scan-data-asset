<!DOCTYPE html>
<html>

<head>
    <title>Pelindo 4 Sistem Management Asset</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/create-admin.css">
    <link rel="stylesheet" type="text/css" href="/css/create-admin.css">
    <link rel="stylesheet" href="/AdminLTE/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/AdminLTE/dist/css/adminlte.min.css">
      {{-- <link rel="stylesheet" type="text/css" href="/css/trix.css">
  <script type="text/javascript" src="/js/trix.js"></script> --}}
</head>

<body>
    <x-app-layout>
        <x-slot name="header">
    
            <div class="container">
            @yield('content')
            </div>
            
        </x-slot>
    </x-app-layout>
</body>
</html>
<!doctype html>
<html lang="fr">
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

    @yield('style')  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/app.css">

    <!-- Owl-carousel-CSS -->
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui1.css">
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />  
   
    <!-- font-awesome-icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  
    <title>www.logart.ht - Votre partenaire local</title>
    
  </head>

  <body>   

    @include('layouts/partials/_nav')

    @yield('content')

    @include('layouts/partials/_footer')
    
    @yield('extra-js')    

  </body>
</html>
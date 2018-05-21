<!doctype html>
<html lang="fr">
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    @yield('style')
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/app.css">
       
     
    <!-- Owl-carousel-CSS -->
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui1.css">
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />  
   
    <!-- font-awesome-icons -->

    <!-- <link href="../css/font-awesome.css" rel="stylesheet"> -->
    <!-- //font-awesome-icons -->
    <!-- <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
        rel="stylesheet"> -->
    <!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet"> -->


   <!--  <script type="application/x-javascript">
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script> -->
  <!-- //custom-theme -->
  
    <title>Hello, world!</title>
    
  </head>

  <body>   

    @include('layouts/partials/_nav')

    @yield('content')

    @include('layouts/partials/_footer')
    
    @yield('extra-js')    

  </body>
</html>
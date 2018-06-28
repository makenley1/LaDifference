<!doctype html>
<html lang="fr">
  <head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    @yield('style')





    <link rel="stylesheet" href="css/app.css">   
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/contact.css">
    <link rel="stylesheet" href="../css/creditly.css">
    <link rel="stylesheet" href="../css/easy-responsiv-tabs.css">
    <link rel="stylesheet" href="../css/flexslider.css">
    <link rel="stylesheet" href="../css/font-awesome.css">
    <link rel="stylesheet" href="../css/jquery-ui1.css">
    <link rel="stylesheet" href="../css/shop.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style7.css">





<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/app.css">

    <!-- Owl-carousel-CSS -->
    <link rel="stylesheet" type="text/css" href="../css/jquery-ui1.css">
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />  
   
    <!-- font-awesome-icons -->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
        
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
  
    <title>www.logart.ht - Votre partenaire local</title>
    
  </head>

  <body>   

    @include('layouts/partials/_nav')

    @yield('content')

    @include('layouts/partials/_footer')
    
    @yield('extra-js')    

  </body>
</html>
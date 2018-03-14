<div class="small-top">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 date-sec">
        <div id="Date"></div>
      </div>
       
      <div class="col-lg-3 offset-lg-5">
        <div class="social-icon"> <a target="_blank" href="#" class=" fa fa-facebook"></a> <a target="_blank" href="#" class=" fa fa-twitter"></a> <a target="_blank" href="#" class=" fa fa-google-plus"></a> <a target="_blank" href="#" class=" fa fa-linkedin"></a> <a target="_blank" href="#" class=" fa fa-youtube"></a> <a target="_blank" href="#" class=" fa fa-vimeo-square"></a> </div>

        
      </div>
    </div>
  </div>
</div>
 
<div class="top-head left">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-lg-4">
        <h1>Grafreez News<small>Get the latest News</small></h1>
      </div>
       
      <div class="col-md-6 col-lg-3 ml-auto admin-bar hidden-sm-down">
        <nav class="nav nav-inline"> <a href="#" class="nav-link"><span class="ping"></span><i class="fa fa-envelope-o"></i></a> <a href="#" class="nav-link"><i class="fa fa-bell-o"></i></a> <a href="#" class="nav-link">Bruce Wayne <img class="img-fluid rounded-circle" src="http://grafreez.com/wp-content/temp_demos/river/img/admin-bg.jpg"></a> </nav>
      </div>
    </div>
  </div>
</div>

<section class="top-nav">
  <nav class="navbar navbar-expand-lg py-0">
    <div class="container">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
  
      <div class="collapse navbar-collapse" id="exCollapsingNavbar2">
        <ul class="nav navbar-nav" style="width: 77%;">
          <li class="nav-item {{Request::is('/') ? 'active' : ''}}"> <a class="nav-link" href="{{url('/')}}">Accueil</a> </li>
          <li class="nav-item {{Request::is('/contact') ? 'active' : ''}}"> <a class="nav-link" href="{{url('contact')}}">Contact </a> </li>
          <li class="nav-item {{Request::is('/aide') ? 'active' : ''}}"> <a class="nav-link" href="#">Aide</a> </li>
          <li class="nav-item {{Request::is('/business') ? 'active' : ''}}"> <a class="nav-link" href="#">Business</a> </li>
        </ul>
        <form class="ml-auto">
          <div class="search">
            <input type="text" class="form-control" maxlength="64" placeholder="Search" />

            <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
          </div>
        </form>
      </div>
    </div>
  </nav>
</section>


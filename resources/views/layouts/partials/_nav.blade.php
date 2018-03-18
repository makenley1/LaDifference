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
        <h1>MyHotel<small>Phare des Hotel Haitiens</small></h1>
      </div>
       
       @if(Auth::guest())
      <div class="col-md-6 col-lg-3 ml-auto admin-bar hidden-sm-down">
        <nav class="nav nav-inline">
          <a href="{{ route('login') }}" class="nav-link"><i class="fa fa-sign-in" style="width: 16px;"></i>Login</a>
          <a href="{{ route('register') }}" class="nav-link"><i class="far fa-registered"></i> Register</a>
        </nav>       
      </div>

      @else
      <div class="col-md-6 col-lg-3 ml-auto admin-bar hidden-sm-down">
        <nav class="nav nav-inline">
          <a href="#" class="nav-link">
            <span class="ping"></span> <i class="fa fa-envelope-o"></i>
          </a>
          <a href="#" class="nav-link"><i class="fa fa-bell-o"></i> </a>

          <li class="dropdown">
            <a href="{{ route('logout') }}" class="dropdown-toggle" data-toggle="dropdown">
              <img class="img-fluid rounded-circle" src="uploads/avatars/{{ Auth::user()->avatar }}">{{ Auth::user()->name }}<span class="caret"></span> 
            </a>

            <ul class="dropdown-menu" style="background-color: currentColor;">
              <li><a href="{{ url('/profile') }} ">Profil</a></li>
              <li><a href="{{ url('/logout') }} ">Logout</a></li>
            </ul>
          </li>
        </nav>
      </div>
      @endguest
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
          <li class=" {{Request::is('/') ? 'active' : null}}"> <a class="nav-link" href="{{url('/')}}">Accueil</a> </li>
          <li class=" {{Request::is('contact') ? 'active' : null}}"> <a class="nav-link" href="{{route('contact')}}">Contact </a> </li>
          <li class=" {{Request::is('aide') ? 'active' : null}}"> <a class="nav-link" href="{{route('aide')}}">Aide</a> </li>
          <li class=" {{Request::is('/business') ? 'active' : 'null'}}"> <a class="nav-link" href="#">Business</a> </li>
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


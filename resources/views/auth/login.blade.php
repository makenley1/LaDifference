@extends('layouts.app')

   @section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
   @endsection 

   @section('style')
      <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
   @stop
@section('content')
<section class="section-login">
  <div class="center-container">
    <!--header-->
    <div class="header-w3l">
      <h1>Se connecter</h1>
    </div>
    <!--//header-->
    
    <!--main-->
    <!-- fa mail fa-envelope -->
    <div class="main-content-agile">
      <h2>Identifiez-vous &nbsp;&nbsp;&nbsp;<i class="fa fa-user"></i> </h2>
      <h3></h3>
    
      <div class="sub-main-w3">

      <form method="post" action="{{ route('login') }}">
        {{ csrf_field() }}
        <span id="reauth-email" class="reauth-email"></span>
        <div class="field">
          <i class="fa fa-envelope"></i>
          <input type="email" id="email" name="email" placeholder="Entrez votre addresse mail" required autofocus>

          @if ($errors->has('email'))
               <span class="help-block">
                   <strong>{{ $errors->first('email') }}</strong>
               </span>
          @endif
        </div>
        <div class="field">
          <i class="fa fa-key"></i>
          <input type="password" id="inputPassword" placeholder="Entrez votre Mot de passe" name="password" required>
        </div>
        <div class="text-info">
          <input type="checkbox" value="remember-me" name="remember" {{ old('remember') ? 'checked' : '' }}> Restez connect&eacute;
        </div>
        <p><i class="fa fa-lock"></i> 
          Votre information est en sécurité avec nous 
        </p>
        <input type="submit" value="Se connecter">
      </form>
      <a href="{{ url('/auth/github') }}" class="btn btn-github">
        <i class="fab fa-github" style="width: 20px;"></i> Github</a>
      <a href="{{ url('/auth/twitter') }}" class="btn btn-twitter">
        <i class="fab fa-twitter" style="width: 20px;"></i> Twitter</a>
      <a href="{{ url('/auth/google') }}" class="btn btn-google">
        <i class="fab fa-google" style="width: 20px;"></i> Google</a>
    </div>
    <a class="btn btn-primary" href="{{ route('password.request') }}"> Mot de passe oubli&eacute; ? </a>        
  </div>

  <!--//main-->
  </div>
  </section>  
@stop
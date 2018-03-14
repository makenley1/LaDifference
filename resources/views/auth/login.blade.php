@extends('layouts.app')

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

      <form action="#" method="post">
        <div class="field">
          <i class="fa fa-envelope"></i>
          <input placeholder="Entrez votre addresse mail" name="mail" type="email" required="">
        </div>
        <div class="field">
          <i class="fa fa-key"></i>
          <input  placeholder="Entrez votre Mot de passe" name="Phone" type="tel" required="">
        </div>
        <div class="text-info">
          <input type="checkbox"> Restez connect&eacute;
        </div>
        <p><i class="fa fa-lock"></i> 
          Votre information est en sécurité avec nous 
        </p>
        <input type="submit" value="Get Access Today">
      </form>
    </div>
  </div>
  <!--//main-->
  
  </div>
  </section>  
@stop
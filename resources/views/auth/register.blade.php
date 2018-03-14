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
    <div class="main-content-agile">
      <h2>Identifiez-vous<i class="fa mail fa-envelope"></i> </h2>
      <h3>Join us for free to get instant email updates</h3>
    
      <div class="sub-main-w3">

      <form action="#" method="post">
        <div class="field">
          <i class="fa fa-user"></i>
          <input placeholder="Full Name" name="mail" type="text" required="">
        </div>
        <div class="field">
          <i class="fa fa-envelope"></i>
          <input placeholder="E-mail" name="mail" type="email" required="">
        </div>
        <div class="field">
          <i class="fa fa-phone"></i>
          <input  placeholder="Phone Number" name="Phone" type="tel" required="">
        </div>
        <p><i class="fa fa-lock"></i> Your information is safe with us</p>
        <input type="submit" value="Get Access Today">
      </form>
    </div>
  </div>
  <!--//main-->
  
  </div>
  </section>  
@stop
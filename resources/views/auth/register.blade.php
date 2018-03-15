@extends('layouts.app')

@section('content')
  
<section class="section-login">
<div class="center-container">

  <!--header-->
  <div class="header-w3l">
    <h1>Access Subscribe Form</h1>
  </div>
  <!--//header-->
  
  <!--main-->
  <div class="main-content-agile">
      <h2>Get Free Email Updates!<i class="fa mail fa-envelope"></i></h2>
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
  
  <!--footer-->
  <div class="footer">
    <p>&copy; 2018 Access Subscribe Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
  </div>
  <!--//footer-->
  
</div>
  </section>  
@stop
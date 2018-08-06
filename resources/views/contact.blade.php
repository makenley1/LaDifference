@extends ('layouts/app')

@section('style')
  <link rel="stylesheet" href="css/contact.css">    
@endsection

@section('content')

  <!-- banner -->
<div class="banner_top innerpage" id="home"></div>

  <!-- //banner -->
  <!-- top Products -->
  <div class="ads-grid_shop">
    <div class="shop_inner_inf">
      <h3 class="head" style="margin-top: 1.7em;">Contactez nous !!!</h3>
      <div class="inner_section_w3ls">
        <div class="col-md-7 contact_grid_right">

          <h6>S'il vous plaît remplissez ce formulaire pour nous contacter.</h6>

          <form action="/postMail" method="post">
            {{csrf_field()}}
            <div class="col-md-6 col-sm-6 contact_left_grid">
              <input type="text" name="Name" placeholder="Nom" required="">
              <input type="email" name="email" placeholder="Mail" required="">
            </div>
            <div class="col-md-6 col-sm-6 contact_left_grid">
              <input type="text" name="Telephone" placeholder="Telephone : xxxxxxxx" pattern="[0-9]{8}" required="">
              <input type="text" name="subject" placeholder="Sujet" required="">
            </div>
            <div class="clearfix"> </div>
            <textarea name="message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
            <input type="submit" value="Soumettre">
            <input type="reset" class="translate" value="nettoyer">
          </form>
        </div>
        <div class="col-md-5 contact-left">
          <h6>Information de Contact </h6>
          <div class="visit">
            <div class="col-md-2 col-sm-2 col-xs-2 contact-icon">
              <span class="fa fa-home" aria-hidden="true"></span>
            </div>
            <div class="col-md-10 col-sm-10 col-xs-10 contact-text">
              <h4>Visitez nous</h4>
              <p>Agent Marketing, Tabarre 43.</p>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="mail-us">
            <div class="col-md-2 col-sm-2 col-xs-2 contact-icon">
              <span class="fa fa-envelope" aria-hidden="true"></span>
            </div>
            <div class="col-md-10 col-sm-10 col-xs-10 contact-text">
              <h4>Envoyez nous un mail</h4>
              <p><a href="mailto:info@example.com">info@example.com</a></p>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="call">
            <div class="col-md-2 col-sm-2 col-xs-2 contact-icon">
              <span class="fa fa-phone" aria-hidden="true"></span>
            </div>
            <div class="col-md-10 col-sm-10 col-xs-10 contact-text">
              <h4>Appelez-nous</h4>
              <p>+(509) 4374-7773</p>
            </div>
            <div class="clearfix"></div>
          </div>
          <div class="visit">
            <div class="col-md-2 col-sm-2 col-xs-2 contact-icon">
              <span class="fa fa-fax" aria-hidden="true"></span>
            </div>
            <div class="col-md-10 col-sm-10 col-xs-10 contact-text">
              <h4>Fax</h4>
              <p>+(509) 3744-2327</p>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="clearfix"> </div>

      </div>

      <div class="clearfix"></div>

    </div>
  </div>
  

  <!-- js -->
  <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
  <!-- //js -->
  <!-- cart-js -->
  <script src="js/minicart.js"></script>
  
  <!-- //cart-js -->
  <!-- /nav -->
  <script src="js/modernizr-2.6.2.min.js"></script>
  <script src="js/classie.js"></script>
<!--  -->
  <!-- //nav -->
  <!-- script for responsive tabs -->
  <script src="js/easy-responsive-tabs.js"></script>

  <!--search-bar-->
  <script src="js/search.js"></script>
  <!--//search-bar-->
  <!-- start-smoth-scrolling -->
  <script type="text/javascript" src="js/move-top.js"></script>
  <script type="text/javascript" src="js/easing.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function ($) {
      $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({
          scrollTop: $(this.hash).offset().top
        }, 1000);
      });
    });
  </script>
  <!-- //end-smoth-scrolling -->
  <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
@stop

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection

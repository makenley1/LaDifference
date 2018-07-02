@extends('layouts/app')        

@section('style')
  <link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
@stop

@section('content')
<div class="banner_top innerpage" id="home"></div>
  <section class="top-nav">
    <!-- //banner -->
  <!-- top Products -->
    <div class="ads-grid_shop">
      <div class="shop_inner_inf">
      <!-- tittle heading -->
      <!-- //tittle heading -->
      <!-- product left -->
        <div class="side-bar col-md-3 col-lg-3">
          <!-- price range -->
          <div class="range">
            <h3 class="agileits-sear-head">&Eacute;chelle des prix</h3>
              <ul class="dropdown-menu6">
                <li> <div id="slider-range"></div>
                  <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                </li>
              </ul>
          </div>
        <!-- //price range -->
        <!--preference -->
        <div class="left-side">
          <h3 class="agileits-sear-head">Departements</h3>
          <ul>
            @foreach ($departement as $Departement)
            <li>
                <!-- <input type="checkbox" class="checked"> -->
                <a href=" {{ route('landing-page', ['Departement' => $Departement->slug]) }} "> <span class="span notranslate">{{ $Departement -> nom }}</span> </a>
            </li> 
            @endforeach              
            
          </ul>
        </div>
        <!-- // preference -->
        <!-- discounts -->
        <div class="left-side">
          <h3 class="agileits-sear-head">Rabais</h3>
          <ul>
            <li>
              <input type="checkbox" class="checked">
              <span class="span">5% or Plus</span>
            </li>
            <li>
              <input type="checkbox" class="checked">
              <span class="span">10% or Plus</span>
            </li>
            <li>
              <input type="checkbox" class="checked">
              <span class="span">20% or Plus</span>
            </li>
            <li>
              <input type="checkbox" class="checked">
              <span class="span">30% or Plus</span>
            </li>
            <li>
              <input type="checkbox" class="checked">
              <span class="span">50% or Plus</span>
            </li>
            <li>
              <input type="checkbox" class="checked">
              <span class="span">60% or Plus</span>
            </li>
          </ul>
        </div>
        <!-- //discounts -->
        <!-- reviews -->
        <!-- //reviews -->
        
      </div>
      <!-- //product left -->
      <!-- product right -->
      <div class="left-ads-display col-md-9 col-lg-9">
        <div class="wrapper_top_shop">

          <div class="container">
              @if (session()->has('success_message'))
                <div class="alert alert-success">
                  {{ session()->get('success_message') }}
                </div>
              @endif

              @if (count($errors) > 0)
                <div class="alert alert-danger">
                  <ul>
                    @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                    @endforeach
                  </ul>    
                </div>
              @endif    
            </div>
            
          <div class="clearfix"></div>
          <!-- product-sec1 -->
          <div class="product-sec1">
            <!--/mens-->
            <div class="product-sec1">
            <!--/mens-->

            @forelse ($products as $product)
              <div class="col-md-4 product-men">
              <div class="product-shoe-info shoe">
                <div class="men-pro-item">
                  <div class="men-thumb-item">
                    <img src="{{ asset('storage/'.$product->image) }}" alt="{{ $product->nom }}" style="width: 221px; height: 147px;">
                    <div class="men-cart-pro">
                      <div class="inner-men-cart-pro">
                        <a href="{{ route('show', $product->slug) }}" class="link-product-add-cart">Plus</a>
                      </div>
                    </div>
                  </div>
                  <div class="item-info-product">
                    <h4>
                      <a href="{{ route('show', $product->slug) }}" class="notranslate" >{{ $product->nom }} </a>
                    </h4>
                    <div class="info-product-price">
                      <div class="grid_meta">
                        <div class="product_price">
                          <div class="grid-price ">
                            <span class="money notranslate">{{ $product->slug }}</span>
                          </div>
                        </div>
                        <ul class="stars">
                          <?php
                            for ($i=1; $i<= $product->star; $i++) {
                                echo '<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>';
                            }
                          ?>
                        </ul>
                          
                      </div>
                      <div class="shoe single-item hvr-outline-out">
                        <form action="#" method="post">
                          <input type="hidden" name="cmd" value="_cart">
                          <input type="hidden" name="add" value="1">
                          <input type="hidden" name="shoe_item" value="Bella Toes">
                          <input type="hidden" name="amount" value="675.00">
                          <button type="submit" class="shoe-cart pshoe-cart"><i class="fab fa-vuejs"></i></button>

                          <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                        </form>

                      </div>
                    </div>
                    <div class="clearfix"></div>
                  </div>
                </div>
              </div>
            </div>
            @empty
              <div style="text-align: center; color: black; font-size: xx-large; font-weight: bold; font-style: italic; font-family: arial; ">Aucun hotel trouver pour ce departement !!!</div>
            @endforelse
    
          <div class="clearfix"></div>
          
          <div class="col-md-6 shop_left shp">
            {!! $products -> links(); !!}
          </div> 
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
</section>


    <div class="clearfix"> </div>
  </div>
  
  <!-- //newsletter-->
  <!-- footer -->

  <!-- js -->
  <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
  <!-- //js -->
  <!-- cart-js -->
  <script src="js/minicart.js"></script>
  <script>
    shoe.render();

    shoe.cart.on('shoe_checkout', function (evt) {
      var items, len, i;

      if (this.subtotal() > 0) {
        items = this.items();

        for (i = 0, len = items.length; i < len; i++) {}
      }
    });
  </script>
  <!-- //cart-js -->
  <!-- /nav -->
  <script src="js/modernizr-2.6.2.min.js"></script>
  <script src="js/classie.js"></script>

    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>

  <!-- //nav -->
  <!--search-bar-->
  <script src="js/search.js"></script>
  <!--//search-bar-->
  <!-- price range (top products) -->
  <script src="js/jquery-ui.js"></script>
  <script>
    //<![CDATA[ 
    $(window).load(function () {
      $("#slider-range").slider({
        range: true,
        min: 0,
        max: 25000,
        values: [400, 20000],
        slide: function (event, ui) {
          $("#amount").val("HTG" + ui.values[0] + " - HTG" + ui.values[1]);
        }
      });
      $("#amount").val("HTG" + $("#slider-range").slider("values", 0) + " - HTG" + $("#slider-range").slider("values", 1));

    }); //]]>
  </script>
  <!-- //price range (top products) -->

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

  </section>
@stop
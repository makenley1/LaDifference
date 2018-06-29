@extends('layouts/app')

@section('style')
  <link rel="stylesheet" type="text/css" href="../css/shop.css">
  <link rel="stylesheet" type="text/css" href="../css/style7.css">
  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <!-- <link rel="stylesheet" type="text/css" href="../css/jQuery-ui1.css"> -->
  <link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
  <link rel="stylesheet" type="text/css" href="../css/flexslider.css">
  <link rel="stylesheet" type="text/css" href="../css/easy-responsive-tabs.css">
  <link rel="stylesheet" type="text/css" href="../css/creditly.css">
  <link rel="stylesheet" type="text/css" href="../css/contact.css">
  <link rel="stylesheet" type="text/css" href="../css/checkout.css">
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="../css/app.css">
  <!-- <link rel="stylesheet" type="text/css" href="../css/about.css"> -->
@endsection

@section('content')
	<!-- banner -->
	<div class="banner_top innerpage" id="home">
			</div>

	<!-- //banner -->
	<!-- top Products -->
	<div class="ads-grid_shop">
		<div class="shop_inner_inf">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">
						<ul class="slides">
							@if ($product->images)					
								@foreach ( json_decode ($product->images, true) as $image) 
									<li data-thumb="{{ asset('storage/'.$image) }}">
									<div class="thumb-image"> <img src="{{ asset('storage/'.$image) }}" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								@endforeach
							@endif		
							</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3 class="capitalyze">{{ $product->nom }}</h3>
				<p><span class="item_price"></span>
					
				</p>
				<div class="rating1">
					<ul class="stars" style="letter-spacing: 1px;">
						<?php
							for ($i=1; $i <= $product->star ; $i++) {
								echo '<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>';
							}
						?>
					</ul>
				</div>
				<div class="description">
					<h5 class="capitalyze">{{ $product->adresse}} </h5>
					
				</div>
				<div class="occasional">
					<div class="clearfix"> </div>
				</div>
				<div class="occasion-cart">
					<div class="shoe single-item single_page_b">
	
						<a href="{{route('res', $product->slug) }}" class="btn btn-success btn-lg">Faire une r&eacute;servation</a>
					</div>

				</div>
				<ul class="social-nav model-3d-0 footer-social social single_page">
					<li class="share">Partager sur : </li>
					<li>
						<a href="#" class="facebook">
							<div class="front"><i class="fab fa-facebook" aria-hidden="true"></i></div>
							<div class="back"><i class="fab fa-facebook" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="twitter">
							<div class="front"><i class="fab fa-twitter" aria-hidden="true"></i></div>
							<div class="back"><i class="fab fa-twitter" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="instagram">
							<div class="front"><i class="fab fa-instagram" aria-hidden="true"></i></div>
							<div class="back"><i class="fab fa-instagram" aria-hidden="true"></i></div>
						</a>
					</li>
					<li>
						<a href="#" class="pinterest">
							<div class="front"><i class="fab fa-linkedin" aria-hidden="true"></i></div>
							<div class="back"><i class="fab fa-linkedin" aria-hidden="true"></i></div>
						</a>
					</li>
				</ul>

			</div>
			<div class="clearfix"> </div>
			<!--/tabs-->
			<div class="responsive_tabs">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>Description</li>
						<li>Avis</li>
						<li>Information</li>
					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<div class="tab1">

							<div class="single_page">
								<h6>{{ $product->nom }}</h6>
								<p>{!! $product->description !!}</p>
							</div>
						</div>
						<!--//tab_one-->
						<div class="tab2">

							<div class="single_page">
								<div class="bootstrap-tab-text-grids">
									<div class="bootstrap-tab-text-grid">
										<div class="bootstrap-tab-text-grid-left">
											<img src="images/t1.jpg" alt=" " class="img-responsive">
										</div>
										<div class="bootstrap-tab-text-grid-right">
											<ul>
												<li><a href="#">Admin</a></li>
												<li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</a></li>
											</ul>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget.Ut enim ad minima veniam,
												quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis
												autem vel eum iure reprehenderit.</p>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="add-review">
										<h4>add a review</h4>
										<form action="#" method="post">
											<input type="text" name="Name" required="Name">
											<input type="email" name="Email" required="Email">
											<textarea name="Message" required=""></textarea>
											<input type="submit" value="SEND">
										</form>
									</div>
								</div>

							</div>
						</div>
						<div class="tab3">

							<div class="single_page">
								<h6>Hôtel</h6>
								<p>Un hôtel est un établissement commercial qui offre un service d'hébergement payant en chambres meublées à une clientèle de passage. En général, un hôtel assure l'entretien quotidien des chambres et des lits, ainsi que la fourniture du linge de toilette.</p>
								<p class="para">Le mot latin hospitalis (du radical de hospes, hospitis avec le suffixe -alis), ou celui de hospitalitas, a donné les mots dérivés hôte, hôtel, hôtellerie, hôpital ou encore hospitalité</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--//tabs-->
			<!-- /new_arrivals -->
			<div class="new_arrivals">
				<h3>Similaire Hotel</h3>
				<!-- /womens -->
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="../images/port-au-prince/El-rancho/107508223.jpg" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="el-rancho" class="link-product-add-cart">plus</a>
									</div>
								</div>
								
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">El Rancho </a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">HTG 3490.00</span>
											</div>
										</div>
										<ul class="stars" style="letter-spacing: 1px;">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Shuberry Heels">
											<input type="hidden" name="amount" value="575.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fab fa-vuejs" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="../images/port-au-prince/Marriott/53864453.jpg" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">plus</a>
									</div>
								</div>
								
							</div>
							<div class="item-info-product">
								<h4>
									<a href="mariott">Mariott </a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">HTG 2765.00</span>
											</div>
										</div>
										<ul class="stars" style="letter-spacing: 1px;">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Red Bellies">
											<input type="hidden" name="amount" value="325.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fab fa-vuejs" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="../images/port-au-prince/royal-oasis/37490725.jpg" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">plus</a>
									</div>
								</div>
								
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Royal Oasis</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">HTG 4300.00</span>
											</div>
										</div>
										<ul class="stars" style="letter-spacing: 1px;">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Running Shoes">
											<input type="hidden" name="amount" value="875.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fab fa-vuejs" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 product-men women_two">
					<div class="product-shoe-info shoe">
						<div class="men-pro-item">
							<div class="men-thumb-item">
								<img src="../images/port-au-prince/villa-therese/27796896.jpg" alt="villa-therese" style="height: 159px;">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.html" class="link-product-add-cart">plus</a>
									</div>
								</div>
								
							</div>
							<div class="item-info-product">
								<h4>
									<a href="single.html">Villa-Therese</a>
								</h4>
								<div class="info-product-price">
									<div class="grid_meta">
										<div class="product_price">
											<div class="grid-price ">
												<span class="money ">HTG 1740.00</span>
											</div>
										</div>
										<ul class="stars" style="letter-spacing: 1px;">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="shoe single-item hvr-outline-out">
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="shoe_item" value="Sukun Casuals">
											<input type="hidden" name="amount" value="505.00">
											<button type="submit" class="shoe-cart pshoe-cart"><i class="fab fa-vuejs" aria-hidden="true"></i></button>

											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>

									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>

				<!-- //womens -->
				<div class="clearfix"></div>
			</div>
			<!--//new_arrivals-->


		</div>
	</div>
	<!-- //top products -->
	<div class="mid_slider_w3lsagile">
		<div class="col-md-3 mid_slider_text">
			<h5>Voir plus</h5>
		</div>
		<div class="col-md-9 mid_slider_info">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class=""></li>
					<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					<li data-target="#myCarousel" data-slide-to="3" class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/villa-therese.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/mariott6.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/royal-oasis.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/samata.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
						</div>
					</div>
					<div class="item active">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/auberge.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/cap-lamandou.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/el-rancho.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/lemangier.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/lemarien.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/lerelais.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/auber-cayes.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-3 slidering">
								<div class="thumbnail"><img src="{{ asset('images/hotels/villa-therese.jpg') }}" alt="Image" style="width: 300px; height: 260px;"></div>
							</div>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
				<!-- The Modal -->

			</div>
		</div>

		<div class="clearfix"> </div>
	</div>
	
	<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<!-- cart-js -->
	<script src="../js/minicart.js"></script>
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
	<script src="../js/modernizr-2.6.2.min.js"></script>
	<script src="../js/classie.js"></script>
	<script src="../js/demo1.js"></script>
	<!-- //nav -->
	<!-- single -->
	<script src="../js/imagezoom.js"></script>
	<!-- single -->
	<!-- script for responsive tabs -->
	<script src="../js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!-- FlexSlider -->
	<script src="../js/jquery.flexslider.js"></script>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			});
		});
	</script>
	<!-- //FlexSlider-->

	<!--search-bar-->
	<script src="../js/search.js"></script>
	<!--//search-bar-->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="../js/move-top.js"></script>
	<script type="text/javascript" src="../js/easing.js"></script>
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
	<script type="text/javascript" src="../js/bootstrap-3.1.1.min.js"></script>

@stop
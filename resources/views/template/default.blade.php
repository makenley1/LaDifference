<!DOCTYPE html>
<html lang="en">
<head>
	<title>Faite votre r&eacute;servation</title>
	<link rel="stylesheet" type="text/css" href="{{URL::to('/asset/css/bootstrap.min.css')}}">
	@yield('header')
	
</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navs">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<h1 style="color: #fff; font-family: Arial; font-size: 2em; font-weight: bold;">MyHotel</h1>
		</div>

		<div class="collapse navbar-collapse" id="navs">
			<ul class="nav navbar-nav">
				<li style="margin-top: 10px; font-weight: bold;"><a href="{{url('/')}}">Accueil</a></li>
			</ul>

			
		</div>
	</div>
</nav>

<div class="container-fluid">
<div class="row">
	@yield('content')
</div>

<div class="row" id="footer">
		<p class="text-center">Tous droits réservés © 2018</p>
</div>	
</div>
</body>
<script type="text/javascript" src="{{URL::to('/asset/jquery.js')}}"></script>
<script type="text/javascript" src="{{URL::to('/asset/js/bootstrap.min.js')}}"></script>
@yield('scripts')
</html>
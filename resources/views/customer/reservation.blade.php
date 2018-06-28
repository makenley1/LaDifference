<!DOCTYPE html>
<html>
<head>
	<title>Bienvenue !!!</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" type="text/css" href="{{URL::to('/asset/css/bootstrap.min.css')}}">
  	<style type="text/css">
  		#site-header{
  			background: #003333;
  		}
  	</style>
</head>
<body>
<div class="container-fluid">
	<div class="row" id="site-header">
		<h1 class="text-center" style=".text-align: center; margin: 6px;"><img src="{{URL::to('/images/myhotel.png')}}" style="height: 58px;"></h1>
	</div>
</div>
<div class="alert alert-warning">
	<p>NOTE: Votre réservation n'est valable que 24 heures après la soumission. S'il vous plaît visitez notre hôtel et apporter une copie imprimée de vos coordonnées..</p>
</div>

<div class="container">
	<div class="col-lg-4">
		<h3>Informations client</h3>
		<ul>
			<li>Nom de famille: {{$reservation->customer->lname}}</li>
			<li>Prénom: {{$reservation->customer->fname}}</li>
			<li>Deuxième nom: {{$reservation->customer->mname}}</li>
			<li>Sexe: {{$reservation->customer->gender}}</li>
			<li>Date de naissance: {{$reservation->customer->dob}}</li>
			<li>Adresse: {{$reservation->customer->address}}</li>
			<li>Contact: {{$reservation->customer->contact}}</li>
		</ul>
	</div>
	<div class="col-lg-4">
		<h3>Détails de la réservation</h3>
		<ul>
			<li>Numéro de chambre: {{$reservation->rooms}}</li>
			<li>Type de chambre: {{$reservation->type}}</li>
			<li>Arrivée: {{$reservation->checkin}}</li>
			<li>Départ: {{$reservation->checkout}}</li>
			<!-- <li>Prix: {{$reservation->price}} HTG</li> -->
		</ul>
	</div>
	<div class="col-lg-4">
		<h3>QR CODE</h3>
		<iframe src="https://api.qrserver.com/v1/create-qr-code/?size=150x150&data={{$reservation->barcode}}" height="170px" width="170px"></iframe>
		<h3><button class="btn btn-success" onclick="print()">Print</button></h3>
		
	</div>
</div>



</body>
<script type="text/javascript" src="{{URL::to('/asset/jquery.js')}}"></script>
<script type="text/javascript" src="{{URL::to('/asset/js/bootstrap.min.js')}}"></script>
<script type="text/javascript">
	$(document).ready(function(){
		function print() {
		    window.print();
		}
	});
</script>
</html>
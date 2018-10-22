<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>I2E Flight</title>
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="webjars/font-awesome/4.5.0/css/fontawesome.min.css"
	rel="stylesheet">
<script src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="webjars/propper.js/1.14.3/propper.js"></script>
<style>
.navbar {
	font-size: 26px;
	font-style: bold;
	color: white;
	background: #00796B;
}

li {
	color: white;
}

.btn {
	font-size: 22px;
}

.fa {
	color: white;
}

i {
	padding: 10px;
}

.navbar-brand {
	font-size: 26px;
}
</style>

</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><i class="fa fa-plane"></i></a>
		</div>
		<ul class="nav navbar-nav pull-right">
			<li><a href="#"><i class="fa fa-plane"></i>Flights</a></li>
			<li><a href="#"><i class="fa fa-university"></i>Hotels</a></li>
			<li><a href="#"><i class="fa fa-car"></i>Taxis</a></li>
			<li><a href="#"><i class="fa fa-info-circle"></i>Info</a></li>
			<li><a href="#"><i class="fa  fa-suitcase"></i>Travel Advice</a></li>
			<li><button class="btn btn-warning navbar-btn ">Book
					Now</button></li>
		</ul>
	</div>
	</nav>

	<div class=" container jumbotron">
		<h1 class="text-center">Welcome to FlySky Tour!</h1>
		<p>Fligh High is a private Tourism sector which is organized to
			help visitors visit the most visited areas in Africa We selected
			Fight highly visited areas from Africa and we make you journey
			successful and memorable from the day of your fligh until you came
			back!</p>

		<p class="text-center">Currently we have 3 days of flight per week. Join us to discover Africa</p>
		
		<h3 class="text-center">
			<a href="#">Book now </a> and visit the capes of Africa!
		</h3>
		<div class="row">
			<div class="col-md-3">
				<input type="text" class="form-control input-lg" name="departure">
			</div>
			<div class="col-md-3">
				<input type="text" class="form-control input-lg" name="arrival">
			</div>
			<div class="col-md-2">
				<input type="text" class="form-control input-lg" name="date">
			</div>
			<div class="col-md-2">
				<input type="text" class="form-control input-lg" name="travel_class">
			</div>

			<div class="col-md-2">
				<button class="btn  btn-primary pull-right">Search</button>
			</div>
		</div>
	</div>
	<div class="container">
    <footer class="pt-4 my-md-5 pt-md-5 border-top">
       <div class="row">
         <div class="col-md-3">
           <small class="d-block mb-3 text-muted">FlySky &copy; 2018-2019</small>
         </div>
         <div class="col-md-3">
           <h5>Features</h5>
           <ul class="list-unstyled text-small">
             <li><a class="text-muted" href="#">Flights</a></li>
             <li><a class="text-muted" href="#">Hotels</a></li>
             <li><a class="text-muted" href="#">Taxis</a></li>
           
             <li><a class="text-muted" href="#">Travel Advice</a></li>
           </ul>
         </div>
         <div class="col-md-3">
           <h5>Resources</h5>
           <ul class="list-unstyled text-small">
             <li><a class="text-muted" href="#">Popular Travels</a></li>
             <li><a class="text-muted" href="#">Booking help</a></li>
             <li><a class="text-muted" href="#">Hotel Advice</a></li>
               <li><a class="text-muted" href="#">Info</a></li>
           </ul>
         </div>
         <div class="col-md-3">
           <h5>About</h5>
           <ul class="list-unstyled text-small">
             <li><a class="text-muted" href="#">Testimonies</a></li>
             <li><a class="text-muted" href="#">Gallery</a></li>
             <li><a class="text-muted" href="#">Privacy</a></li>
             <li><a class="text-muted" href="#">Terms</a></li>
           </ul>
         </div>
       </div>
     </footer>
   </div>
</body>
</html>
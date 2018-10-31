<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico">
<title>SkyFlyer</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link href="css/owl.carousel.css" rel="stylesheet">
<link href="css/owl.theme.default.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="webjars/propper.js/1.14.3/propper.js"></script>
<script src="js/ie-emulation-modes-warning.js"></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#departure_date").datepicker({
			dateFormat: 'yy-mm-dd'
		});
	});
	$(function() {
		$("#arrival_date").datepicker({
			dateFormat: 'yy-mm-dd'
		});
	});
</script>
</head>
<body id="page-top">
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top"><img
					src="imgs/ilogo.png" alt="Lattes theme logo"
					style="transform: rotate(-225deg); height: 50px;"></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="#about"><i
							class="fa fa-plane "></i>Flights</a></li>
					<li><a class="page-scroll" href="#hotel"><i
							class="fa fa-university"></i>Hotels</a></li>
					<li><a class="page-scroll" href="#portfolio"><i
							class="fa fa-car "></i>Taxis</a></li>
					<li><a class="page-scroll" href="#team"><i
							class="fa fa-suitcase "></i>Travel Advice</a></li>
					<li><a class="page-scroll" href="#testimonial"><i
							class="fa fa-car "></i>Testimonial</a></li>
					<li><a class="page-scroll" href="#contact"><i
							class="fa fa-user "></i>Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- Header -->
	<header>
		<div class="container">
			<div class="slider-container">
				<div class="intro-text">
					<div class="intro-lead-in">Welcome To SkyFlyer!</div>
					<div class="intro-heading">Fly High with SkyFlyers!</div>
					<a href="#about" class="page-scroll btn btn-xl"
						style="padding: 20px; margin: 25px;">Book Now & Fly with Us!</a>

				</div>

			</div>
		</div>
	</header>
	<section id="about" class="light-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Flights</h2>
						<p>
							We Fly High 3 days a week to the well known Tourist sites of
							Africa. We give you pleasing service to make your vacation
							memorable through out your life. Join us to descover the heart of
							original Africa. Do you need More information ?<a href="#">Here
								are the Answers!</a>
						</p>
					</div>
<form action="${pageContext.request.contextPath}/search">
					<div class="row" style="padding: 25px;">
						<div class="col-md-3 col-xl-3">
							<label>Departure AirPort</label> <select
								class="form-control input-lg" name="departure">
								<c:forEach items="${airports}" var="airport">
									<option>${airport.getAirport_location()}</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-md-3 col-xl-3">
							<label>Arrival Airport</label> <select
								class="form-control input-lg" name="arrival">
								<c:forEach items="${airports}" var="airport">
									<option>${airport.getAirport_location()}</option>
								</c:forEach>
							</select>
						</div>

						<div class="col-md-2 col-xl-2">
						<label>Departure Date</label>
			<input type="text" id="departure_date" class="form-control input-lg"
								name="dparture_date">
								
						</div>
						<div class="col-md-2 col-xl-2">
							<label>Arrival Date</label>
							 <input type="text" id="arrival_date"
								class="form-control input-lg" name="arrival_date">
						</div>

						<div class="col-md-2">
						<label></label>
						
							<button class="btn btn-xl btn-primary pull-right" style="height:55px;">Search</button>
						</div>
					</div>
				</div>
				<table class="table table-striped">
				<thead class="thead-dark">
				<tr>
				<td scope="col"> Departure Airport</td>
				<td scope="col">Arrival Airport</td>
				<td scope="col">Departure Date</td>
				<th scope="col">Arrival Date</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${flights}" var="flight">
				<tr>
				<td>${flight.getDeparture_airport().getAirport_name()}</td>
				<td>${flight.getArrival_airport().getAirport_name()}</td>
				<td>${flight.getDeparture_date() }</td>
				<td>${flight.getArrival_date() }</td>
				</tr>
				</c:forEach>
				
				</tbody>
				
				
				</table>
			</div>
			<br> <br>
			</form>
	</section>
	<section id="hotel">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="section-title">
					<h2>Standardize Hotel Choices For You!</h2>
				</div>
			</div>
			<div class="row">

				<!-- about module -->
				<div class="col-md-3 text-center">
					<div class="mz-module-about">
						<i><img src="imgs/hotels/afropo.jpg"
							style="width: 250px; height: 130px;"></i>
						<h3>AfroPolitan Hotel</h3>
						<form method="post" action="" style="padding-bottom: 20px;">
							<button class="btn btn-xl btn-primary">Book Room</button>
						</form>
						<p>On entering this charming hotel in Addis Abeba, you will
							immediately sense its special intimate atmosphere that makes you
							feel like being in your own florentine home. Each detail has been
							passionately chosen and each room deserves a visit.</p>
					</div>
				</div>
				<!-- end about module -->
				<!-- about module -->
				<div class="col-md-3 text-center">
					<div class="mz-module-about">
						<i><img src="imgs/hotels/whitehouse.jpg"
							style="width: 250px; height: 130px;"></i>
						<h3>WhiteHouse Hotel</h3>
						<form method="post" action="" style="padding-bottom: 20px;">
							<button class="btn btn-xl btn-primary">Book Room</button>
						</form>
						<p>On entering this charming hotel in Addis Abeba, you will
							immediately sense its special intimate atmosphere that makes you
							feel like being in your own florentine home. Each detail has been
							passionately chosen and each room deserves a visit..</p>
					</div>
				</div>
				<!-- end about module -->
				<!-- about module -->
				<div class="col-md-3 text-center">
					<div class="mz-module-about">
						<i><img src="imgs/hotels/nexus.jpg"
							style="width: 250px; height: 130px;"></i>
						<h3>Nexus Hotel</h3>
						<form method="post" action="" style="padding-bottom: 20px;">
							<button class="btn btn-xl btn-primary">Book Room</button>
						</form>
						<p>On entering this charming hotel in Addis Abeba, you will
							immediately sense its special intimate atmosphere that makes you
							feel like being in your own florentine home. Each detail has been
							passionately chosen and each room deserves a visit.</p>
					</div>
				</div>
				<!-- end about module -->
				<!-- about module -->
				<div class="col-md-3 text-center">
					<div class="mz-module-about">
						<i><img src="imgs/hotels/sheraton_addis.jpg"
							style="width: 250px; height: 130px;"></i>
						<h3>Sheraton Addis Hotel</h3>
						<form method="post" action="" style="padding-bottom: 20px;">
							<button class="btn btn-xl btn-primary">Book Room</button>
						</form>
						<p>On entering this charming hotel in Addis Abeba, you will
							immediately sense its special intimate atmosphere that makes you
							feel like being in your own florentine home. Each detail has been
							passionately chosen and each room deserves a visit.</p>
					</div>
				</div>
				<!-- end about module -->
			</div>

			<!-- /.container -->
	</section>
	<section id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="skills-text">
						<h2>Testimonies</h2>
						<p>Our Customers are our best testimonies how it feels and
							looks like when you fly with Us. Sky Flyers are one of the top
							rated tour company in Africa. Join Us to explore you your Self.</p>
					</div>
				</div>
				<div class="col-md-6">
					<!-- skill bar item -->
					<div class="skillbar-item">
						<div class="skillbar-score">
							<span class="score">95</span><span class="percent">%</span>
						</div>
						<div class="skillbar" data-percent="95%">
							<h3>Flight Confort</h3>
							<div class="skillbar-bar">
								<div class="skillbar-percent" style="width: 90%;"></div>
							</div>
						</div>
					</div>
					<!-- skill bar item -->
					<div class="skillbar-item">
						<div class="skillbar-score">
							<span class="score">96</span><span class="percent">%</span>
						</div>
						<div class="skillbar" data-percent="96%">
							<h3>Hotel Service</h3>
							<div class="skillbar-bar">
								<div class="skillbar-percent" style="width: 98%;"></div>
							</div>
						</div>
					</div>
					<!-- skill bar item -->
					<div class="skillbar-item">
						<div class="skillbar-score">
							<span class="score">94</span><span class="percent">%</span>
						</div>
						<div class="skillbar" data-percent="94%">
							<h3>Customer Service</h3>
							<div class="skillbar-bar">
								<div class="skillbar-percent" style="width: 85%;"></div>
							</div>
						</div>
					</div>
					<!-- skill bar item -->
					<div class="skillbar-item">
						<div class="skillbar-score">
							<span class="score">90</span><span class="percent">%</span>
						</div>
						<div class="skillbar" data-percent="90%">
							<h3>Taxi Service</h3>
							<div class="skillbar-bar">
								<div class="skillbar-percent" style="width: 70%;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="overlay-dark bg-img1 dark-bg short-section">
		<div class="container text-center">
			<div class="row">
				<div class="col-md-3 mb-sm-30">
					<div class="counter-item">
						<h2 data-count="59">59</h2>
						<h6>Success Awards</h6>
					</div>
				</div>
				<div class="col-md-3 mb-sm-30">
					<div class="counter-item">
						<h2 data-count="1054">2564</h2>
						<h6>Regular Clients</h6>
					</div>
				</div>
				<div class="col-md-3 mb-sm-30">
					<div class="counter-item">
						<h2 data-count="34">25</h2>
						<h6>Team Members</h6>
					</div>
				</div>
				<div class="col-md-3 mb-sm-30">
					<div class="counter-item">
						<h2 data-count="154">8</h2>
						<h6>Destinations of Flight</h6>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="portfolio" class="light-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Taxi Service</h2>
						<p>Our taxi service is the best way to show our work, you can
							see here a big range of our choices to travel locally or to drive
							to your hotel. Check them all and you will find what you are
							looking for.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- start portfolio item -->
				<div class="col-md-4">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="imgs/taxis/gemilang.png" alt="img02"
								class="img-responsive" style="height: 265px;" />
							<figcaption>
								<h2>City Bus</h2>
								<p>Best Choice for City Tourism</p>
								<a href="#" data-toggle="modal" data-target="#Modal-1">Rent
									Now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
				<!-- start portfolio item -->
				<div class="col-md-4">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="imgs/taxis/higer.jpeg" alt="img02"
								class="img-responsive" style="height: 265px;" />
							<figcaption>
								<h2>Higer Bus</h2>
								<p>Suitable for Long Travel</p>
								<a href="#" data-toggle="modal" data-target="#Modal-2">Rent
									Now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
				<!-- start portfolio item -->
				<div class="col-md-4">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="imgs/taxis/taxi3.jpeg" alt="img02"
								class="img-responsive" style="height: 265px;" />
							<figcaption>
								<h2>Personal Taxi</h2>
								<p>Suitable for 2 to 3 Person</p>
								<a href="#" data-toggle="modal" data-target="#Modal-3">Rent
									Now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
			</div>
			<div class="row">
				<!-- start portfolio item -->
				<div class="col-md-4">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="imgs/taxis/shifen.jpg" alt="img02"
								class="img-responsive" style="height: 265px;" />
							<figcaption>
								<h2>Dolphins</h2>
								<p>Fast and Reliable</p>
								<a href="#" data-toggle="modal" data-target="#Modal-4">Rent
									Now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
				<!-- start portfolio item -->
				<div class="col-md-4">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="imgs/taxis/taxi1.jpg" alt="img02"
								class="img-responsive" style="height: 265px;" />
							<figcaption>
								<h2>Special Taxis</h2>
								<p>StandBy for You</p>
								<a href="#" data-toggle="modal" data-target="#Modal-5">Rent
									Now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
				<!-- start portfolio item -->
				<div class="col-md-4">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="imgs/taxis/taxi2.jpg" alt="img02"
								class="img-responsive" style="height: 265px;" />
							<figcaption>
								<h2>You Need More Taxis</h2>
								<p>We have more</p>
								<a href="#" data-toggle="modal" data-target="#Modal-2">Rent
									Now</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
			</div>
		</div>
		<!-- end container -->
	</section>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Our Travel Partners</h2>
						<p>These Are our Partners who who use service for their
							employee as a whole</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="owl-carousel">
						<div class="item">
							<div class="partner-logo">
								<img src="imgs/partner/desta.png" alt="partners">
							</div>
						</div>
						<div class="item">
							<div class="partner-logo">
								<img src="imgs/partner/eic.jpg" alt="partners">
							</div>
						</div>
						<div class="item">
							<div class="partner-logo">
								<img src="imgs/partner/electric.jpg" alt="partners">
							</div>
						</div>
						<div class="item">
							<div class="partner-logo">
								<img src="imgs/partner/import.jpg" alt="partners">
							</div>
						</div>
						<div class="item">
							<div class="partner-logo">
								<img src="imgs/partner/sustainer.png" alt="partners">
							</div>
						</div>
						<div class="item">
							<div class="partner-logo">
								<img src="imgs/partner/ztec.png" alt="partners">
							</div>
						</div>
						<div class="item">
							<div class="partner-logo">
								<img src="imgs/partner/eic.jpg" alt="partners">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="team" class="light-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Our Travel Advice Team</h2>
						<p>Our Team are dedicated to giving you a pleasing services.
							We are ready to help in any dimension you need contact us!</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- team member item -->
				<div class="col-md-3">
					<div class="team-item">
						<div class="team-image">
							<img src="imgs/help/desk_f1.jpg" class="img-responsive"
								alt="author" style="height: 200px;">
						</div>
						<div class="team-text">
							<h3>Laura Frank</h3>

							<div class="team-location">Brussels, Belgium</div>

							<div class="team-position">
								Customer Service
								<button class="btn btn-lg btn-success">
									<i class="fa fa-phone"></i>
								</button>
							</div>
							<p>Mida sit una namet, cons uectetur adipiscing adon elit.
								Aliquam vitae barasa droma.</p>
						</div>

					</div>
				</div>
				<!-- end team member item -->
				<!-- team member item -->
				<div class="col-md-3">
					<div class="team-item">
						<div class="team-image">
							<img src="imgs/help/desk_f2.png" class="img-responsive"
								alt="author" style="height: 200px;">
						</div>
						<div class="team-text">
							<h3>Beti Mulatu</h3>
							<div class="team-location">Addis Abeba, Ethiopia</div>
							<div class="team-position">
								Customer Service
								<button class="btn btn-lg btn-success">
									<i class="fa fa-phone"></i>
							</div>
							<p>Worsa dona namet, cons uectetur dipiscing adon elit.
								Aliquam vitae fringilla unda mir.</p>
						</div>
					</div>
				</div>
				<!-- end team member item -->
				<!-- team member item -->
				<div class="col-md-3">
					<div class="team-item">
						<div class="team-image">
							<img src="imgs/help/desk_f3.jpg" class="img-responsive"
								alt="author" style="height: 200px;">
						</div>
						<div class="team-text">
							<h3>Rich Devid</h3>
							<div class="team-location">Addis Abeba, Ethiopia</div>
							<div class="team-position">
								Customer Service
								<button class="btn btn-lg btn-success">
									<i class="fa fa-phone"></i>
							</div>
							<p>Aradan bes namet, cons uectetur moiscing adon elit.
								Aliquam vitae fringilla unda augue.</p>
						</div>
					</div>
				</div>
				<!-- end team member item -->
				<!-- team member item -->
				<div class="col-md-3">
					<div class="team-item">
						<div class="team-image">
							<img src="imgs/help/desk_f4.jpeg" class="img-responsive"
								alt="author" style="height: 200px;">
						</div>
						<div class="team-text">
							<h3>Mercy Luk</h3>
							<div class="team-location">Paris, France</div>
							<div class="team-position">
								Advicer
								<button class="btn btn-lg btn-success">
									<i class="fa fa-phone"></i>
							</div>
							<p>Dolor sit don namet, cons uectetur beriscing adon elit.
								Aliquam vitae fringilla unda.</p>
						</div>
					</div>
				</div>
				<!-- end team member item -->
			</div>
		</div>
	</section>
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Contact Us</h2>
						<p>
							If you have some Questions or need Help! Please Contact Us!<br>We
							make Cool and Clean Design for your Business
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<h3>Our Business Office</h3>
					<p>MonnikenStraat 3, 108 Leuven Belgium</p>
					<p>
						<i class="fa fa-phone"></i> +324 101 101 101
					</p>
					<p>
						<i class="fa fa-envelope"></i> ethiorise@skyflyer.com
					</p>
				</div>
				<div class="col-md-3">
					<h3>Business Hours</h3>
					<p>
						<i class="fa fa-clock-o"></i> <span class="day">Weekdays:</span><span>9am
							to 4pm</span>
					</p>
					<p>
						<i class="fa fa-clock-o"></i> <span class="day">Saturday:</span><span>9am
							to 1pm</span>
					</p>
					<p>
						<i class="fa fa-clock-o"></i> <span class="day">Sunday:</span><span>Closed</span>
					</p>
				</div>
				<div class="col-md-6">
					<form name="sentMessage" id="contactForm" novalidate="">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Your Name *" id="name" required=""
										data-validation-required-message="Please enter your name.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Your Email *" id="email" required=""
										data-validation-required-message="Please enter your email address.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<textarea class="form-control" placeholder="Your Message *"
										id="message" required=""
										data-validation-required-message="Please enter a message."></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="row">
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button type="submit" class="btn">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<p id="back-top">
		<a href="#top"><i class="fa fa-angle-up"></i></a>
	</p>
	<footer>
		<div class="container text-center">
			<p>
				<a href="http://ethiorise.com"><span>skyFlyer @2018-2019</span></a>
			</p>
		</div>
	</footer>

	<!-- Modal for portfolio item 1 -->
	<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-1">Gemilang City Bus</h4>
				</div>
				<div class="modal-body">
					<img src="imgs/taxis/gemilang.png" alt="img01"
						class="img-responsive" />
					<div class="modal-works">
						<span>Suitable for </span><span>City Tour</span>

					</div>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum
						necessitatibus saepe</p>

				</div>
				<div class="row text-center">
					<form method="post" action="${pageContext.request.contextPath}/taxiForm" style="padding: 20px;">
						<button class="btn btn-lg btn-primary text-center">Rent
							Now</button>
					</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 2 -->
	<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-2">Higer Bus</h4>
				</div>
				<div class="modal-body">
					<img src="imgs/taxis/higer.jpeg" alt="img01" class="img-responsive" />
					<div class="modal-works">
						<span>Suitable for</span><span>Long Journey</span>
					</div>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum
						necessitatibus saepe</p>
				</div>
				<div class="row text-center">
					<form method="post" action="" style="padding: 20px;">
						<button class="btn btn-lg btn-primary text-center">Rent
							Now</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 3 -->
	<div class="modal fade" id="Modal-3" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-3">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-3">Personal Taxi</h4>
				</div>
				<div class="modal-body">
					<img src="imgs/taxis/taxi3.jpeg" alt="img01" class="img-responsive" />
					<div class="modal-works">
						<span>Suitable for </span><span>Personal Transport</span>
					</div>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum
						necessitatibus saepe</p>
				</div>
				<div class="row text-center">
					<form method="post" action="" style="padding: 20px;">
						<button class="btn btn-lg btn-primary text-center">Rent
							Now</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 4 -->
	<div class="modal fade" id="Modal-4" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-4">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-4">Dolphins</h4>
				</div>
				<div class="modal-body">
					<img src="imgs/taxis/shifen.jpg" alt="img01" class="img-responsive" />
					<div class="modal-works">
						<span>Suitable for </span><span>Family Transport</span>
					</div>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum
						necessitatibus saepe</p>
				</div>
				<div class="row text-center">
					<form method="post" action="" style="padding: 20px;">
						<button class="btn btn-lg btn-primary text-center">Rent
							Now</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal for portfolio item 5 -->
	<div class="modal fade" id="Modal-5" tabindex="-1" role="dialog"
		aria-labelledby="Modal-label-5">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="Modal-label-5">Special Taxis</h4>
				</div>
				<div class="modal-body">
					<img src="imgs/taxis/taxi1.jpg" alt="img01" class="img-responsive" />
					<div class="modal-works">
						<span>Suitable For</span><span>Delivery</span>
					</div>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum
						necessitatibus saepe</p>
				</div>
				<div class="row text-center">
					<form method="post" action="" style="padding: 20px;">
						<button class="btn btn-lg btn-primary text-center">Rent
							Now</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
			================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- 	<script -->
	<!-- 		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
	<script-->
		
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js">
	</script> 
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/cbpAnimatedHeader.js"></script>
	<script src="js/theme-scripts.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
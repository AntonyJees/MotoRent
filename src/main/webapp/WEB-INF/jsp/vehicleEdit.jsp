<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>MotoRent</title>

<!-- Google font -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="assets/css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="assets/css/slick.css" />
<link type="text/css" rel="stylesheet" href="assets/css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet"
	href="assets/css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="../assets/css/style.css" />
<link type="text/css" rel="stylesheet" href="../assets/css/motorent.css" />


</head>
<body>
	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->

		<!-- MAIN HEADER -->
		<nav class="navbar navbar-expand-lg navbar-light bg-danger">
			<a class="navbar-brand header-title" href="#">Motorent</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">

<li class="nav-item"><a class="nav-link link-title"
						href="../shopHome">Home</a></li>
					<li class="nav-item"><a class="nav-link link-title"
						href="../addvehicle">Add Vehicle</a></li>
		<!-- 		<li class="nav-item"><a class="nav-link link-title"
						href="../viewvehicle">View Vehicles</a></li>   -->	
					<li class="nav-item"><a class="nav-link link-title"
						href="../viewBookings">View Bookings</a></li>
<li class="nav-item"><a class="nav-link link-title"
						href="shopprofile">Profile</a></li>
						<li class="nav-item"><a class="nav-link link-title"
						href="logout">SignOut</a></li>
				</ul>
			</div>

		</nav>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<!-- Billing Details -->
					<div class="billing-details">
						<div class="section-title">
							<h3 class="title">Edit Vehicle</h3>
						</div>
						<form action="../saveEdit" method="post">
							<div class="form-group p-2">
								<input class="input" type="text" name="companyName"
									value="${av.companyName }">
							</div>
							<div class="form-group p-2">
								<input class="input" type="text" name="vehicleName"
									value="${av.vehicleName }">
							</div>
							<div class="form-group p-2">
								<input class="input" type="text" name="model"
									value="${av.model }">
							</div>
							<div class="form-group p-2">
								<select class="form-control" name="type"
									id="exampleFormControlSelect1">
									<option>Vehicle Type</option>
									<option>Car</option>
									<option>Bikes</option>
									<option>Scooter</option>
									<option>XUV</option>
								</select>
							</div>
							<div class="form-group p-2">
								<input class="input" type="text" name="manufactureYear"
									value="${av.manufactureYear }">
							</div>
							<div class="form-group p-2">
								<input class="input" type="text" name="distance"
									value="${av.distance }">
							</div>
							<div class="form-group p-2">
								<input class="input" type="text" name="vehicleNo"
									value="${av.vehicleNo }">
							</div>
							<div class="form-group p-2">
								<input class="input" type="text" name="cost" value="${av.cost }">
							</div>
							<div class="form-group p-2">
								<select class="form-control" value="${av.status }" name="status"
									id="exampleFormControlSelect1">
									<option>Status</option>
									<option>Available</option>
									<option>Not Available</option>

								</select>
							</div>
							<div class="form-group p-2">
								<button class=" btn-outline-danger btn-lg " type="submit" >Edit</button>
							</div>
						</form>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
		<!-- /NAVIGATION -->





		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>1734
											Stonecoal Road</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categories</h3>
								<ul class="footer-links">
									<li><a href="#">Hot deals</a></li>
									<li><a href="#">Laptops</a></li>
									<li><a href="#">Smartphones</a></li>
									<li><a href="#">Cameras</a></li>
									<li><a href="#">Accessories</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">My Account</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							<span class="copyright"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>
									document.write(new Date().getFullYear());
								</script> All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/slick.min.js"></script>
		<script src="assets/js/nouislider.min.js"></script>
		<script src="assets/js/jquery.zoom.min.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>

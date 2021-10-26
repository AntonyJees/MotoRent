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
<link type="text/css" rel="stylesheet" href="assets/css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>
	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<h1 style="color: white;margin-top: 20px;">MotoRent</h1>
							</a>
						</div>
					</div>
					<!-- /LOGO -->

					<!-- SEARCH BAR -->
					<div class="col-md-6">
						<div class="header-search">
							<form action="vehicleSearch" enctype="multipart/form-data">
								<select name="type" class="input-select">
									<option value="0">All Categories</option>
									<option>Car</option>
									<option>Bikes</option>
									<option>Scooter</option>
									<option>XUV</option>
								</select> <input class="input" name="search" placeholder="Search here">
								<button class="search-btn">Search</button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-3 clearfix">
						<div class="header-ctn">
							<!-- Wishlist -->
							<!-- Menu Toogle -->
							<div class="menu-toggle">
								<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
								</a>
							</div>
							<!-- /Menu Toogle -->
							
							<ul class="header-links pull-right">
								<li>
									<h3 style="color: white; margin-top: 10px;">
										Hi,<label style="text-transform: capitalize;">${p.userreg.firstname }</label>
									</h3>
								</li>
								<li><div class="dropdown">
										<button class="btn btn-primary dropdown-toggle" type="button"
											data-toggle="dropdown">
											My Account <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" style="color: #2B2D42;">
											<li><a href="userprofile">Profile</a></li>
											<li><a href="logout">Sign Out</a></li>
										</ul>
									</div></li>
							</ul>

						</div>
					</div>
					<!-- /ACCOUNT -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<nav id="navigation">
		<!-- container -->
		<div class="container">
			<!-- responsive-nav -->
			<div id="responsive-nav">
				<!-- NAV -->
				<ul class="main-nav nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					
					<li><a href="userOrders">My Orders</a></li>
				</ul>
				<!-- /NAV -->
			</div>
			<!-- /responsive-nav -->
		</div>
		<!-- /container -->
	</nav>
	<!-- /NAVIGATION -->




	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<!-- section title -->
				<div class="col-md-12">
					<div class="section-title">
						<h3 class="title">Our Vehicles</h3>

					</div>
					<!-- /section title -->
					<div class="row">
						<c:forEach var="v" items="${v}">
							<div class="col-md-6" style="margin-top: 20px;">
								<div class="card" style="max-width: 540px;">
									<div class="row g-0">
										<div class="col-md-7 border border-danger">
											<img src="images/${v.image }" alt="...">
										</div>
										<div class="col-md-5 mt-2">
											<div class="card-body">
												<h5 class="card-title">${v.companyName }</h5>
												<h4 class="card-text">${v.vehicleName }</h4>
												<h5 class="card-text">${v.cost}Rs/day</h5>
												<a href="view/${v.id }"
													class="btn btn-primary stretched-link">View</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->


		
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
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut.</p>
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
										document
												.write(new Date().getFullYear());
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


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>MotoRent</title>
<style type="text/css">
.header-links li a {
	color: #FFF;
}
</style>
<!-- Google font -->
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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
<link type="text/css" rel="stylesheet" href="assets/css/motorent.css" />


</head>
<body>
	<!-- HEADER -->
	<header>
		<!-- MAIN HEADER -->
		<nav class="navbar navbar-expand-lg navbar-light bg-danger">
  <a class="navbar-brand header-title" href="#">Motorent</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      
     
      <li class="nav-item">
        <a class="nav-link link-title" href="userSignUp">User SignUp</a>
      </li>
      <li class="nav-item">
        <a class="nav-link link-title" href="signin">SignIn</a>
      </li>
      
    </ul>
  </div>
  
</nav>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->

	
	

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<!-- Billing Details -->
					<div class="billing-details">
						<div class="section-title">
							<h3 class="title ">Register</h3>
						</div>


						<form action="register">
							<div class="form-group">
								<input class="input" type="text" name="shopname"
									placeholder="Shop Name">
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email"
									placeholder="Email">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="phone"
									placeholder="Phone No">
							</div>
							<div class="form-group">
								<select class="form-control" name="district"
									id="exampleFormControlSelect1">
									<option>District</option>
									<option value="alapuzha">Alapuzha</option>
									<option value="ernakulam">Ernakulam</option>
									<option value="idukki">Idukki</option>
									<option value="kannur">Kannur</option>
									<option value="kasaragod">Kasaragod</option>
									<option value="kollam">Kollam</option>
									<option value="kottayam">Kottayam</option>
									<option value="kozhikode">Kozhikode</option>
									<option value="malapuram">Malapuram</option>
									<option value="palakkad">Palakkad</option>
									<option value="pathanamthitta">Pathanamthitta</option>
									<option value="thiruvananthapuram">Thiruvananthapuram</option>
									<option value="thrissur">Thrissur</option>
									<option value="wayanad">Wayanad</option>
								</select>
							</div>
							<div class="form-group">
								<input class="input" type="text" name="city" placeholder="City">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="street"
									placeholder="Street">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="pincode"
									placeholder="Pincode">
							</div>
							<div class="form-group">
								<input class="input" type="password" name="password"
									placeholder="Password">
							</div>
							<input type="hidden" value="1" name="usertype">
							<div class="form-group">
								<input class="input" type="submit" value="Register">
							</div>
						</form>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>


		
	</div>



	</div>
	</div>
	</div>
	<!-- /row -->
	</div>
	<!-- /container -->
	</div>
	<!-- /NEWSLETTER -->

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
								<li><a href="#">Bikes</a></li>
								<li><a href="#">Cars</a></li>
								<li><a href="#">XUV</a></li>
								<li><a href="#">Scooter</a></li>
								
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




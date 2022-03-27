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
	<nav class="navbar navbar-expand-lg navbar-light bg-danger">
  <a class="navbar-brand fs-1 text" href="#">MotoRent</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link fs-3 text" href="../userHomes">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link fs-3 text" href="../userOrders">My Bookings</a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link fs-3 text dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         My Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="userprofile">Profile</a>
          <a class="dropdown-item" href="logout">SignOut</a>
         
        </div>
      </li>
    </ul>
  </div>
</nav>

	<!-- NAVIGATION -->
	
	

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				
				<div calss="col-md-12">
				<c:forEach var="v" items="${v}">
					<!-- Order Details -->
					<div class="col-md-5 order-details">
					<form action="../order" enctype="multipart/form-data">
						<div class="section-title text-center">
							<h3 class="title">Your Order</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div>
									<strong>VEHICLE</strong>
								</div>
								<div>
									<strong>PRICE</strong>
								</div>
							</div>
							<div class="order-products">
								<div class="order-col">
									<div>${v.companyName}&nbsp;${ v.vehicleName  }&nbsp;${v.model }</div>
									<div><span>&#8377;</span>${v.cost }/Day</div>
								</div>
								<div class="order-col">
									<div>
										<div id="reserve_form">

											<div id="pickup_date">
												<p>
													<label class="form-group">Pickup Date:</label><input type="date"
														class="textbox" id="pick_date" name="pickup_date"
														onchange="cal()" />
														<input type="hidden" id="cost" value="${v.cost }">
														<input type="hidden" id="cost"  name="vid" value="${v.id }">
														
														
												</p>
											</div>


											<div style="float: right;">
												<div id="dropoff_date">
													<p>
														<label class="form-group">Dropoff Date:</label><input
															type="date" class="textbox" id="drop_date"
															name="dropoff_date" onchange="cal()" />
													</p>
												</div>

												<div id="numdays">
													<label class="form-group">Number of days:</label><input
														type="text" class="textbox" id="numdays2" name="numdays" />
														
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="order-col">
								<div>
									<strong>TOTAL</strong>
								</div>
								<div>
									<strong class="order-total"><span>&#8377;</span><label id="totalcost"></label></strong>
									<input type="hidden" id="price"  value="0" name="price"/>
								</div>
							</div>
						</div>
						<div class="payment-method">
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-1"> <label
									for="payment-1"> <span></span> Direct Bank Transfer
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-2"> <label
									for="payment-2"> <span></span> Cheque Payment
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-3"> <label
									for="payment-3"> <span></span> Paypal System
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua.</p>
								</div>
							</div>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="terms"> <label for="terms">
								<span></span> I've read and accept the <a href="#">terms &
									conditions</a>
							</label>
						</div>
						
						<input type="submit" class="primary-btn order-submit" value="Place order">
						</form>
					</div>
					
					<!-- /Order Details -->
				</c:forEach>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- NEWSLETTER -->
	<div id="newsletter" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="newsletter">
						<p>
							Sign Up for the <strong>NEWSLETTER</strong>
						</p>
						<form>
							<input class="input" type="email" placeholder="Enter Your Email">
							<button class="newsletter-btn">
								<i class="fa fa-envelope"></i> Subscribe
							</button>
						</form>
						<ul class="newsletter-follow">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						</ul>
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
							</script>
							All rights reserved | This template is made with <i
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
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/slick.min.js"></script>
	<script src="../assets/js/nouislider.min.js"></script>
	<script src="../assets/js/jquery.zoom.min.js"></script>
	<script src="../assets/js/main.js"></script>
	<script type="text/javascript">
	var days = 0;
		function GetDays() {
			var dropdt = new Date(document.getElementById("drop_date").value);
			var pickdt = new Date(document.getElementById("pick_date").value);
			
			 days = parseInt((dropdt - pickdt) / (24 * 3600 * 1000));
			 
			return days;
		}

		function cal() {
			if (document.getElementById("drop_date")) {
				document.getElementById("numdays2").value = GetDays();
				totalcost();
			}
		}
		
		function totalcost(){
		var cost = document.getElementById("cost").value;
			var price = days*cost;
			document.getElementById('totalcost').innerHTML=price;
			document.getElementById("price").value = price;
		}
	</script>
</body>
</html>

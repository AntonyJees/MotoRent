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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Google font -->
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
          <a class="dropdown-item" href="../userprofile">Profile</a>
          <a class="dropdown-item" href="../logout">SignOut</a>
         
        </div>
      </li>
    </ul>
  </div>
</nav>

	<!-- NAVIGATION -->
	
	<!-- /NAVIGATION -->

	<!-- BREADCRUMB -->
	
	<!-- /BREADCRUMB -->

	<!-- SECTION -->
	<c:forEach var="v" items="${v}">
	<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row border p-3 border-danger">
					<!-- Product main img -->
					
					
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class=" col-md-5">
						<div>
							<div>
							
							<img src="../images/${v.image }" class="" alt="..." width="572px" height="360px">	
							</div>

							
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5 p-5 ml-1">
						<div class="product-details">
							<h2 class="product-name">${v.companyName}&nbsp;${v.vehicleName}&nbsp;${v.model}</h2>
							
							<div>
								<h3 class="product-price"><span>&#8377;</span>${v.cost }/Day</h3>
								<span class="product-available">${v.status }</span><br>
									<h4 class="product-price" style="color: black;">Manufacture Year:</h4>
								<h3 class="product-price">${v.manufactureYear }</h3>
								<br>
									<h4 class="product-price" style="color: black;">Distance Travelled:</h4>
								<h3 class="product-price">${v.distance }KM</h3>
								<br>
									<h4 class="product-price" style="color: black;">Vehicle No:</h4>
								<h3 class="product-price">${v.vehicleNo }</h3>
							</div>
							<div class="add-to-cart">
								
								<a  href="../book/${v.id}" class="btn btn-outline-danger">Book</a>
							</div>

							

							
 						

						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
	</c:forEach>
		<!-- /SECTION -->
	<!-- /SECTION -->


	
	<!-- NEWSLETTER -->
	

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
			<script src="../assets/js/bootstrap.min.js"></script>
			<script src="../assets/js/slick.min.js"></script>
			<script src="../assets/js/nouislider.min.js"></script>
			<script src="../assets/js/jquery.zoom.min.js"></script>
			<script src="../assets/js/main.js"></script>
<script type="text/javascript">
        function GetDays(){
                var dropdt = new Date(document.getElementById("drop_date").value);
                var pickdt = new Date(document.getElementById("pick_date").value);
                return parseInt((dropdt - pickdt) / (24 * 3600 * 1000));
        }

        function cal(){
        if(document.getElementById("drop_date")){
            document.getElementById("numdays2").value=GetDays();
        }  
    }

    </script>
</body>
</html>

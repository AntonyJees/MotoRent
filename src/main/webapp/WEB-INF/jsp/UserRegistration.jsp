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
		<!-- TOP HEADER -->

		<!-- MAIN HEADER -->
		<nav class="navbar navbar-expand-lg navbar-light bg-danger">
  <a class="navbar-brand header-title" href="#">Motorent</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      
     
      <li class="nav-item">
        <a class="nav-link link-title" href="shopSignUp">Shop SignUp</a>
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

	<!-- NAVIGATION -->
	
	<!-- /NAVIGATION -->
<div class="billing-details">

<div class="section-title" >
							<h3  class="title ">Register</h3>
						</div>
	<div class="row">
		<div class="col-md-3"></div>  
		<div class="col-md-6">
			<form action="userregistration">
				<div class="form-group">
					<input class="input" type="text" id="firstname" name="firstname"
						placeholder="First Name">
						<div id="fname"></div>
				</div>
				<div class="form-group">
					<input class="input" type="text" id="lastname" name="lastname"
						placeholder="Last Name">
						<div id="lname"></div>
				</div>
				<div class="form-group">
					<input class="input" type="email" id="email" name="email" placeholder="Email">
					<div id="mail"></div>
				</div>
				<div class="form-group">
					<input class="input" type="text" id="phone" name="phone"
						placeholder="Phone No">
						<div id="phoneerr"></div>
				</div>

				<div class="form-group">
					<input class="input" type="text" id="li" name="license"
						placeholder="License No">
						<div id="lerr"></div>
				</div>
				<div class="form-group">
					<input class="input" type="password"  id="pwd" name="password"
						placeholder="Password">
						<div id="pwderr"></div>
				</div>
				
				
				<input type="hidden" value="0" name="usertype">
				<div class="form-group">
					<input class="input" type="submit" onclick="return validateForm()" value="Register">
				</div>
			</form>




		</div>
		<div class="col-md-3"></div>
	</div>
</div>
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
	<script>
function validateForm() {
	  var x=document.getElementById("firstname").value;
	  if (x == "") {
	    var data="Name must be fill!";
	    var str=data.fontcolor("red");
	    document.getElementById("fname").innerHTML=str;
	    document.myForm.firstname.focus();
	    return false;
	  }
	  else{
		  document.getElementById("fname").innerHTML="";
	  }
	var y=document.getElementById("lastname").value;
	  if (y == "") {
	    var data="Name must be fill!";
	    var str=data.fontcolor("red");
	    document.getElementById("lname").innerHTML=str;
	    return false;
	  }
	  else{
		  document.getElementById("lname").innerHTML="";
	  }
	  var email = document.getElementById("email").value;
	  if (email == "")
	  {
		  var data="Please enter your email";
		  var str=data.fontcolor("red");
		    document.getElementById("mail").innerHTML=str;
		    document.myForm.email.focus();
	  return false;
	  }
	  else{
		  document.getElementById("mail").innerHTML="";
	  }
	  var phone=document.getElementById("phone").value;
	  if (phone == "")
	  {
		  var data="Please enter your phone no";
		  var str=data.fontcolor("red");
		    document.getElementById("phoneerr").innerHTML=str;
		    document.myForm.phone.focus();
	  return false;
	  }
	  else{
		  document.getElementById("phoneerr").innerHTML="";
	  }
	  if (isNaN(phone)){
		  data="Enter Numeric value only";
		  var str=data.fontcolor("red");
		  document.getElementById("phoneerr").innerHTML=str;
		  document.myForm.phone.focus();
		  return false;
		}
	  var license=document.getElementById("license").value;
	  if (license == "") {
	    var data="License must be fill!";
	    var str=data.fontcolor("red");
	    document.getElementById("lerr").innerHTML=str;
	    return false;
	  }
	  else{
		  document.getElementById("lerr").innerHTML="";
	  }
	  var pwd=document.getElementById("password").value;
	  if (pwd == "") {
	    var data="please enter your password";
	    var str=data.fontcolor("red");
	    document.getElementById("pwderr").innerHTML=str;
	    document.myForm.pass.focus();
	    return false;
	  }
	  else{
		  document.getElementById("pwderr").innerHTML="";
	  }
	  /*  
	  if(document.myForm.course.selectedIndex==0)
	  {  var data="Please selet your course";
	  var str=data.fontcolor("red");
	    document.getElementById("Course").innerHTML=str;
	  document.myForm.course.focus();
	  return false;
	  }
	  var gender=document.getElementById("radio1").value;
	  if (gender == "") {
		  alert(gender);
	    var data="Name must be fill!";
	    var str=data.fontcolor("red");
	    document.getElementById("gen").innerHTML=str;
	    document.myForm.firstname.focus();
	    return false;
	  }
	  else{
		  document.getElementById("gen").innerHTML="";
	  }
	  var phone=document.getElementById("phone").value;
	  if (phone == "")
	  {
		  var data="Please enter your phone no";
		  var str=data.fontcolor("red");
		    document.getElementById("numlock").innerHTML=str;
		    document.myForm.phone.focus();
	  return false;
	  }
	  else{
		  document.getElementById("numlock").innerHTML="";
	  }
	  if (isNaN(phone)){
		  data="Enter Numeric value only";
		  var str=data.fontcolor("red");
		  document.getElementById("numlock").innerHTML=str;
		  document.myForm.phone.focus();
		  return false;
		}
	  var address=document.getElementById("address").value;
	  if (address == "") {
	    var data="Please enter your address";
	    var str=data.fontcolor("red");
	    document.getElementById("ad").innerHTML=str;
	    document.myForm.address.focus();
	    return false;
	  }
	  else{
		  document.getElementById("ad").innerHTML="";
	  }
	  var email = document.getElementById("email").value;
	  if (email == "")
	  {
		  var data="Please enter your email";
		  var str=data.fontcolor("red");
		    document.getElementById("emaillock").innerHTML=str;
		    document.myForm.email.focus();
	  return false;
	  }
	  else{
		  document.getElementById("emaillock").innerHTML="";
	  }
	  var pwd=document.getElementById("pass").value;
	  if (pwd == "") {
	    var data="please enter your password";
	    var str=data.fontcolor("red");
	    document.getElementById("pass1").innerHTML=str;
	    document.myForm.pass.focus();
	    return false;
	  }
	  else{
		  document.getElementById("pass1").innerHTML="";
	  }
	  var pwd1=document.getElementById("repass").value;
	  if (pwd == "") {
	    var data="please re-enter your password";
	    var str=data.fontcolor("red");
	    document.getElementById("pass2").innerHTML=str;
	    document.myForm.repass.focus();
	    return false;
	  }
	  else{
		  document.getElementById("pass2").innerHTML="";
	  }
	  if(pwd != pwd1){
		  var data="password doesn't match";
		    var str=data.fontcolor("red");
		    document.getElementById("pass2").innerHTML=str;
		    document.myForm.repass.focus();
		    return false;
	  }
	  return true;
	  */
	}


</script>
</body>
</html>







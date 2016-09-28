<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grason</title>


<meta name="author" content="">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" media="screen"
	href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/font-awesome.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/animate.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="resources/css/theme.css" type="text/css"
	media="screen">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/modernizr.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript" src="resources/js/menustick.js"></script>
<script type="text/javascript" src="resources/js/parallax.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
<script type="text/javascript" src="resources/js/wow.js"></script>
<script type="text/javascript" src="resources/js/smoothscroll.js"></script>
<script type="text/javascript" src="resources/js/masonry.js"></script>
<script type="text/javascript" src="resources/js/imgloaded.js"></script>
<script type="text/javascript" src="resources/js/classie.js"></script>
<script type="text/javascript" src="resources/js/colorfinder.js"></script>
<script type="text/javascript" src="resources/js/gridscroll.js"></script>
<script type="text/javascript" src="resources/js/contact.js"></script>
<script type="text/javascript" src="resources/js/common.js"></script>

<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playball'
	rel='stylesheet' type='text/css'>

<script type="text/javascript">
	jQuery(function($) {
		$(document).ready(function() {
			//enabling stickUp on the '.navbar-wrapper' class
			$('.navbar-wrapper').stickUp({
				parts : {
					0 : 'banner',
					1 : 'aboutus',
					2 : 'specialties',
					3 : 'gallery',
					4 : 'feedback',
					5 : 'contact'
				},
				itemClass : 'menuItem',
				itemHover : 'active',
				topMargin : 'auto'
			});
		});
	});
</script>
<style type="text/css">
.loginmodal-container {
	padding: 30px;
	max-width: 350px;
	width: 100% !important;
	background-color: #F7F7F7;
	margin: 0 auto;
	border-radius: 2px;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	overflow: hidden;
	font-family: roboto;
}

.loginmodal-container h1 {
	text-align: center;
	font-size: 1.8em;
	font-family: roboto;
}

.loginmodal-container input[type=submit] {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
	height: 44px;
	font-size: 16px;
	width: 100%;
	margin-bottom: 10px;
	-webkit-appearance: none;
	background: #fff;
	border: 1px solid #d9d9d9;
	border-top: 1px solid #c0c0c0;
	/* border-radius: 2px; */
	padding: 0 8px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover
	{
	border: 1px solid #b9b9b9;
	border-top: 1px solid #a0a0a0;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

.loginmodal {
	text-align: center;
	font-size: 14px;
	font-family: 'Arial', sans-serif;
	font-weight: 700;
	height: 36px;
	padding: 0 8px;
	/* border-radius: 3px; */
	/* -webkit-user-select: none;
  user-select: none; */
}

.loginmodal-submit {
	/* border: 1px solid #3079ed; */
	border: 0px;
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, 0.1);
	background-color: #4d90fe;
	padding: 17px 0px;
	font-family: roboto;
	font-size: 14px;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.loginmodal-submit:hover {
	/* border: 1px solid #2f5bb7; */
	border: 0px;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	background-color: #357ae8;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.loginmodal-container a {
	text-decoration: none;
	color: #666;
	font-weight: 400;
	text-align: center;
	display: inline-block;
	opacity: 0.6;
	transition: opacity ease 0.5s;
}
</style>

</head>
<body>
	<div class="wrapper" id="wrapper">

		<!--header-->
		<header>
		<div class="banner row" id="banner">
			<div class="parallax text-center"
				style="background-image: url(http://bombay.afindia.org/wp-content/uploads/2015/06/guitar-hands2.jpg)">
				<div class="parallax-pattern-overlay">
					<div class="container text-center"
						style="height: 580px; padding-top: 170px;">
						<a href="#"><img id="site-title" class=" wow fadeInDown"
							wow-data-delay="0.0s" wow-data-duration="0.9s"
							src="resources/img/logo.png" alt="logo" /></a>
						<h2 class="intro wow zoomIn" wow-data-delay="0.4s"
							wow-data-duration="0.9s">Grason Guiters</h2>
					</div>
				</div>
			</div>
		</div>
		<div class="menu">
			<div class="navbar-wrapper">
				<div class="container">
					<div class="navwrapper">
						<div class="navbar navbar-inverse navbar-static-top">
							<div class="container">
								<div class="navArea">
									<div class="navbar-collapse collapse">
										<ul class="nav navbar-nav">
											<li class="menuItem active"><a href="#wrapper">Home</a></li>
											<li class="menuItem"><a href="#aboutus">About Us</a></li>
											<li class="menuItem"><a href="#specialties">Specialties</a></li>
											<li class="menuItem"><a href="#gallery">Events
													Gallery</a></li>
											<li class="menuItem"><a href="#feedback">Feedback</a></li>
											<li class="menuItem"><a href="#contact">Hire Us</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</header>
		<!--about us-->
		<center>
			<section class="aboutus" id="aboutus">
			<div class="container">
				<div class="heading text-center">
					<img class="dividerline" src="resources/img/sep.png" alt="">
					<h2>Login Page</h2>
					<img class="dividerline" src="resources/img/sep.png" alt="">
					<h3>Have you ever felt worried that your party will not raise
						up to your guest expectations? In design, vertical rhythm is the
						structure that guides a reader's eye through the content. Good
						vertical rhythm makes a layout more balanced and beautiful and its
						content more readable. The time signature in sheet music visually
						depicts a song's rhythm, while for us, the lines of the baseline
						grid depict the rhythm of our content and give us guidelines.</h3>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="papers text-center">
							<img src="resources/img/homeimg1.jpg" alt=""><br /> 
							<a href="#" data-toggle="modal" data-target="#login-modal">Login Page</a></h4>
														<h4 class="notopmarg nobotmarg">Grason</h4>
							<p>Have you ever felt worried that your party will not raise
								up to your guest expectations? In design, vertical rhythm is the
								structure that guides a reader's eye through the content. Good
								vertical rhythm makes a layout more balanced and beautiful and
								its content more readable. The time signature in sheet music
								visually depicts a song's rhythm, while for us, the lines of the
								baseline grid depict the rhythm of our content and give us
								guidelines.</p>
						</div>
					</div>
				</div>
				<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true"
					style="display: none;">
					<div class="modal-dialog">
						<div class="loginmodal-container">
							<h1>Login to Your Account</h1>
							<br>
							<form>
								<input type="text" name="user" placeholder="Username"> <input
									type="password" name="pass" placeholder="Password"> <input
									type="submit" name="login" class="login loginmodal-submit"
									style="background-color: #D2691E; color: white;" value="Login">
							</form>

							<div class="login-help">
								<a href="#">Register</a>
							</div>
						</div>
					</div>
				</div>
				<!-- </p> -->
			</div>
	</div>


	</div>
	</section>

	</center>



	<!--footer-->
	<section class="footer" id="footer">
	<p class="text-center">
		<a href="#wrapper" class="gototop"><i
			class="fa fa-angle-double-up fa-2x"></i></a>
	</p>
	<div class="container">
		<ul>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			<li><a href="#"><i class="fa fa-flickr"></i></a></li>
		</ul>
		<p>
			&copy; 2015 Copyright Your Website<br> Theme by <a
				href="http://www.wowthemes.net">WowThemes.Net</a>
		</p>
	</div>
	</section>

	</div>
	<!--wrapper end-->

	<!-- <!--Javascripts-->
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/modernizr.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.js"></script>
	<script type="text/javascript" src="resources/js/menustick.js"></script>
	<script type="text/javascript" src="resources/js/parallax.js"></script>
	<script type="text/javascript" src="resources/js/easing.js"></script>
	<script type="text/javascript" src="resources/js/wow.js"></script>
	<script type="text/javascript" src="resources/js/smoothscroll.js"></script>
	<script type="text/javascript" src="resources/js/masonry.js"></script>
	<script type="text/javascript" src="resources/js/imgloaded.js"></script>
	<script type="text/javascript" src="resources/js/classie.js"></script>
	<script type="text/javascript" src="resources/js/colorfinder.js"></script>
	<script type="text/javascript" src="resources/js/gridscroll.js"></script>
	<script type="text/javascript" src="resources/js/contact.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>

	<!-- <script type="text/javascript">
jQuery(function($) {
$(document).ready( function() {
  //enabling stickUp on the '.navbar-wrapper' class
	$('.navbar-wrapper').stickUp({
		parts: {
		  0: 'banner',
		  1: 'aboutus',
		  2: 'specialties',
		  3: 'gallery',
		  4: 'feedback',
		  5: 'contact'
		},
		itemClass: 'menuItem',
		itemHover: 'active',
		topMargin: 'auto'
		});
	});
});
</script> -->




</body>
</html>
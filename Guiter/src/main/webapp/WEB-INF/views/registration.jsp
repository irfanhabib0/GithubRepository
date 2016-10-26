<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/font-awesome.css"type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/animate.css"type="text/css" media="screen">
<link rel="stylesheet" href="resources/css/theme.css"type="text/css" media="screen">
<script type="text/javascript"src="resources/js/jquery.js"></script>
<script type="text/javascript"src="resources/js/modernizr.js"></script>
<script type="text/javascript"src="resources/js/bootstrap.js"></script>
<script type="text/javascript"src="resources/js/menustick.js"></script>
<script type="text/javascript"src="resources/js/parallax.js"></script>
<script type="text/javascript"src="resources/js/easing.js"></script>
<script type="text/javascript"src="resources/js/wow.js"></script>
<script type="text/javascript"src="resources/js/smoothscroll.js"></script>
<script type="text/javascript"src="resources/js/masonry.js"></script>
<script type="text/javascript"src="resources/js/imgloaded.js"></script>
<script type="text/javascript"src="resources/js/classie.js"></script>
<script type="text/javascript"src="resources/js/colorfinder.js"></script>
<script type="text/javascript"src="resources/js/gridscroll.js"></script>
<script type="text/javascript"src="resources/js/contact.js"></script>
<script type="text/javascript"src="resources/js/common.js"></script>

<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>

<script type="text/javascript">
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
</script>
<title>Registration</title>
</head>
<body>
<div class="wrapper" id="wrapper">
	
	<!--header-->
	<header>
	<div class="banner row" id="banner">		
		<div class="parallax text-center" style="background-image: url(http://bombay.afindia.org/wp-content/uploads/2015/06/guitar-hands2.jpg)">
			<div class="parallax-pattern-overlay">
				<div class="container text-center" style="height:580px;padding-top:170px;">
					<a href="#"><img id="site-title" class=" wow fadeInDown" wow-data-delay="0.0s" wow-data-duration="0.9s" src="resources/img/logo.png" alt="logo"/></a>
					<h2 class="intro wow zoomIn" wow-data-delay="0.4s" wow-data-duration="0.9s">Grason Guiters</h2>
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
										<li class="menuItem"><a href="#gallery">Events Gallery</a></li>
										<li class="menuItem"><a href="/saveuser">Feedback</a></li>
										<li class="menuItem"><a href="#contact">Hire Us</a></li>
										<li class="menuItem"><a href="/productdetails">Products</a></li>
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
	
	<div align="center">
		<form:form action="register" method="post"  commandName="user">
			<table border="0">
				<tr>
					<td colspan="2" align="center"><h2>Spring MVC Form Demo - Registration</h2></td>
				</tr>
				<tr>
					<td>User ID:</td>
					<td><form:input path="userid" /></td> 
				</tr>
				<tr>
					<td>User Name:</td>
					<td><form:input path="firstname" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<%-- <td><form:input path="lastname" /></td> --%>
				</tr>
				<tr>
					<td>User Name:</td>
					<%-- <td><form:input path="username" /></td> --%>
				</tr>
				<tr>
					<td>Password:</td>
					<%-- <td><form:password path="password" /></td> --%>
				</tr>
				<tr>
					<td>Location:</td>
					<%-- <td><form:input path="location" /></td> --%>
				</tr>
				<tr>
					<td>Contact:</td>
					<%-- <td><form:input path="contact" /></td> --%>
				</tr>
				
				
				<tr>
					<td colspan="2" align="center"><input type="submit" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html> 
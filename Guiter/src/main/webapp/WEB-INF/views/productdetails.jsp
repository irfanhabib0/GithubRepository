<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grason</title>


<meta name="author" content="">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href='<c:out value="${pageContext.request.contextPath}"/>/path/to/font-awesome/css/font-awesome.min.css'>
<link rel="stylesheet" type="text/css" media="screen"
	href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap.css'>
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/font-awesome.css'
	type="text/css" media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/animate.css' type="text/css"
	media="screen">
<link rel="stylesheet" href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/theme.css' type="text/css"
	media="screen">
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/jquery.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/modernizr.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/bootstrap.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/menustick.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/parallax.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/easing.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/wow.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/smoothscroll.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/masonry.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/imgloaded.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/classie.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/colorfinder.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/gridscroll.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/contact.js'></script>
<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/common.js'></script>

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
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="heading text-center">
			<img class="dividerline" src="${pageContext.request.contextPath}/resources/img/sep.png" alt="">
			<h2>Product</h2>
			<img class="dividerline" src="${pageContext.request.contextPath}/resources/img/sep.png" alt="">
			<h3>Have you ever felt worried that your party will not raise up
				to your guest expectations? In design, vertical rhythm is the
				structure that guides a reader's eye through the content. Good
				vertical rhythm makes a layout more balanced and beautiful and its
				content more readable. The time signature in sheet music visually
				depicts a song's rhythm, while for us, the lines of the baseline
				grid depict the rhythm of our content and give us guidelines.</h3>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="papers text-center">
					<img src="${pageContext.request.contextPath}/resources/img/homeimg1.jpg" alt=""><br />

					<h4 class="notopmarg nobotmarg">Product</h4>
					<p>Have you ever felt worried that your party will not raise up
						to your guest expectations? In design, vertical rhythm is the
						structure that guides a reader's eye through the content. Good
						vertical rhythm makes a layout more balanced and beautiful and its
						content more readable. The time signature in sheet music visually
						depicts a song's rhythm, while for us, the lines of the baseline
						grid depict the rhythm of our content and give us guidelines.</p>
				</div>
			</div>

			<div class="col-md-12">
				<div class="papers">
			<h2>Product Details</h2>
				<!-- <p>The .table-bordered class adds borders to a table:</p> -->
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Product Id</th>
							<th>Product Name</th>
							<th> Description</th>
							<th>Price</th>
							<th>SupplierID</th>
							<th>CategoryID</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="product" items="${productlist}">
							<tr>
								<td>${product.productid}</td>
								<td>${product.productname}</td>
								<td>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.category.categoryname}</td>
									<td>${product.supplier.suppliername}</td>
								<td><a href="editproduct/${product.productid}">Edit</a></td>
								<td><a href="deleteproduct/${product.productid}">Delete</a></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>



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
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/jquery.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/modernizr.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/bootstrap.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/menustick.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/parallax.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/easing.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/wow.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/smoothscroll.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/masonry.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/imgloaded.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/classie.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/colorfinder.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/gridscroll.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/contact.js'></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/common.js'></script>

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
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
	href='<c:out value="${pageContext.request.contextPath}"/>/resources/path/to/font-awesome/css/font-awesome.min.css'>
<link rel="stylesheet" type="text/css" media="screen"
	href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/bootstrap.css'>
<link rel="stylesheet" href="resources/css/font-awesome.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/font-awesome.css'
	type="text/css" media="screen">
<link rel="stylesheet"
	href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/animate.css'
	type="text/css" media="screen">
<link rel="stylesheet"
	href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/theme.css'
	type="text/css" media="screen">
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/jquery.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/modernizr.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/bootstrap.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/menustick.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/parallax.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/easing.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/wow.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/smoothscroll.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/masonry.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/imgloaded.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/classie.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/colorfinder.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/gridscroll.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/contact.js'></script>
<script type="text/javascript"
	src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/common.js'></script>

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

	<!--about us-->
	<center>
		<section class="aboutus" id="aboutus">
		<div class="container">
			<div class="heading text-center">
				<img class="dividerline"
					src="${pageContext.request.contextPath}/resources/img/sep.png"
					alt="">
				<h2>Category</h2>
				<img class="dividerline"
					src="${pageContext.request.contextPath}/resources/img/sep.png"
					alt="">
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
						<img
							src="${pageContext.request.contextPath}/resources/img/homeimg1.jpg"
							alt=""><br />

						<h4 class="notopmarg nobotmarg">Product</h4>
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
				<div class="col-md-12">
					<div class="papers">
						<h4>Product Page</h4>
						<spring:form
							action="${pageContext.request.contextPath}/saveproduct"
							modelAttribute="product" enctype="multipart/form-data"
							method="post">
							<c:choose>
								<c:when test="${not empty product.productid}">
									<!-- checking if category.categoryid is not null then disables the input box -->
									<div class="control-group">
										<div class="controls">

											<spring:input type="hidden" id="productid" path="productid"
												placeholder="Product ID" class="input-sm" />
											<p class="help-block">Can contain any letters or numbers,
												without spaces</p>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="control-group">
										<div class="controls">
											<label class="control-label" for="productid">Product
												ID</label>
											<spring:input type="text" id="productid" path="productid"
												placeholder="Product ID" class="input-sm" />
											<p class="help-block">Can contain any letters or numbers,
												without spaces</p>
										</div>
									</div>
								</c:otherwise>
							</c:choose>



							<div class="control-group">
								<div class="controls">
									<label class="control-label" for="userid">Product Name</label>
									<spring:input type="text" id="productname" path="productname"
										placeholder="Product Name" class="input-sm" />
									<p class="help-block">Product name contains the fullname of
										the product</p>
								</div>
							</div>

							<div class="control-group">
								<!-- Userid -->

								<div class="controls">
									<label class="control-label" for="userid">Product
										Description</label>
									<spring:input type="text" id="productdescription"
										path="description" placeholder="Product Description"
										class="input-sm" />
									<p class="help-block">Here product's detailed property is
										given</p>
								</div>
							</div>
							<div class="control-group">
								<!-- Userid -->

								<div class="controls">
									<label class="control-label" for="userid">Price</label>
									<spring:input type="text" id="price" path="price"
										placeholder="Price" class="input-sm" />
									<p class="help-block">Here product's detailed property is
										given</p>
								</div>
							</div>
							<div class="control-group">
								<!-- Userid -->

								<div class="controls">
									<label class="control-label" for="userid">Supplier </label>
									<spring:select path="supplierid" items="${supplierlist}"
										itemLabel="suppliername" itemValue="supplierid">
									</spring:select>
									<%-- <spring:input type="text" id="supplierid" path="supplierid" placeholder="Supplierid" class="input-sm"/> --%>
									<p class="help-block">Here product's detailed property is
										given</p>
								</div>
							</div>
							<div class="control-group">
								<!-- Userid -->

								<div class="controls">
									<label class="control-label" for="userid">Category</label>
									<spring:select path="categoryid" itemValue="categoryid"
										itemLabel="categoryname" items="${categorylist}">


									</spring:select>
									<%-- <spring:input type="text" id="categoryid" path="categoryid" placeholder="Categoryid" class="input-sm"/> --%>
									<p class="help-block">Here product's detailed property is
										given</p>
								</div>
							</div>
							<label class="control-label" for="userid">Choose a
								product image </label>
							<spring:input type="file" path="image" />

							<button type="submit" class="btn btn-submit"
								style="background-color: #D2691E">Submit</button>
					</div>
					</spring:form>

					<h2>Product Details</h2>
					<!-- <p>The .table-bordered class adds borders to a table:</p> -->
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Product Id</th>
								<th>Product Name</th>
								<th>Product Description</th>
								<th>Product Price</th>
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
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/jquery.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/modernizr.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/bootstrap.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/menustick.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/parallax.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/easing.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/wow.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/smoothscroll.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/masonry.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/imgloaded.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/classie.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/colorfinder.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/gridscroll.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/contact.js'></script>
	<script type="text/javascript"
		src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/common.js'></script>


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
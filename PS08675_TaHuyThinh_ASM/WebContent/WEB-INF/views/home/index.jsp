<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>Trang chủ</title>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/navbar/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/navbar/animate.css">

<link rel="stylesheet" href=css/navbar/owl.carousel.min.css">
<link rel="stylesheet" href="css/navbar/owl.theme.default.min.css">
<link rel="stylesheet" href="css/navbar/magnific-popup.css">

<link rel="stylesheet" href="css/navbar/aos.css">

<link rel="stylesheet" href="css/navbar/ionicons.min.css">

<link rel="stylesheet" href="css/navbar/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/navbar/jquery.timepicker.css">


<link rel="stylesheet" href="css/navbar/flaticon.css">
<link rel="stylesheet" href="css/navbar/icomoon.css">
<link rel="stylesheet" href="css/navbar/style.css">
</head>
<body>
	<div class="py-1 bg-black top">
		<div class="container">
			<div
				class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex">
						<div class="col-md pr-4 d-flex topper align-items-center">

							<span class="text">+ 0973761520</span>
						</div>
						<div class="col-md pr-4 d-flex topper align-items-center">

							<span class="text">thinhthps08675@fpt.edu.vn</span>
						</div>
						<div
							class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
							<p class="mb-0 register-link">
								<span>Open hours:</span> <span>Monday - Sunday</span> <span>8:00AM
									- 9:00PM</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.htm">Huy Thinh</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="home/index.htm" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="admin/record/show-record.htm?type=0" class="nav-link">Manage</a></li>
					
				
				</ul>
			</div>
			 <c:choose>
					<c:when test="${empty loginUser}">
						<button class="btn btn-btn-primary"
							onclick="window.location.href='login/submit.htm'">LOGIN</button>
					</c:when>
					<c:otherwise>
						<div class="dropdown float-right">
							<%-- <button class="btn btn-primary dropdown-toggle" type="button"
				id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false" name="online_user">
				<i class="fa fa-user" aria-hidden="true"></i> Hi, ${login.username}
			</button> --%>
			<div><i class="fa fa-user" aria-hidden="true"></i><h1 name="online_user">Hi, ${login.username}</h1></div>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								
								 <a class="dropdown-item" href="login/logout.htm"> <i
									class="fa fa-sign-out" aria-hidden="true"></i> Log out
								</a>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
		</div>
	</nav>

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/trangchu.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate text-center mb-4">
					<h1 class="mb-2 bread">About</h1>

				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-wrap-about">
		<div class="container">
			<div class="row">
				<div class="col-md-7 d-flex">
					<div class="img img-1 mr-md-2"
						style="background-image: url(images/gioithieu1.png);"></div>
					<div class="img img-2 ml-md-2"
						style="background-image: url(images/thinh.JPG);"></div>
				</div>
				<div class="col-md-5 wrap-about pt-5 pt-md-5 pb-md-3">
					<div class="heading-section mb-4 my-5 my-md-0">
						<span class="subheading">About</span>
						<h2 class="mb-3">Huy Thịnh Company</h2>
					</div>
					<h3>Chào thầy, em đứng đây từ chiều và chưa thấy ai đẹp trai như thầy cả. 
					Thầy đẹp trai như em trong ảnh đấy ạ
						</h3>
					<p class="time"> <span>Mon - Fri <strong>8 AM
							- 11 PM</strong></span> <span><a href="#">+ 1-978-123-4567</a></span>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-12 text-center heading-section">
					<span class="subheading">Employees</span>
					<h2 class="mb-4">Of The Month</h2>
				</div>
			</div>
			<div class="row">
				
					<c:forEach var="staff" items="${topStaff}">
					<div class="col-md-6 col-lg-3">
						<div class="staff">
							<div class="img">
								<img width="250px" height="300px" 
									src='<c:url value="resource/avatar/${staff.photo}"/>'
									alt="Person" />
							</div>
							<div class="text pt-4">
								<h3>${staff.name}</h3>
								<span>${staff.depart.name}</span>
							</div>
						</div>
						</div>
					</c:forEach> 
				
			</div>
		</div>
	</section>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
	<!-- <script>
		$(function() {
			$("a[data-lang]").click(function() {
				var lang = $(this).attr("data-lang");
				$.get("home/index.htm?language=" + lang, function() {
					location.reload();
				});
				return false;
			});
		});
	</script> -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>ADMIN PAGE</title>


<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="css/material-kit.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://reactiveraven.github.io/jqBootstrapValidation/js/jqBootstrapValidation.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<link rel="stylesheet" href="css/navbar/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/navbar/animate.css">

<link rel="stylesheet" href="css/navbar/owl.carousel.min.css">
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
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	
						    <span class="text">+ 0973761520</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	
						    <span class="text">thinhthps08675@fpt.edu.vn</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
						    <p class="mb-0 register-link"><span>Open hours:</span> <span>Monday - Sunday</span> <span>8:00AM - 9:00PM</span></p>
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
			<a class="navbar-brand" href="index.html">Huy Thinh</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="home/index.htm" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="admin/record/show-record.htm?type=0" class="nav-link">Manage</a></li>
					<li class="nav-item"><a class="nav-link" href="#" data-lang="vi" >Tiếng Việt</a></li>
					<li class="nav-item"><a class="nav-link" href="#" data-lang="en">English</a></li>
				</ul>
			</div>

		</div>
		
		<div class="dropdown float-right">
		
			<button class="btn btn-primary" type="button"
			onclick="window.location.href='admin/user/show-user.htm'"
				id=""  aria-haspopup="true"
				aria-expanded="false">
				<i class="fa fa-user" aria-hidden="true"></i> Hi, ${login.username}
				
			</button>
			<button class="btn btn-danger" onclick="window.location.href='login/logout.htm'">
				<i class="fa fa-sign-out" aria-hidden="true"></i> <s:message code="global.logout"/>
			</button>  
			
			
		</div>
	</nav>
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resource/homepage/images/trangchu.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-end justify-content-center">

			</div>
		</div>
	</section>

	<div class="main main-raised">
		<div class="container">
			<div class="section">
				<div class="rows">
					<div class="col-md-12 ml-auto mr-auto text-center">

						<ul class="nav nav-pills nav-pills-warning row justify-content-center">
							<li class="nav-item"><a class="nav-link active show"
								href="admin/record/show-record.htm?type=0">Records</a></li>
							<li class="nav-item"><a class="nav-link active show"
								href="admin/user/show-user.htm">User</a></li>
							<li class="nav-item"><a class="nav-link active show "
								href="admin/staff/show-staff.htm">Staffs</a></li>
							<li class="nav-item"><a class="nav-link active show"
								href="admin/depart/show-depart.htm">Departs</a></li>


						</ul>
						<article>
							<div class="tab-content tab-space">

								<div class="tab-pane active" role="tabpanel">
									<div id="tables">

										<jsp:include page="../${param.view}"></jsp:include>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script>
		$(function() {
			$("a[data-lang]").click(function() {
				var lang = $(this).attr("data-lang");
				$.get("home/index.htm?language=" + lang, function() {
					location.reload();
				});
				return false;
			});
		});
	</script>
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
</html>
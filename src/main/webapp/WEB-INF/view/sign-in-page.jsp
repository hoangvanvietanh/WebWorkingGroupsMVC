<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Vakapu - Teamwork Social Network</title>

<!-- Fonts Online -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1"
	rel="stylesheet">
<!-- Style Sheet -->
<link rel="stylesheet"
	href="<spring:url value='/resources/home-page/css/owl.carousel.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/home-page/css/main-style.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/home-page/css/style.css'/>">
</head>

<body>
	<div id="main-wrapper">

		<!-- HOME PRO-->
		<div class="home-pro">

			<!-- PRO BANNER HEAD -->
			<div class="banr-head">
				<div class="container">
					<div class="row">

						<!-- CONTENT -->
						<div class="col-sm-7">
							<div class="text-area">
								<div class="position-center-center col-md-10">
									<h1>Here comes the teamwork social networking platform
										that you’ve been waiting for</h1>
									<h6>And right here you will find tools to help you work
										more efficiently</h6>
								</div>
							</div>
						</div>

						<!-- FORM SECTION -->
						<div class="col-sm-5">
							<div class="login-sec">

								<!-- TABS -->
								<div class="uou-tabs">
									<ul class="tabs">
										<li><a href="#register">Register Now</a></li>
										<li class="active"><a href="#log-in">Member Login</a></li>
									</ul>

									<!-- REGISTER -->
									<div class="content">
										<div id="register">
											<form id="register-form" class="text-left" action="sign-up"
												method="post">
												<input type="email" placeholder="Email Address"
													name="emailSignUp"> <input type="hidden"
													name="${_csrf.parameterName}" value="${_csrf.token}" />
												<button type="submit">Register</button>

											</form>
										</div>

										<!-- LOGIN -->
										<div id="log-in" class="active">
											<c:url value="/handleLogin" var="loginUrl" />
											<form id="login-form" class="text-left" action="${loginUrl}"
												method="post">
												<input type="email" name="email" placeholder="Email Address">
												<input type="password" name="password"
													placeholder="Password"> <input type="hidden"
													name="${_csrf.parameterName}" value="${_csrf.token}" />
												<button type="submit">Login</button>
												<div class="forget">
													Forgot your password? <a
														href="<spring:url value='/forgot-password'/>">Click
														Here</a>
												</div>
											</form>
										</div>
										<div id="forget">
											<form>
												<input type="email" placeholder="Email Address">
												<button type="submit">Login</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- SERVICES -->
			<section class="services">

				<!-- SERVICES ROW -->
				<ul class="row">

					<!-- SECTION -->
					<li class="col-md-4">
						<div class="ser-inn">
							<i class="fa fa-globe"></i>
							<h4>Stay in touch with your team</h4>
							<i class="fa fa-globe big"></i>
							<p>Talent wins games, but teamwork and intelligence wins
								championships.</p>
							<br>
						</div>
					</li>

					<!-- SECTION -->
					<li class="col-md-4">
						<div class="ser-inn">
							<i class="fa fa-book"></i>
							<h4>Get the latest news in your industry</h4>
							<i class="fa fa-book big"></i>
							<p>The more that you read, the more things you will know. The
								more that you learn, the more places you’ll go.</p>
						</div>
					</li>

					<!-- SECTION  -->
					<li class="col-md-4">
						<div class="ser-inn">
							<i class="fa fa-picture-o"></i>
							<h4>Share your project, your idea for everyone</h4>
							<i class="fa fa-picture-o big"></i>
							<p>Let us tenderly and kindly cherish, therefore, the means
								of knowledge. Let us dare to read, think, speak, and write.</p>
						</div>
					</li>
				</ul>
			</section>

			<!-- PRO SECTION -->
			<section class="pro-content">
				<div class="container-fluid">
					<div class="row">

						<!-- PRO IMAGE -->
						<div class="col-md-6 pro-inside"
							style="background: url(resources/home-page/images/pro-img-1.jpg) center center no-repeat;"></div>

						<!-- PRO CONTENT -->
						<div class="col-md-6 pro-inside">
							<div class="position-center-center col-md-6">
								<h1>Interact with people in the same idea</h1>
								<p>Meeting people with the same idea is one of the best
									things</p>
							</div>
						</div>
					</div>
				</div>

				<!-- PRO SECTION -->
				<div class="container-fluid">
					<div class="row">

						<!-- PRO TEXT -->
						<div class="col-md-6 pro-inside">
							<div class="position-center-center col-md-6">
								<h1>Easily work on a project</h1>
								<p>The best way to do teamwork is to create something that
									can connect people together and this web can help you do it.</p>
							</div>
						</div>

						<!-- PRO BACKGROUND -->
						<div class="col-md-6 pro-inside"
							style="background: url(resources/home-page/images/pro-img-2.jpg) center center no-repeat;"></div>
					</div>
				</div>
			</section>

			<!-- TESTIMONIALS -->
			<section class="clients-says">
				<div class="container">
					<h3 class="section-title">what our users say</h3>
					<div class="testi">
						<div class="texti-slide">
							<!-- SLide -->
							<div class="clints-text">
								<div class="text-in">
									<p>NOTHING IS IMPOSSIBLE. Just believe in yourself and live
										your DREAM!</p>
								</div>
								<div class="avatar">
									<div class="media-left">
										<a href="#."> <img
											src="resources/home-page/images/clients-avatar-1.jpg" alt="">
										</a>
									</div>
									<div class="media-body">
										<h6>Hoang Van Viet Anh</h6>
										<span>hoangvanvietanh@gmail.com</span>
									</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</section>

			<!-- sponsors -->
			<div class="sponsors"
				style="background: url(resources/home-page/images/sponser-bg.jpg) no-repeat;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3 class="section-title">Our Sponsors</h3>
							<div class="sponsors-slider">
								<div class="item">
									<img src="" alt="" class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/home-page/images/sponsor_logo2.png" alt=""
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/home-page/images/sponsor_logo4.png" alt=""
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/home-page/images/sponsor_logo5.png" alt=""
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/home-page/images/sponsor_logo1.png" alt=""
										class="img-responsive">
								</div>
								<div class="item">
									<img src="" alt="" class="img-responsive">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="uou-block-4e">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<a href="#" class="logo"><img
						src="resources/home-page/images/logo.png" alt=""></a>
					<ul class="contact-info has-bg-image contain"
						data-bg-image="resources/home-page/images/footer-map-bg.png">
						<li><i class="fa fa-map-marker"></i>
							<address>67 Nguyễn Thị Minh Khai, District 1, Ho Chi
								Minh City</address></li>
						<li><i class="fa fa-phone"></i> <a href="tel:#">0903026389</a>
						</li>
						<li><i class="fa fa-envelope"></i> <a href="mailto:#">vakapuWeb@gmail.com</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6">
					<h5>More About</h5>
					<ul class="Facebook">
						<li>RT <a href="#">Vakapu</a> is one hell of a stunning
							site!!! Awesome work guys <a href="#">created in</a> <a href="#"
							class="time">September 25</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6">
					<h5>Photostream</h5>
					<ul class="photos-list">
						<li><img src="resources/home-page/images/photostream4.jpg"
							alt=""></li>
						<li><img src="resources/home-page/images/photostream6.jpg"
							alt=""></li>
						<li><img src="resources/home-page/images/photostream3.jpg"
							alt=""></li>
						<li><img src="resources/home-page/images/photostream2.jpg"
							alt=""></li>
						<li><img src="resources/home-page/images/photostream1.jpg"
							alt=""></li>
						<li><img src="resources/home-page/images/photostream.jpg"
							alt=""></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6">
					<h5>Newsletter</h5>
					<p>Subscribe to our newsletter to receive our latest news and
						updates. We do not spam.</p>
					<form class="newsletter-form" action="#">
						<input type="email" placeholder="Enter your email address">
						<input type="submit" class="btn btn-primary" value="Subscribe">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end .uou-block-4e -->

	<div class="uou-block-4a secondary dark">
		<div class="container">
			<ul class="links">
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Terms &amp; Conditions</a></li>
			</ul>
			<p>
				Copyright &copy; 2018 <a href="#">Vakapu</a>. All Rights reserved.
			</p>
		</div>
	</div>
	<!-- end .uou-block-4a -->

	<div class="uou-block-11a">
		<h5 class="title">Menu</h5>
		<a href="#" class="mobile-sidebar-close">&times;</a>
		<nav class="main-nav">
			<ul>
				<li class="active"><a href="index.html">Index</a></li>
				<li><a href="listing-filter.html">Professionals</a></li>
				<li><a href="profile_company.html">Profile Company</a></li>
				<li><a href="profile_company-no-tabs.html">Profile Company
						No Tabs</a></li>
				<li><a
					href="user-dashboard(connections)(hotkeys-disabled).html">User
						Dashboard 1</a></li>
				<li><a href="user-dashboard(connections)(hotkeys-enabled).html">User
						Dashboard 2</a></li>
				<li><a href="user-dashboard(followers).html">User Dashboard
						3</a></li>
				<li><a href="user-dashboard(following).html">User Dashboard
						4</a></li>
				<li><a href="blog-post.html">Blog Post</a></li>
				<li><a href="user-profile(layout-1).html">User Profile</a></li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="gui-kit.html">GUI KIT</a></li>
			</ul>
		</nav>
		<hr>
	</div>

	<!-- Scripts -->
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script
		src="<spring:url value='/resources/home-page/js/jquery-2.1.3.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/bootstrap.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/plugins/superfish.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/jquery.ui.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/plugins/rangeslider.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/plugins/jquery.flexslider-min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/uou-accordions.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/home-page/js/uou-tabs.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/plugins/select2.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/owl.carousel.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/home-page/js/gmap3.min.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/home-page/js/scripts.js'/>"
		type="text/javascript"></script>
</body>
</html>
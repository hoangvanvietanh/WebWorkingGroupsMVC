<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>CV</title>

<!-- favicon -->
<link href="favicon.png" rel=icon>

<!-- web-fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="<spring:url value='/resources/cv2/css/font-awesome.min.css'/>">

<link rel="stylesheet"
	href="<spring:url value='/resources/cv2/css/bootstrap.min.css'/>">

<link rel="stylesheet"
	href="<spring:url value='/resources/cv2/css/style.css'/>">

<style type="text/css">
.input-group-round .input-group-prepend .input-group-text {
	border-radius: 10rem 0 0 10rem;
	background: transparent;
	border-right: none;
}

.input-group-prepend .input-group-text .material-icons {
	font-size: 1.125rem;
}

.material-icons {
	font-family: 'Material Icons';
	font-weight: normal;
	font-style: normal;
	font-size: 24px;
	line-height: 1;
	letter-spacing: normal;
	text-transform: none;
	display: inline-block;
	white-space: nowrap;
	word-wrap: normal;
	direction: ltr;
	-webkit-font-feature-settings: 'liga';
	-webkit-font-smoothing: antialiased;
}

.input-group-round .input-group-prepend+.form-control {
	border-radius: 10rem 10rem 10rem 10rem;
	background: transparent;
}

.header .content2 {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	width: 100%;
	margin: 0 auto;
	padding: 10%;
}
</style>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar">
	<div id="main-wrapper">
		<!-- Page Preloader -->
		<div id="preloader">
			<div id="status">
				<div class="status-mes"></div>
			</div>
		</div>

		<div class="columns-block">
			<div class="left-col-block blocks">
				<header class="header">
					<div class="content text-center" style="bottom: 85%">
						<form action="profile-cv" method="post"
							class="form-inline my-lg-0 my-2">
							<ul class="social-icon">
								<li><div class="input-group-dark input-group-round">
										<div class="input-group-prepend"></div>
										<input style="height: 35px;" type="search" name="email"
											class="form-control form-control-dark" placeholder="Search"
											aria-label="Search app" aria-describedby="search-app">
									</div></li>
								<li><a style="color: white; height: 38px;" href="home"
									class="material-icons">home</a> 
									
								</li>
								<li>
									<c:if
										test="${checkFriend == 0 and user.email ne emailUser}">
										<a class="material-icons"
											href="profile-cv/addFriend?emailFriend=${user.email}"
											style="color: white;"><strong>person_add</strong></a>
									</c:if></li>
							</ul>


							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>

					<div class="content text-center">
						<h1>Hi, I'm ${user.name}!</h1>

						<p class="lead">${user.about}</p>
						<ul class="social-icon">
							<li><a href="#"><i class="fa fa-facebook"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"
									aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"
									aria-hidden="true"></i></a></li>
							<li>
						</ul>
					</div>
					<div>
						<img class="profile-img"
							src="<spring:url value='/profile/avatar/${user.email}'/>">
					</div>
				</header>
				<!-- .header-->
			</div>


			<div class="right-col-block blocks">
				<section class="intro section-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="section-title">
									<h2>What I am all about.</h2>
								</div>
							</div>
							<div class="col-md-12">
								<p>${user.summary}</p>
							</div>
						</div>
					</div>
				</section>

				<section class="section-wrapper skills-wrapper gray-bg">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="section-title">
									<h2>Skills</h2>
									${user.skill}
								</div>
							</div>
						</div>
					</div>
					<!-- .container-fluid -->
				</section>
				<!-- .skills-wrapper -->

				<section class="section-wrapper section-experience">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="section-title">
									<h2>Work Experience</h2>
								</div>
							</div>
						</div>
						${user.experience}
					</div>
					<!-- .container-fluid -->

				</section>
				<!-- .section-experience -->

				<section class="section-wrapper section-education gray-bg">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="section-title">
									<h2>Education</h2>

								</div>
								${user.education}
							</div>
						</div>

					</div>
					<!-- .container-fluid -->

				</section>
				<!-- .section-education -->

				<section class="section-contact section-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="section-title">
									<h2>Contact</h2>
								</div>
							</div>
						</div>
						<!--.row-->
						<div class="row">
							<div class="col-md-12">
								<address>
									<strong>Address</strong><br>${user.address }
								</address>
								<address>
									<strong>Phone Number</strong><br> ${user.phone}
								</address>
								<address>
									<strong>Email</strong><br> <a href="mailto:${user.email}">${user.email}</a>
								</address>
							</div>
						</div>
						<!--.row-->

					</div>
					<!--.container-fluid-->
				</section>
				<!--.section-contact-->

				<footer class="footer">
					<div class="copyright-section">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12">
									<div class="copytext">&copy; 2018. All rights reserved</div>
								</div>
							</div>
							<!--.row-->
						</div>
						<!-- .container-fluid -->
					</div>
					<!-- .copyright-section -->
				</footer>
				<!-- .footer -->
			</div>
			<!-- .right-col-block -->
		</div>
		<!-- .columns-block -->
	</div>
	<!-- #main-wrapper -->

	<!-- jquery -->
	<script
		src="<spring:url value='/resources/cv2/js/jquery-2.1.4.min.js'/>"
		type="text/javascript"></script>
	<!-- Bootstrap -->

	<script src="<spring:url value='/resources/cv2/js/bootstrap.min.js'/>"
		type="text/javascript"></script>

	<script src="<spring:url value='/resources/cv2/js/scripts.js'/>"
		type="text/javascript"></script>
</body>
</html>
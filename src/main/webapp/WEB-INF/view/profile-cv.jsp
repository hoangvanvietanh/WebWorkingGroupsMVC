<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Profile CV</title>

<!-- Bootstrap core CSS -->

<link rel="stylesheet"
	href="<spring:url value='/resources/profile-cv/css/bootstrap.min.css'/>">
<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
	rel="stylesheet">
<link rel="stylesheet"
	href="<spring:url value='/resources/profile-cv/css/all.min.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/profile-cv/css/icon.css'/>">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="<spring:url value='/resources/profile-cv/css/resume.min.css'/>">




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
	border-radius: 0 10rem 10rem 0;
	background: transparent;
	border-left: none;
}
</style>

</head>

<body id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
		id="sideNav">
		<form action="profile-cv" method="post"
			class="form-inline my-lg-0 my-2">
			<div class="input-group input-group-dark input-group-round">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="material-icons">search</i>
					</span>
				</div>
				<input type="search" name="email"
					class="form-control form-control-dark" placeholder="Search"
					aria-label="Search app" aria-describedby="search-app">
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<a class="navbar-brand js-scroll-trigger" href="#page-top"> <span
			class="d-block d-lg-none">${user.name}</span> <span
			class="d-none d-lg-block"> <img
				class="img-fluid img-profile rounded-circle mx-auto mb-2"
				src="<spring:url value='/profile/avatar/${user.email}'/>" alt="">
		</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#about">About</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#experience">Experience</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#interests">Summary</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#skills">Skills</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#education">Education</a></li>
				<li class="nav-item"><a
					class="js-scroll-trigger material-icons" href="home">home</a> <c:if
						test="${checkFriend == 0 and user.email ne emailUser}">
						<a class="js-scroll-trigger material-icons"
							href="profile-cv/addFriend?emailFriend=${user.email}">person_add</a>
					</c:if></li>



			</ul>
		</div>
	</nav>

	<div class="container-fluid p-0">

		<section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
			<div class="my-auto">
				<h1 class="mb-0">
					I'm <span class="text-primary">${user.name}</span>
				</h1>
				<div class="subheading mb-5">
					${user.address } · ${user.phone} · <a href="${user.email}">${user.email}</a>
				</div>
				<p class="lead mb-5">${user.about}</p>
				<div class="social-icons">
					<a href="#"> <i class="fab fa-linkedin-in"></i>
					</a> <a href="https://github.com/hoangvanvietanh"> <i
						class="fab fa-github"></i>
					</a> <a href="https://facebook.com/hoangvanvietanh"> <i
						class="fab fa-facebook-f"></i>
					</a>
				</div>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="experience">
			<div class="my-auto">
				<h2 class="mb-5">Experience</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<p>${user.experience}</p>
					</div>
				</div>
			</div>

		</section>
		<hr class="m-0">
		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="interests">
			<div class="my-auto">
				<h2 class="mb-5">Summary</h2>
				<p>${user.summary}</p>

			</div>
		</section>
		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="skills">
			<div class="my-auto">
				<h2 class="mb-5">Skills</h2>

				${user.skill}
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="education">
			<div class="my-auto">
				<h2 class="mb-5">Education</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<p>${user.education}</p>

					</div>
				</div>
			</div>
		</section>

		<hr class="m-0">

	</div>

	<script
		src="<spring:url value='/resources/profile-cv/js/jquery.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/profile-cv/js/bootstrap.bundle.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/profile-cv/js/jquery.easing.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/profile-cv/js/resume.min.js'/>"
		type="text/javascript"></script>

</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-52115242-14"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-52115242-14');
</script>
<meta charset="utf-8">
<title>Dask Board</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A project management Bootstrap theme by Medium Rare">
<link href="assets/img/favicon.ico" rel="icon" type="image/x-icon">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1"
	rel="stylesheet">
<link href="css/theme.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/icon.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/app.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
	<div class="layout layout-nav-top">
		<div class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
			<a class="navbar-brand" href="index.html"> <img alt="Pipeline"
				src="assets/img/logo.svg" />
			</a>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="index.html">Overview</a>
					</li>
					<li class="nav-item">
						<div class="dropdown">
							<a class="nav-link dropdown-toggle" href="#"
								data-toggle="dropdown" aria-expanded="false"
								aria-haspopup="true" id="nav-dropdown-2">Pages</a>
							<div class="dropdown-menu" aria-labelledby="nav-dropdown-2">
								<a class="dropdown-item" href="pages-app.html">App Pages</a> <a
									class="dropdown-item" href="pages-utility.html">Utility
									Pages</a> <a class="dropdown-item" href="pages-layouts.html">Layouts</a>
							</div>
						</div>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="documentation/changelog.html">Changelog</a></li>

				</ul>
				<div class="d-lg-flex align-items-center">
					<form class="form-inline my-lg-0 my-2">
						<div class="input-group input-group-dark input-group-round">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="material-icons">search</i>
								</span>
							</div>
							<input type="search" class="form-control form-control-dark"
								placeholder="Search" aria-label="Search app"
								aria-describedby="search-app">
						</div>
					</form>
					<div class="dropdown mx-lg-2">
						<button class="btn btn-primary btn-block dropdown-toggle"
							type="button" id="newContentButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Add New</button>
						<div class="dropdown-menu" aria-labelledby="newContentButton">
							<a class="dropdown-item" href="#">Team</a> <a
								class="dropdown-item" href="#">Project</a> <a
								class="dropdown-item" href="#">Task</a>
						</div>
					</div>
					<div class="d-none d-lg-block">
						<div class="dropdown">
							<a href="#" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <img alt="Image"
								src="assets/img/avatar-male-4.jpg" class="avatar" />
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a href="nav-side-user.html" class="dropdown-item">Profile</a> <a
									href="utility-account-settings.html" class="dropdown-item">Account
									Settings</a> <a href="#" class="dropdown-item">Log Out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="main-container"></div>

	</div>

	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/autosize@4.0.2/dist/autosize.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.10.0/prism.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/@shopify/draggable@1.0.0-beta.7/lib/draggable.bundle.legacy.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/@shopify/draggable@1.0.0-beta.7/lib/plugins/swap-animation.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/min/dropzone.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/list.js/1.5.0/list.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/theme.js"></script>
</body>

</html>

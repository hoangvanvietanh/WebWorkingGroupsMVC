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
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="assets/img/favicon.ico" rel="icon" type="image/x-icon">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1"
	rel="stylesheet">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/theme.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/icon.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/app.css'/>">
<style type="text/css">
.messages {
	margin-top: 1.5rem;
	max-width: 500px;
	max-height: 500px;
	overflow: auto;
}
</style>
</head>

<body>

	<div class="layout layout-nav-top layout-sidebar">
		<div class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
			<a class="navbar-brand" href="home"> <img
				style="width: 45px; height: 45px" alt="Vakapu"
				src="resources/img/logo1.png" />
			</a>
			<div class="d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbar-collapse" aria-controls="navbar-collapse"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="d-block d-lg-none ml-2">
					<div class="dropdown">
						<a href="#" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <img alt="Image"
							src="<spring:url value='/profile/avatar/${emailUser}'/>"
							class="avatar" />
						</a>
						<div class="dropdown-menu dropdown-menu-right">
							<a href="/profile" class="dropdown-item">Profile</a> <a
								href="account/change-password" class="dropdown-item">Password
								Setting</a> <a href="logout" class="dropdown-item">Log Out</a>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbar-collapse">

				<ul class="navbar-nav">
					<li class="nav-item">
						<form class="form-inline my-lg-0 my-2">
							<div class="input-group input-group-dark input-group-round">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="material-icons">search</i>
									</span>
								</div>
								<input type="search" class="form-control form-control-dark"
									placeholder="Search" aria-label="Search app"
									aria-describedby="search-app">
							</div>
						</form>
					</li>
					<li class="nav-item"><a class="nav-link" href="manage">Manage</a></li>

				</ul>

				<div class="d-lg-flex align-items-center">
					<a style="color: white;" class="material-icons" href="manage">notifications</a>
					<div class="dropdown">
						<a style="color: white;"
							class="nav-link material-icons dropdown-toggle" href="#"
							data-toggle="dropdown" aria-expanded="false" aria-haspopup="true"
							id="nav-dropdown-2">add</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="nav-dropdown-2">
							<a class="dropdown-item" href="team">Team</a> <a
								class="dropdown-item" href="team-project">Project</a> <a
								class="dropdown-item" href="#">Task</a>
						</div>
					</div>

					<div class="d-none d-lg-block">
						<div class="dropdown">
							<a href="#" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <img alt="Image"
								src="<spring:url value='/profile/avatar/${emailUser}'/>"
								class="avatar" />
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a href="profile" class="dropdown-item">Profile</a> <a
									href="account/change-password" class="dropdown-item">Password
									Setting</a> <a href="logout" class="dropdown-item">Log Out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layout-nav-side">
			<div class="main-container">

				<div class="content-container">
					<div class="sidebar-content">
						<button
							class="btn btn-primary btn-round btn-floating btn-lg d-lg-none"
							type="button" data-toggle="collapse"
							data-target="#sidebar-collapse" aria-expanded="false"
							aria-controls="sidebar-floating-chat">
							<i class="material-icons">more_horiz</i> <i
								class="material-icons">close</i>
						</button>
						<div class="sidebar collapse" id="sidebar-collapse">


							<div class="chat-team-sidebar text-small">
								<div class="chat-team-sidebar-bottom">
									<div class="tab-content">
										<div class="tab-pane fade show active" id="members"
											role="tabpanel" aria-labelledby="members-tab"
											data-filter-list="list-group">
											<div class="list-group list-group-flush">

												<a class="list-group-item list-group-item-action" href="#">
													<div class="media media-member mb-0">
														<img alt="Claire Connors"
															src="assets/img/avatar-female-1.jpg" class="avatar" />
														<div class="media-body">
															<h6 class="mb-0" data-filter-by="text">Claire
																Connors</h6>
															<span data-filter-by="text">Administrator</span>
														</div>
													</div>
												</a>


											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="chat-module" data-filter-list="chat-module-body">
						<div class="chat-module-top">
							<div class="chat-module-body">
								<div class="media chat-item">
									<img alt="Claire" src="assets/img/avatar-female-1.jpg"
										class="avatar" />
									<div class="media-body">
										<div class="chat-item-title">
											<span class="chat-item-author" data-filter-by="text">Viet
												Anh</span> <span data-filter-by="text">4 days ago</span>
										</div>
										<div class="chat-item-body" data-filter-by="text">
											<p>Hello Viet Anh</p>

										</div>

									</div>
								</div>




							</div>
						</div>
						<div class="chat-module-bottom">
							<form class="chat-form">
								<textarea class="form-control" placeholder="Type message"
									rows="1"></textarea>
								<div class="chat-form-buttons">
									<button type="submit" class="btn btn-link">Send</button>
								</div>
							</form>
						</div>
					</div>

				</div>

			</div>
		</div>
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
	<script src="<spring:url value='/resources/js/theme.js'/>"
		type="text/javascript"></script>
</body>

</html>

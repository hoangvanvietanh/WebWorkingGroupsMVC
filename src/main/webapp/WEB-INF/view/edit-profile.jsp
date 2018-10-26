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
<title>Manage</title>
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
</head>

<body>

	<div class="layout layout-nav-top">
		<div class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
			<a class="navbar-brand" href="index.html"> <img
				style="width: 80px; height: 30px" alt="Pipeline"
				src="resources/img/fun.gif" />
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
							<a href="profile" class="dropdown-item">Profile</a> <a
								href="account/change-password" method="post" class="dropdown-item">Password
								Setting</a> <a href="logout" class="dropdown-item">Log Out</a>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbar-collapse">
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
				<div class="d-lg-flex align-items-center">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="manage">Manage</a></li>
					</ul>
					<div class="dropdown mx-lg-2"></div>
					<div class="d-none d-lg-block">
						<div class="dropdown">
							<a href="#" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <img alt="Image"
								src="<spring:url value='/profile/avatar/${emailUser}'/>"
								class="avatar" />
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a href="profile" class="dropdown-item">Profile</a> <a
									href="account/change-password" method="post" class="dropdown-item">Password
									Setting</a> <a href="logout" class="dropdown-item">Log Out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main-container">
		<div class="navbar bg-white breadcrumb-bar">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="home">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Manage</li>
				</ol>
			</nav>
			<div class="dropdown">
				<button class="btn btn-round" role="button" data-toggle="dropdown"
					aria-expanded="false">
					<i class="material-icons">settings</i>
				</button>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" data-toggle="modal" data-target="#profile-edit-modal"
								 href="">Account Settings</a>
					<a class="dropdown-item" href="account/change-password" method="post">Change Password</a>
					<a class="dropdown-item text-danger" href="account/deactivate">Deactivate</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item text-danger" href="sign-in/logout">Log out</a>
				</div>
			</div>
		</div>
		<div class="main-container"></div>
		<div class="main">
			<div class="main-inner">
				<div class="container">
					<div class="row">
						<div class="col-sm-4 col-lg-3">
							<div class="sidebar">
								<div class="widget">
									<div class="user-photo">
										<a href="profile/avatar/${emailProfile }"> <img src="assets/img/tmp/agent-2.jpg"
											alt="User Photo"> <span class="user-photo-action">Click
												here to reupload</span>
										</a>
									</div>
									<!-- /.user-photo -->
								</div>
								<!-- /.widget -->
							</div>
							<!-- /.sidebar -->
						</div>
						<!-- /.col-* -->
				
				<form:form modelAttribute="profile" action="profile" >		
						<div class="col-sm-8 col-lg-9">
							<div class="content">
								<div class="page-title">
									<h1>Edit Profile</h1>
								</div>
								<!-- /.page-title -->

								<div class="background-white p20 mb30">
									<h3 class="page-title">Contact Information</h3>

									<div class="row">
										<div class="form-group col-sm-6">
											<label>Name</label> <form:input type="text" readonly="true" path="name" class="form-control" />
										</div>
										<!-- /.form-group -->
										<div class="form-group col-sm-6">
											<label>E-mail</label> <form:input type="text" readonly="true" path="email" class="form-control" />
										</div>
										<!-- /.form-group -->
										<div class="form-group col-sm-6">
											<label>Birthdate</label>
											<form:input path="birthdate" readonly="true" type="date" class="form-control"/>
										</div> 
										<div class="form-group col-sm-6">
											<label>Phone</label> <form:input path="phone" readonly="true" type="text" class="form-control"/>
										</div>
										<!-- /.form-group -->
										<div class="form-group col-sm-6">
											<label>Address</label> <form:input path="address" readonly="true" type="text"
												class="form-control"/>
										</div>
										<!-- /.form-group -->
										<div class="form-group col-sm-6">
											<label>Skill</label>
											<form:input path="skill" type="text" readonly="true" class="form-control"/>
										</div> 
										<div class="form-group col-sm-6">
											<label>Experience</label>
											<form:input path="experience" type="text" readonly="true" class="form-control"/>
										</div> 
									</div>
									<!-- /.row -->
								</div>
								<!-- /.row -->
							</div>

							<div class="background-white p20 mb30">
								<h3 class="page-title">Biography</h3>
								<form:textarea class="form-control" path="about" readonly="true" rows="7"></form:textarea>
							</div>

						</div>
				</form:form>
				
					<form:form modelAttribute="profile" action="profile/edit-profile" class="modal fade" id="profile-edit-modal" tabindex="-1"
							role="dialog" aria-labelledby="profile-edit-modal"
							aria-hidden="true" enctype="multipart/form-data" >			
						<div class="modal-dialog" role="document">
							
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Edit Profile</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!-- End of profile head -->
								<!-- /.page-title -->
								<ul class="nav nav-tabs nav-fill">
										<li class="nav-item"><a class="nav-link active"
											id="profile-add-details-tab" data-toggle="tab"
											href="#profile-add-details" role="tab"
											aria-controls="profile-add-details" aria-selected="true">Your Profile</a>
										</li>
								</ul>
								
								
								<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active"
												id="profile-add-details" role="tabpanel"
												aria-labelledby="profile-add-details-tab">
												<h3 class="page-title">Profile</h3>
												
												
												<div class="profile-picture" style="float: left">

													<img style="width: 290px; height: 290px" alt="Avatar"
														src="<spring:url value='/profile/avatar/${emailProfile}'/>">
													<div>
														<input type="file" name="file" id="file" value="change picture"
														style="display: none" /> <label for="file">Click here
														Change picture</label>
													</div>
												</div>
										
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label>
													<form:input class="form-control col" type="text"
														placeholder="Your Name" path="name" />
												</div>
												<div class="form-group row">
													<label class="col-3">Email</label>
													<form:input class="form-control col" 
														placeholder="Project description" path="email" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Date of Birth</label>
													<form:input class="form-control col" type="date"
														placeholder="Project start" path="birthdate" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Phone</label>
													<form:input class="form-control col" type="text"
														placeholder="Your Phone Number" path="phone" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Address</label>
													<form:input class="form-control col" type="text"
														placeholder="Your Address" path="address" />
												</div>
													<h6>Your Abilities</h6>
												<div class="form-group row">
													<label class="col-3">Skills</label>
													<form:textarea class="form-control col" rows="3"
														placeholder="Your skills" path="skill"></form:textarea>
												</div>
												<div class="form-group row">
													<label class="col-3">Expriences</label>
													<form:textarea class="form-control col" rows="3"
														placeholder="Experiences that you have gained" path="experience"></form:textarea>
												</div>
											
									</div>
								<!-- class="tab-pane fade show active" -->
							</div>
								<!--  class="tab-content" -->
								
							<div class="form-group row">
										<label class="col-3">Description</label>
											<form:textarea class="form-control col" rows="3"
														placeholder="Project description" path="about"></form:textarea>
							</div>
							
							<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Save</button>
						</div>
						
						</div>
					</div>
					</div>
						
				</form:form>
						<!-- /.content -->
					</div>
					<!-- /.col-* -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.main-inner -->
	</div>
	<!-- /.main -->

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

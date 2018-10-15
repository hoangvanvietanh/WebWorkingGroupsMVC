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
			<a class="navbar-brand" href="index.html"> <img style="width: 80px;height: 30px"  alt="Pipeline"
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
								href="utility-account-settings.html" class="dropdown-item">Account
								Settings</a> <a href="logout" class="dropdown-item">Log Out</a>
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
									href="utility-account-settings.html" class="dropdown-item">Account
									Settings</a> <a href="logout" class="dropdown-item">Log Out</a>
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
						<li class="breadcrumb-item"><a href="index.html">Overview</a>
						</li>

						<li class="breadcrumb-item"><a href="pages-app.html">App
								Pages</a></li>


						<li class="breadcrumb-item active" aria-current="page">User</li>
					</ol>
				</nav>

				<div class="dropdown">
					<button class="btn btn-round" role="button" data-toggle="dropdown"
						aria-expanded="false">
						<i class="material-icons">settings</i>
					</button>
					<div class="dropdown-menu dropdown-menu-right">





						<a class="dropdown-item" href="#">Account Settings</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item text-danger" href="#">Log out</a>

					</div>
				</div>

			</div>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-11 col-xl-10">
						<div class="page-header mb-4">
							<div class="media">
								<img alt="Image" src="<spring:url value='/profile/avatar/${emailUser}'/>"
									class="avatar avatar-lg mt-1" />
								<div class="media-body ml-3">
									<h1 class="mb-0">David Whittaker</h1>
									<p class="lead">Interface designer and front-end developer</p>
								</div>
							</div>
						</div>
						<ul class="nav nav-tabs nav-fill">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#teams" role="tab" aria-controls="teams"
								aria-selected="true">Teams</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#projects" role="tab" aria-controls="projects"
								aria-selected="false">Projects</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tasks" role="tab" aria-controls="tasks"
								aria-selected="false">Tasks</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="teams" role="tabpanel"
								aria-labelledby="teams-tab" data-filter-list="content-list-body">
								<div class="row content-list-head">
									<div class="col-auto">
										<h3>Teams</h3>
										<button class="btn btn-round" data-toggle="modal"
											data-target="#team-add-modal">
											<i class="material-icons">add</i>
										</button>
									</div>
									<form class="col-md-auto">
										<div class="input-group input-group-round">
											<div class="input-group-prepend">
												<span class="input-group-text"> <i
													class="material-icons">filter_list</i>
												</span>
											</div>
											<input type="search" class="form-control filter-list-input"
												placeholder="Filter teams" aria-label="Filter teams"
												aria-describedby="filter-teams">
										</div>
									</form>
								</div>
								<!--end of content list head-->
								
								<div class="content-list-body row">
								<c:forEach var="team" items="${team}">
									<div class="col-md-6">
										<div class="card card-team">
											<div class="card-body">
												<div class="dropdown card-options">
													<button class="btn-options" type="button"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														<i class="material-icons">more_vert</i>
													</button>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Manage</a>
														<div class="dropdown-divider"></div>
														<a class="dropdown-item text-danger" href="#">Leave
															Team</a>
													</div>
												</div>
												<div class="card-title">
													<a href="#">
														<h5 data-filter-by="text">${team.name}</h5>
													</a> <span>3 Projects, 2 Members</span>
												</div>
												<img src="<spring:url value='/manage/searchTeam/${team.idTeam}'/>">
												<ul class="avatars">
													<c:forEach var="member" items="${member}">
													<li><a href="#" data-toggle="tooltip" title="David">
															<img alt="David Whittaker" class="avatar"
															src="<spring:url value='/profile/avatar/${member.email}'/>" />
													</a></li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
									</c:forEach>
								</div>
								<!--end of content-list-body-->
							</div>
							<div class="tab-pane fade" id="projects" role="tabpanel"
								aria-labelledby="projects-tab"
								data-filter-list="content-list-body">
								<div class="content-list">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Projects</h3>
										</div>
										<form class="col-md-auto">
											<div class="input-group input-group-round">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="material-icons">filter_list</i>
													</span>
												</div>
												<input type="search" class="form-control filter-list-input"
													placeholder="Filter projects" aria-label="Filter Projects"
													aria-describedby="filter-projects">
											</div>
										</form>
									</div>
									<!--end of content list head-->
									<div class="content-list-body row">
										<div class="col-lg-6">
											<div class="card card-project">

												<div class="progress">
													<div class="progress-bar bg-success" role="progressbar"
														style="width: 8%" aria-valuenow="8" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>

												<div class="card-body">
													<div class="dropdown card-options">
														<button class="btn-options" type="button"
															id="project-dropdown-button-5" data-toggle="dropdown"
															aria-haspopup="true" aria-expanded="false">
															<i class="material-icons">more_vert</i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Share</a>
														</div>
													</div>
													<div class="card-title">
														<a href="#">
															<h5 data-filter-by="text">Brand Concept &amp; Design</h5>
														</a>
													</div>
													<ul class="avatars">
														<li><a href="#" data-toggle="tooltip" title="Ravi">
																<img alt="Ravi Singh" class="avatar"
																src="assets/img/avatar-male-3.jpg" data-filter-by="alt" />
														</a></li>
														<li><a href="#" data-toggle="tooltip" title="Masimba">
																<img alt="Masimba Sibanda" class="avatar"
																src="assets/img/avatar-male-5.jpg" data-filter-by="alt" />
														</a></li>
														<li><a href="#" data-toggle="tooltip" title="Peggy">
																<img alt="Peggy Brown" class="avatar"
																src="assets/img/avatar-female-2.jpg"
																data-filter-by="alt" />
														</a></li>
														<li><a href="#" data-toggle="tooltip" title="Marcus">
																<img alt="Marcus Simmons" class="avatar"
																src="assets/img/avatar-male-1.jpg" data-filter-by="alt" />
														</a></li>
														<li><a href="#" data-toggle="tooltip"
															title="Kerri-Anne"> <img alt="Kerri-Anne Banks"
																class="avatar" src="assets/img/avatar-female-5.jpg"
																data-filter-by="alt" />
														</a></li>
														<li><a href="#" data-toggle="tooltip" title="Claire">
																<img alt="Claire Connors" class="avatar"
																src="assets/img/avatar-female-1.jpg"
																data-filter-by="alt" />
														</a></li>
													</ul>
													<div class="card-meta d-flex justify-content-between">
														<div class="d-flex align-items-center">
															<i class="material-icons mr-1">playlist_add_check</i> <span
																class="text-small">1/12</span>
														</div>
														<span class="text-small" data-filter-by="text">Due
															20 days</span>
													</div>
												</div>
											</div>
										</div>

										<div class="col-lg-6">
											<div class="card card-project">

												<div class="card-body">
													<div class="dropdown card-options">
														<button class="btn-options" type="button"
															id="project-dropdown-button-6" data-toggle="dropdown"
															aria-haspopup="true" aria-expanded="false">
															<i class="material-icons">more_vert</i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item" href="#">Share</a>
														</div>
													</div>
													<div class="card-title">
														<a href="#">
															<h5 data-filter-by="text">Company Getaway</h5>
														</a>
													</div>
													<ul class="avatars">
														<li><a href="#" data-toggle="tooltip" title="Claire">
																<img alt="Claire Connors" class="avatar"
																src="assets/img/avatar-female-1.jpg"
																data-filter-by="alt" />
														</a></li>
														<li><a href="#" data-toggle="tooltip"
															title="Kristina"> <img alt="Kristina Van Der Stroem"
																class="avatar" src="assets/img/avatar-female-4.jpg"
																data-filter-by="alt" />
														</a></li>
													</ul>
													<div class="card-meta d-flex justify-content-between">
														<div class="d-flex align-items-center">
															<i class="material-icons mr-1">playlist_add_check</i> <span
																class="text-small">-/-</span>
														</div>
														<span class="text-small" data-filter-by="text">Unscheduled</span>
													</div>
												</div>
											</div>
										</div>

									</div>
									<!--end of content list body-->
								</div>
								<!--end of content list-->
							</div>
							<div class="tab-pane fade" id="tasks" role="tabpanel"
								aria-labelledby="tasks-tab" data-filter-list="content-list-body">
								<div class="row content-list-head">
									<div class="col-auto">
										<h3>Tasks</h3>
									</div>
									<form class="col-md-auto">
										<div class="input-group input-group-round">
											<div class="input-group-prepend">
												<span class="input-group-text"> <i
													class="material-icons">filter_list</i>
												</span>
											</div>
											<input type="search" class="form-control filter-list-input"
												placeholder="Filter tasks" aria-label="Filter Tasks"
												aria-describedby="filter-tasks">
										</div>
									</form>
								</div>
								<!--end of content list head-->
								<div class="content-list-body row">
									<div class="col-12">
										<div class="card card-task">
											<div class="progress">
												<div class="progress-bar bg-success" role="progressbar"
													style="width: 0%" aria-valuenow="25" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
											<div class="card-body">
												<div class="card-title">
													<a href="#">
														<h6 data-filter-by="text">Assemble Outcomes Report
															for client</h6>
													</a> <span class="text-small">7 days</span>
												</div>
												<div class="card-meta">
													<ul class="avatars">
														<li><a href="#" data-toggle="tooltip" title="Marcus">
																<img alt="Marcus Simmons" class="avatar"
																src="assets/img/avatar-male-1.jpg" />
														</a></li>
														<li><a href="#" data-toggle="tooltip" title="Claire">
																<img alt="Claire Connors" class="avatar"
																src="assets/img/avatar-female-1.jpg" />
														</a></li>
														<li><a href="#" data-toggle="tooltip" title="David">
																<img alt="David Whittaker" class="avatar"
																src="assets/img/avatar-male-4.jpg" />
														</a></li>
													</ul>
													<div class="d-flex align-items-center">
														<i class="material-icons">playlist_add_check</i> <span>0/6</span>
													</div>
													<div class="dropdown card-options">
														<button class="btn-options" type="button"
															id="task-dropdown-button-3" data-toggle="dropdown"
															aria-haspopup="true" aria-expanded="false">
															<i class="material-icons">more_vert</i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#">Mark as done</a>
															<div class="dropdown-divider"></div>
															<a class="dropdown-item text-danger" href="#">Archive</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>


								</div>
								<!--end of content list-->
							</div>
							<!--end of tab-->
						</div>
						<form class="modal fade" id="team-add-modal" tabindex="-1"
							role="dialog" aria-labelledby="team-add-modal" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">New Team</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<ul class="nav nav-tabs nav-fill">
										<li class="nav-item"><a class="nav-link active"
											id="team-add-details-tab" data-toggle="tab"
											href="#team-add-details" role="tab"
											aria-controls="team-add-details" aria-selected="true">Details</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											id="team-add-members-tab" data-toggle="tab"
											href="#team-add-members" role="tab"
											aria-controls="team-add-members" aria-selected="false">Members</a>
										</li>
									</ul>
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active" id="team-add-details"
												role="tabpanel" aria-labelledby="team-add-details-tab">
												<h6>Team Details</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label> <input
														class="form-control col" type="text"
														placeholder="Team name" name="team-name" />
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<textarea class="form-control col" rows="3"
														placeholder="Team description" name="team-description"></textarea>
												</div>
											</div>
											<div class="tab-pane fade" id="team-add-members"
												role="tabpanel" aria-labelledby="team-add-members-tab">
												<div class="users-manage"
													data-filter-list="form-group-users">
													<div class="mb-3">
														<ul class="avatars text-center">
															<li><img alt="Harry Xai"
																src="assets/img/avatar-male-2.jpg" class="avatar"
																data-toggle="tooltip" data-title="Harry Xai" /></li>

														</ul>
													</div>
													<div class="input-group input-group-round">
														<div class="input-group-prepend">
															<span class="input-group-text"> <i
																class="material-icons">filter_list</i>
															</span>
														</div>
														<input type="search"
															class="form-control filter-list-input"
															placeholder="Filter members" aria-label="Filter Members"
															aria-describedby="filter-members">
													</div>
													<div class="form-group-users">

														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="user-manage-4" checked> <label
																class="custom-control-label" for="user-manage-4">
																<div class="d-flex align-items-center">
																	<img alt="Harry Xai" src="assets/img/avatar-male-2.jpg"
																		class="avatar mr-2" /> <span class="h6 mb-0"
																		data-filter-by="text">Harry Xai</span>
																</div>
															</label>
														</div>

														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="user-manage-5"> <label
																class="custom-control-label" for="user-manage-5">
																<div class="d-flex align-items-center">
																	<img alt="Sally Harper"
																		src="assets/img/avatar-female-3.jpg"
																		class="avatar mr-2" /> <span class="h6 mb-0"
																		data-filter-by="text">Sally Harper</span>
																</div>
															</label>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!--end of modal body-->
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Done</button>
									</div>
								</div>
							</div>
						</form>
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
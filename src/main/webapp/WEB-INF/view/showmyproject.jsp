<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en" class="gr__pipeline_mediumra_re">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="http://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/jquery.min.js"></script>
<script
	src="http://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/Chart.min.js"></script>
<script
	src="http://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/Chart.bundle.min.js"></script>
<script
	src="http://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/popper.min.js"></script>
<script
	src="http://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/javascript/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://themes.getbootstrap.com/wp-includes/js/utils.min.js?ver=4.8.4"></script>
<script type="text/javascript"
	src="http://themes.getbootstrap.com/wp-includes/js/plupload/plupload.full.min.js?ver=2.1.8"></script>
<link rel="stylesheet"
	href="http://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/style.css?ver=1531597991">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script async=""
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
<title>Pipeline Project Management Bootstrap Theme</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A project management Bootstrap theme by Medium Rare">
<link href="assets/img/favicon.ico" rel="icon" type="image/x-icon">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1"
	rel="stylesheet">
<link href="assets/css/theme.css" rel="stylesheet" type="text/css"
	media="all">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/showmyproject.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/modal.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/content-lists.css'/>">
</head>
<body data-gr-c-s-loaded="true" class="" style="">

	<div class="layout layout-nav-side">

		<div class="main-container">

			<div class="navbar bg-white breadcrumb-bar">
				<nav aria-label="breadcrumb"></nav>

				<div class="dropdown">
					<button class="btn btn-round" role="button" data-toggle="dropdown"
						aria-expanded="false">
						<i class="material-icons">settings</i>
					</button>
					<div class="dropdown-menu dropdown-menu-right">


						<a class="dropdown-item" href="#" data-toggle="modal"
							data-target="#project-edit-modal">Edit Project</a> <a
							class="dropdown-item" href="#">Share</a> <a class="dropdown-item"
							href="#">Mark as Complete</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item text-danger" href="#">Archive</a>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-11 col-xl-10">
						<div class="page-header">
							<h1>${project.name}</h1>
							<p class="lead">${project.description}</p>
							<div>
								<div class="progress">
									<div class="progress-bar bg-success" style="width: 25%;"></div>
								</div>
								<div class="d-flex justify-content-between text-small">
									<div class="d-flex align-items-center">
										<i class="material-icons">playlist_add_check</i> <span>3/12</span>
									</div>
									<span>Due 9 days</span>
								</div>
							</div>
						</div>
						<ul class="nav nav-tabs nav-fill">
							<li class="nav-item"><a class="nav-link active show"
								data-toggle="tab" href="#tasks" role="tab" aria-controls="tasks"
								aria-selected="true">Tasks</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#files" role="tab" aria-controls="files"
								aria-selected="false">Files</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#activity" role="tab" aria-controls="activity"
								aria-selected="false">Activity</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade active show" id="tasks" role="tabpanel"
								aria-labelledby="tasks-tab" data-filter-list="card-list-body">
								<div class="row content-list-head">
									<div class="col-auto">
										<h3>Tasks</h3>
										<button class="btn btn-round" data-toggle="modal"
											data-target="#task-add-modal">
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
												placeholder="Filter tasks" aria-label="Filter Tasks"
												aria-describedby="filter-tasks">
										</div>
									</form>
								</div>
								<!--end of content list head-->
								
								
								<c:forEach var="task" items="${task}">
								<div class="content-list-body">
									<div class="card-list">
										<div class="card-list-head">
											<h6>${task.name}</h6>
											<div class="dropdown">
												<button class="btn-options" type="button"
													id="cardlist-dropdown-button-1" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false">
													<i class="material-icons">more_vert</i>
												</button>
												<div class="dropdown-menu dropdown-menu-right"
													x-placement="bottom-end"
													style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(24px, 24px, 0px);">
													<a class="dropdown-item" href="#">Rename</a> <a
														class="dropdown-item text-danger" href="#">Archive</a>
												</div>
											</div>
										</div>
										<div class="card-list-body filter-list-1539234439490">
											<div class="card card-task">
												<div class="progress">
													<div class="progress-bar bg-danger" role="progressbar"
														style="width: 75%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
												<div class="card-body">
													<div class="card-title">
														<a href="showMyTask?idTask=${task.id}">
															<h6 data-filter-by="text" class="H6-filter-by-text">${task.description}</h6>
														</a> <span class="text-small">Today</span>
													</div>
													<div class="card-meta">

														<div class="d-flex align-items-center">
															<i class="material-icons">playlist_add_check</i> <span>3/4</span>
														</div>
														<div class="dropdown card-options">
															<button class="btn-options" type="button"
																id="task-dropdown-button-1" data-toggle="dropdown"
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


									<!--end of content list body-->
								</div>
								</c:forEach>
								<!--end of content list-->
							</div>
							<!--end of tab-->
							<div class="tab-pane fade" id="files" role="tabpanel"
								aria-labelledby="files-tab" data-filter-list="dropzone-previews">
								<div class="content-list">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Files</h3>
										</div>
										<form class="col-md-auto">
											<div class="input-group input-group-round">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="material-icons">filter_list</i>
													</span>
												</div>
												<input type="search" class="form-control filter-list-input"
													placeholder="Filter files" aria-label="Filter Tasks"
													aria-describedby="filter-tasks">
											</div>
										</form>
									</div>
									<!--end of content list head-->
									<div class="content-list-body row">
										<div class="col">
											<div class="d-none dz-template">
												<li class="list-group-item dz-preview dz-file-preview">
													<div class="media align-items-center dz-details">
														<ul class="avatars">
															<li>
																<div class="avatar bg-primary dz-file-representation">
																	<img class="avatar" data-dz-thumbnail=""> <i
																		class="material-icons">attach_file</i>
																</div>
															</li>
															<li><img alt="David Whittaker"
																src="assets/img/avatar-male-4.jpg" class="avatar"
																data-title="David Whittaker" data-toggle="tooltip">
															</li>
														</ul>
														<div
															class="media-body d-flex justify-content-between align-items-center">
															<div class="dz-file-details">
																<a href="#" class="dz-filename"> <span
																	data-dz-name=""></span>
																</a> <br> <span class="text-small dz-size"
																	data-dz-size=""></span>
															</div>
															<img alt="Loader" src="assets/img/loader.svg"
																class="dz-loading">
															<div class="dropdown">
																<button class="btn-options" type="button"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<i class="material-icons">more_vert</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a class="dropdown-item" href="#">Download</a> <a
																		class="dropdown-item" href="#">Share</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item text-danger" href="#"
																		data-dz-remove="">Delete</a>
																</div>
															</div>
															<button class="btn btn-danger btn-sm dz-remove"
																data-dz-remove="">Cancel</button>
														</div>
													</div>
													<div class="progress dz-progress">
														<div class="progress-bar dz-upload"
															data-dz-uploadprogress=""></div>
													</div>
												</li>
											</div>
											<form class="dropzone dz-clickable"
												action="http://mediumra.re/dropzone/upload.php">
												<span class="dz-message">Drop files here or click
													here to upload</span>
											</form>
											<ul
												class="list-group list-group-activity dropzone-previews flex-column-reverse filter-list-1539234439489">
												<li class="list-group-item" data-t="null" data-i="null"
													data-l="null" data-e="null">
													<div class="media align-items-center">
														<ul class="avatars">
															<li>
																<div class="avatar bg-primary">
																	<i class="material-icons">insert_drive_file</i>
																</div>
															</li>
															<li><img alt="Peggy Brown"
																src="assets/img/avatar-female-2.jpg"
																class="avatar filter-by-data-title"
																data-title="Peggy Brown" data-toggle="tooltip"
																data-filter-by="data-title"></li>
														</ul>
														<div
															class="media-body d-flex justify-content-between align-items-center">
															<div>
																<a href="#" data-filter-by="text"
																	class="A-filter-by-text">client-questionnaire</a> <br>
																<span class="text-small SPAN-filter-by-text"
																	data-filter-by="text">48kb Text Doc</span>
															</div>
															<div class="dropdown">
																<button class="btn-options" type="button"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<i class="material-icons">more_vert</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a class="dropdown-item" href="#">Download</a> <a
																		class="dropdown-item" href="#">Share</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item text-danger" href="#">Delete</a>
																</div>
															</div>
														</div>
													</div>
												</li>
												<li class="list-group-item" data-t="null" data-i="null"
													data-l="null" data-e="null">
													<div class="media align-items-center">
														<ul class="avatars">
															<li>
																<div class="avatar bg-primary">
																	<i class="material-icons">folder</i>
																</div>
															</li>
															<li><img alt="Harry Xai"
																src="assets/img/avatar-male-2.jpg"
																class="avatar filter-by-data-title"
																data-title="Harry Xai" data-toggle="tooltip"
																data-filter-by="data-title"></li>
														</ul>
														<div
															class="media-body d-flex justify-content-between align-items-center">
															<div>
																<a href="#" data-filter-by="text"
																	class="A-filter-by-text">moodboard_images</a> <br>
																<span class="text-small SPAN-filter-by-text"
																	data-filter-by="text">748kb ZIP</span>
															</div>
															<div class="dropdown">
																<button class="btn-options" type="button"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<i class="material-icons">more_vert</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a class="dropdown-item" href="#">Download</a> <a
																		class="dropdown-item" href="#">Share</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item text-danger" href="#">Delete</a>
																</div>
															</div>
														</div>
													</div>
												</li>
												<li class="list-group-item" data-t="null" data-i="null"
													data-l="null" data-e="null">
													<div class="media align-items-center">
														<ul class="avatars">
															<li>
																<div class="avatar bg-primary">
																	<i class="material-icons">image</i>
																</div>
															</li>
															<li><img alt="Ravi Singh"
																src="assets/img/avatar-male-3.jpg"
																class="avatar filter-by-data-title"
																data-title="Ravi Singh" data-toggle="tooltip"
																data-filter-by="data-title"></li>
														</ul>
														<div
															class="media-body d-flex justify-content-between align-items-center">
															<div>
																<a href="#" data-filter-by="text"
																	class="A-filter-by-text">possible-hero-image</a> <br>
																<span class="text-small SPAN-filter-by-text"
																	data-filter-by="text">1.2mb JPEG image</span>
															</div>
															<div class="dropdown">
																<button class="btn-options" type="button"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<i class="material-icons">more_vert</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a class="dropdown-item" href="#">Download</a> <a
																		class="dropdown-item" href="#">Share</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item text-danger" href="#">Delete</a>
																</div>
															</div>
														</div>
													</div>
												</li>
												<li class="list-group-item" data-t="null" data-i="null"
													data-l="null" data-e="null">
													<div class="media align-items-center">
														<ul class="avatars">
															<li>
																<div class="avatar bg-primary">
																	<i class="material-icons">insert_drive_file</i>
																</div>
															</li>
															<li><img alt="Claire Connors"
																src="assets/img/avatar-female-1.jpg"
																class="avatar filter-by-data-title"
																data-title="Claire Connors" data-toggle="tooltip"
																data-filter-by="data-title"></li>
														</ul>
														<div
															class="media-body d-flex justify-content-between align-items-center">
															<div>
																<a href="#" data-filter-by="text"
																	class="A-filter-by-text">LandingPrototypes</a> <br>
																<span class="text-small SPAN-filter-by-text"
																	data-filter-by="text">415kb Sketch Doc</span>
															</div>
															<div class="dropdown">
																<button class="btn-options" type="button"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<i class="material-icons">more_vert</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a class="dropdown-item" href="#">Download</a> <a
																		class="dropdown-item" href="#">Share</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item text-danger" href="#">Delete</a>
																</div>
															</div>
														</div>
													</div>
												</li>
												<li class="list-group-item" data-t="null" data-i="null"
													data-l="null" data-e="null">
													<div class="media align-items-center">
														<ul class="avatars">
															<li>
																<div class="avatar bg-primary">
																	<i class="material-icons">insert_drive_file</i>
																</div>
															</li>
															<li><img alt="David Whittaker"
																src="assets/img/avatar-male-4.jpg"
																class="avatar filter-by-data-title"
																data-title="David Whittaker" data-toggle="tooltip"
																data-filter-by="data-title"></li>
														</ul>
														<div
															class="media-body d-flex justify-content-between align-items-center">
															<div>
																<a href="#" data-filter-by="text"
																	class="A-filter-by-text">Branding-Proforma</a> <br>
																<span class="text-small SPAN-filter-by-text"
																	data-filter-by="text">15kb Text Document</span>
															</div>
															<div class="dropdown">
																<button class="btn-options" type="button"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<i class="material-icons">more_vert</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a class="dropdown-item" href="#">Download</a> <a
																		class="dropdown-item" href="#">Share</a>
																	<div class="dropdown-divider"></div>
																	<a class="dropdown-item text-danger" href="#">Delete</a>
																</div>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!--end of content list-->
							</div>
							<div class="tab-pane fade" id="activity" role="tabpanel"
								aria-labelledby="activity-tab"
								data-filter-list="list-group-activity">
								<div class="content-list">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Activity</h3>
										</div>
										<form class="col-md-auto">
											<div class="input-group input-group-round">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="material-icons">filter_list</i>
													</span>
												</div>
												<input type="search" class="form-control filter-list-input"
													placeholder="Filter activity" aria-label="Filter activity"
													aria-describedby="filter-tasks">
											</div>
										</form>
									</div>
									<!--end of content list head-->
									<div class="content-list-body">
										<ol
											class="list-group list-group-activity filter-list-1539234439481">
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">playlist_add_check</i>
															</div>
														</li>
														<li><img alt="Claire"
															src="assets/img/avatar-female-1.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Claire</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">completed
																the task</span><a href="#" data-filter-by="text"
																class="A-filter-by-text">Set up client chat channel</a>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">Just now</span>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">person_add</i>
															</div>
														</li>
														<li><img alt="Ravi"
															src="assets/img/avatar-male-3.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Ravi</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">joined
																the project</span>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">5 hours ago</span>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">playlist_add</i>
															</div>
														</li>
														<li><img alt="Kristina"
															src="assets/img/avatar-female-4.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Kristina</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">added
																the task</span><a href="#" data-filter-by="text"
																class="A-filter-by-text">Produce broad concept
																directions</a>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">Yesterday</span>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">playlist_add</i>
															</div>
														</li>
														<li><img alt="Marcus"
															src="assets/img/avatar-male-1.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Marcus</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">added
																the task</span><a href="#" data-filter-by="text"
																class="A-filter-by-text">Present concepts and
																establish direction</a>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">Yesterday</span>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">person_add</i>
															</div>
														</li>
														<li><img alt="Sally"
															src="assets/img/avatar-female-3.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Sally</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">joined
																the project</span>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">2 days ago</span>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">date_range</i>
															</div>
														</li>
														<li><img alt="Claire"
															src="assets/img/avatar-female-1.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Claire</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">rescheduled
																the task</span><a href="#" data-filter-by="text"
																class="A-filter-by-text">Target market trend
																analysis</a>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">2 days ago</span>
													</div>
												</div>
											</li>
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">add</i>
															</div>
														</li>
														<li><img alt="David"
															src="assets/img/avatar-male-4.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">David</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">started
																the project</span>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">12 days ago</span>
													</div>
												</div>
											</li>
										</ol>
									</div>
								</div>
							</div>
						</div>
						<form:form modelAttribute="proModel" method="post" action="showMyProject/updateProject" class="modal fade" id="project-edit-modal" tabindex="-1"
							role="dialog" aria-labelledby="project-edit-modal"
							style="display: none;" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Edit Project</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<ul class="nav nav-fill">
										<h5 class="nav-item">Details</h5>

									</ul>
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active"
												id="project-edit-details" role="tabpanel"
												aria-labelledby="project-edit-details-tab">
												<h6>General Details</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label> <form:input
														class="form-control col" type="text"
														 path="name"/>
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														path="description"/>
												</div>
												<hr>
												<h6>Timeline</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Start Date</label> <form:input
														class="form-control col"  type="date"
														 path="startDate"/>
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label> <form:input
														class="form-control col" type="date"
														 path="endDate"/>
												</div>
												<div class="alert alert-warning text-small" role="alert">
													<span>You can change due dates at any time.</span>
												</div>
												<hr>
												<h6>Visibility</h6>
												<div class="row">
													<div class="col">
														<div class="custom-control custom-radio">
															<input type="radio" id="visibility-everyone"
																name="visibility" class="custom-control-input"
																checked=""> <label class="custom-control-label"
																for="visibility-everyone">Team</label>
														</div>
													</div>
													<div class="col">
														<div class="custom-control custom-radio">
															<input type="radio" id="visibility-members"
																name="visibility" class="custom-control-input">
															<label class="custom-control-label"
																for="visibility-members">Public</label>
														</div>
													</div>
													<div class="col">
														<div class="custom-control custom-radio">
															<input type="radio" id="visibility-me" name="visibility"
																class="custom-control-input"> <label
																class="custom-control-label" for="visibility-me">Private</label>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<form:hidden path="idproject"/>
									<form:hidden path="owner"/>
									<form:hidden path="visibility"/>
									<!--end of modal body-->
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Save</button>
									</div>
								</div>
							</div>
						</form:form>
						<form:form modelAttribute="taskCreate"
					action="showMyProject/createTask" method="post" class="modal fade" id="task-add-modal" tabindex="-1"
							role="dialog" aria-labelledby="task-add-modal"
							style="display: none;" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">New Task</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<ul class="nav nav-fill">
										<h5 class="nav-item">Details</h5>

									</ul>
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade active show" id="task-add-details"
												role="tabpanel" aria-labelledby="task-add-details-tab">
												<h6>General Details</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label> <form:input
														class="form-control col" type="text"
														placeholder="Task name" path="name"/>
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														placeholder="Task description" path="description"/>
												</div>
												<hr>
												<h6>Timeline</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Start Date</label> <form:input
														class="form-control col" type="date"
														placeholder="Task start" path="startDate"/>
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label> <form:input
														class="form-control col" type="date"
														placeholder="Task due" path="endDate"/>
												</div>
												<div class="alert alert-warning text-small" role="alert">
													<span>You can change due dates at any time.</span>
												</div>
											</div>
										</div>
									</div>
									<!--end of modal body-->
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Create Task</button>
									</div>
								</div>
							</div>
						</</form:form>
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
	<script type="text/javascript" src="assets/js/theme.js"></script>


	<style type="text/css">
.layout-switcher {
	position: fixed;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%) translateY(73px);
	color: #fff;
	transition: all .35s ease;
	background: #343a40;
	border-radius: .25rem .25rem 0 0;
	padding: .75rem;
	z-index: 999;
}

.layout-switcher
:not
 
(
:hover
 
){
opacity
:
 
.95
;


}
.layout-switcher
:not
 
(
:focus
 
){
cursor
:
 
pointer
;


}
.layout-switcher-head {
	font-size: .75rem;
	font-weight: 600;
	text-transform: uppercase;
}

.layout-switcher-head i {
	font-size: 1.25rem;
	transition: all .35s ease;
}

.layout-switcher-body {
	transition: all .55s ease;
	opacity: 0;
	padding-top: .75rem;
	transform: translateY(24px);
	text-align: center;
}

.layout-switcher:focus {
	opacity: 1;
	outline: none;
	transform: translateX(-50%) translateY(0);
}

.layout-switcher:focus .layout-switcher-head i {
	transform: rotateZ(180deg);
	opacity: 0;
}

.layout-switcher:focus .layout-switcher-body {
	opacity: 1;
	transform: translateY(0);
}

.layout-switcher-option {
	width: 72px;
	padding: .25rem;
	border: 2px solid rgba(255, 255, 255, 0);
	display: inline-block;
	border-radius: 4px;
	transition: all .35s ease;
}

.layout-switcher-option.active {
	border-color: #007bff;
}

.layout-switcher-icon {
	width: 100%;
	border-radius: 4px;
}

.layout-switcher-body
:hover
 
.layout-switcher-option
:not
 
(
:hover
 
){
opacity
:
 
.5
;

	
transform
:
 
scale
(0
.9
);


}
@media all and (max-width: 990px) {
	.layout-switcher {
		min-width: 250px;
	}
}

@media all and (max-width: 767px) {
	.layout-switcher {
		display: none;
	}
}
</style>





	<div id="draggable-live-region" aria-relevant="additions"
		aria-atomic="true" aria-live="assertive" role="log"
		style="position: fixed; width: 1px; height: 1px; top: -1px; overflow: hidden;"></div>
	<input type="file" multiple="multiple" class="dz-hidden-input"
		style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
	<div id="draggable-live-region" aria-relevant="additions"
		aria-atomic="true" aria-live="assertive" role="log"
		style="position: fixed; width: 1px; height: 1px; top: -1px; overflow: hidden;"></div>
	<input type="file" multiple="multiple" class="dz-hidden-input"
		style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
	<div id="draggable-live-region" aria-relevant="additions"
		aria-atomic="true" aria-live="assertive" role="log"
		style="position: fixed; width: 1px; height: 1px; top: -1px; overflow: hidden;"></div>
	<input type="file" multiple="multiple" class="dz-hidden-input"
		style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
	<div id="draggable-live-region" aria-relevant="additions"
		aria-atomic="true" aria-live="assertive" role="log"
		style="position: fixed; width: 1px; height: 1px; top: -1px; overflow: hidden;"></div>
	<input type="file" multiple="multiple" class="dz-hidden-input"
		style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
	<div id="draggable-live-region" aria-relevant="additions"
		aria-atomic="true" aria-live="assertive" role="log"
		style="position: fixed; width: 1px; height: 1px; top: -1px; overflow: hidden;"></div>
	<input type="file" multiple="multiple" class="dz-hidden-input"
		style="visibility: hidden; position: absolute; top: 0px; left: 0px; height: 0px; width: 0px;">
</body>
</html>
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
	href="<spring:url value='/resources/css/modal.css'/>">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/content-lists.css'/>">
	<link rel="stylesheet"
	href="<spring:url value='/resources/css/showmytask.css'/>">
<style type="text/css">

</style>
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
							data-target="#task-edit-modal">Edit</a> <a class="dropdown-item"
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
							<h1>${task.name}</h1>
							<p class="lead">${task.description}</p>

							<div>
								<div class="progress">
									<div class="progress-bar bg-success" style="width: 42%;"></div>
								</div>
								<div class="d-flex justify-content-between text-small">
									<div class="d-flex align-items-center">
										<i class="material-icons">playlist_add_check</i> <span>3/7</span>
									</div>
									<span>Due 14 days</span>
								</div>
							</div>
						</div>
						<ul class="nav nav-tabs nav-fill">
							<li class="nav-item"><a class="nav-link active show"
								data-toggle="tab" href="#task" role="tab" aria-controls="task"
								aria-selected="true">Task</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#files" role="tab" aria-controls="files"
								aria-selected="false">Files</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#activity" role="tab" aria-controls="activity"
								aria-selected="false">Activity</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade active show" id="task" role="tabpanel"
								aria-labelledby="task-tab">
								<div class="content-list" data-filter-list="checklist">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Checklist</h3>
											<button class="btn btn-round" data-toggle="modal"
												data-target="#checklist-add-modal">
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
													placeholder="Filter checklist"
													aria-label="Filter checklist"
													aria-describedby="filter-checklist">
											</div>
										</form>
									</div>
									<!--end of content list head-->
									<c:forEach var="todo" items="${todo}">
									<div class="content-list-body">
										<form class="checklist filter-list-1539340237552" tabindex="0">
											<div class="row" tabindex="0">
												<div class="form-group col">
													<span class="checklist-reorder"> <i
														class="material-icons">reorder</i>
													</span>
													<div class="custom-control custom-checkbox col">
														<input type="checkbox" class="custom-control-input"
															id="checklist-item-1" checked=""> <label
															class="custom-control-label" for="checklist-item-1"></label>
														<div>
															<input type="text" placeholder="Checklist item"
																value="${todo.todo}" data-filter-by="value"
																style="width: 205px;" class="filter-by-value">
															<div class="checklist-strikethrough"></div>
														</div>
													</div>
												</div>
												<!--end of form group-->
											</div>
										</form>

									</div>
									</c:forEach>
									<!--end of content list body-->
								</div>
								<!--end of content list-->
								<div class="content-list" data-filter-list="content-list-body">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Notes</h3>
											<button class="btn btn-round" data-toggle="modal"
												data-target="#note-add-modal">
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
													placeholder="Filter notes" aria-label="Filter notes"
													aria-describedby="filter-notes">
											</div>
										</form>
									</div>
									<!--end of content list head-->
									<div>
										<c:forEach var="todo" items="${todo}">
										<div class="card card-note">
											<div class="card-header">
												<div class="media align-items-center">
													<img alt="Ravi Singh" src="assets/img/avatar-male-3.jpg"
														class="avatar filter-by-alt" data-toggle="tooltip"
														data-title="Ravi Singh" data-filter-by="alt">
													<div class="media-body">
														<h6 class="mb-0 H6-filter-by-text" data-filter-by="text">${todo.titleNote}</h6>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<span data-filter-by="text" class="SPAN-filter-by-text">Just
														now</span>
													<div class="ml-1 dropdown card-options">
														<button class="btn-options" type="button"
															id="note-dropdown-button-3" data-toggle="dropdown"
															aria-haspopup="true" aria-expanded="false">
															<i class="material-icons">more_vert</i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<a class="dropdown-item" href="#">Edit</a> <a
																class="dropdown-item text-danger" href="#">Delete</a>
														</div>
													</div>
												</div>
											</div>
											<div class="card-body DIV-filter-by-text"
												data-filter-by="text">
												<p>
													${todo.note}
												</p>

											</div>
										</div>
										</c:forEach>
										
									</div>
								</div>
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
									<div class="content-list-body">
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
											<span class="dz-message">Drop files here or click here
												to upload</span>
										</form>
										<ul
											class="list-group list-group-activity dropzone-previews flex-column-reverse filter-list-1539340237547">
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
											class="list-group list-group-activity filter-list-1539340237542">
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">edit</i>
															</div>
														</li>
														<li><img alt="Peggy"
															src="assets/img/avatar-female-2.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Peggy</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">added
																the note</span><a href="#" data-filter-by="text"
																class="A-filter-by-text">Client Meeting Notes</a>
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
																<i class="material-icons">edit</i>
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
																data-filter-by="text" class="SPAN-filter-by-text">added
																the note</span><a href="#" data-filter-by="text"
																class="A-filter-by-text">Aesthetic note</a>
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
														<li><img alt="Marcus"
															src="assets/img/avatar-male-1.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Marcus</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">was
																assigned to the task</span>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">4 days ago</span>
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
																data-filter-by="text" class="SPAN-filter-by-text">was
																assigned to the task</span>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">5 days ago</span>
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
														<li><img alt="Claire"
															src="assets/img/avatar-female-1.jpg"
															class="avatar filter-by-alt" data-filter-by="alt">
														</li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6 SPAN-filter-by-text"
																data-filter-by="text">Claire</span> <span
																data-filter-by="text" class="SPAN-filter-by-text">added
																to the task checklist</span>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">5 days ago</span>
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
																the task</span>
														</div>
														<span class="text-small SPAN-filter-by-text"
															data-filter-by="text">6 days ago</span>
													</div>
												</div>
											</li>
										</ol>
									</div>
								</div>
								<!--end of content list-->
							</div>
						</div>
						<form class="modal fade" id="user-manage-modal" tabindex="-1"
							role="dialog" aria-labelledby="user-manage-modal"
							style="display: none;" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Manage Users</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<div class="modal-body">
										<div class="users-manage" data-filter-list="form-group-users">
											<div class="mb-3">
												<ul class="avatars text-center">

													<li><img alt="Claire Connors"
														src="assets/img/avatar-female-1.jpg" class="avatar"
														data-toggle="tooltip" data-title="Claire Connors"></li>

													<li><img alt="Marcus Simmons"
														src="assets/img/avatar-male-1.jpg" class="avatar"
														data-toggle="tooltip" data-title="Marcus Simmons"></li>

													<li><img alt="Peggy Brown"
														src="assets/img/avatar-female-2.jpg" class="avatar"
														data-toggle="tooltip" data-title="Peggy Brown"></li>

													<li><img alt="Harry Xai"
														src="assets/img/avatar-male-2.jpg" class="avatar"
														data-toggle="tooltip" data-title="Harry Xai"></li>

												</ul>
											</div>
											<div class="input-group input-group-round">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="material-icons">filter_list</i>
													</span>
												</div>
												<input type="search" class="form-control filter-list-input"
													placeholder="Filter members" aria-label="Filter Members"
													aria-describedby="filter-members">
											</div>
											<div class="form-group-users filter-list-1539340237540">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-1" checked=""> <label
														class="custom-control-label" for="user-manage-1">
														<div class="d-flex align-items-center">
															<img alt="Claire Connors"
																src="assets/img/avatar-female-1.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Claire Connors</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-2" checked=""> <label
														class="custom-control-label" for="user-manage-2">
														<div class="d-flex align-items-center">
															<img alt="Marcus Simmons"
																src="assets/img/avatar-male-1.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Marcus Simmons</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-3" checked=""> <label
														class="custom-control-label" for="user-manage-3">
														<div class="d-flex align-items-center">
															<img alt="Peggy Brown"
																src="assets/img/avatar-female-2.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Peggy Brown</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-4" checked=""> <label
														class="custom-control-label" for="user-manage-4">
														<div class="d-flex align-items-center">
															<img alt="Harry Xai" src="assets/img/avatar-male-2.jpg"
																class="avatar mr-2"> <span
																class="h6 mb-0 SPAN-filter-by-text"
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
																src="assets/img/avatar-female-3.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Sally Harper</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-6"> <label
														class="custom-control-label" for="user-manage-6">
														<div class="d-flex align-items-center">
															<img alt="Ravi Singh" src="assets/img/avatar-male-3.jpg"
																class="avatar mr-2"> <span
																class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Ravi Singh</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-7"> <label
														class="custom-control-label" for="user-manage-7">
														<div class="d-flex align-items-center">
															<img alt="Kristina Van Der Stroem"
																src="assets/img/avatar-female-4.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Kristina Van Der Stroem</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-8"> <label
														class="custom-control-label" for="user-manage-8">
														<div class="d-flex align-items-center">
															<img alt="David Whittaker"
																src="assets/img/avatar-male-4.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">David Whittaker</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-9"> <label
														class="custom-control-label" for="user-manage-9">
														<div class="d-flex align-items-center">
															<img alt="Kerri-Anne Banks"
																src="assets/img/avatar-female-5.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Kerri-Anne Banks</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-10"> <label
														class="custom-control-label" for="user-manage-10">
														<div class="d-flex align-items-center">
															<img alt="Masimba Sibanda"
																src="assets/img/avatar-male-5.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Masimba Sibanda</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-11"> <label
														class="custom-control-label" for="user-manage-11">
														<div class="d-flex align-items-center">
															<img alt="Krishna Bajaj"
																src="assets/img/avatar-female-6.jpg" class="avatar mr-2">
															<span class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Krishna Bajaj</span>
														</div>
													</label>
												</div>
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-12"> <label
														class="custom-control-label" for="user-manage-12">
														<div class="d-flex align-items-center">
															<img alt="Kenny Tran" src="assets/img/avatar-male-6.jpg"
																class="avatar mr-2"> <span
																class="h6 mb-0 SPAN-filter-by-text"
																data-filter-by="text">Kenny Tran</span>
														</div>
													</label>
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
						<form class="modal fade" id="task-edit-modal" tabindex="-1"
							role="dialog" aria-labelledby="task-edit-modal"
							style="display: none;" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Edit Task</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<ul class="nav nav-fill">
										<li class="nav-item">Details</li>

									</ul>
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active" id="task-edit-details"
												role="tabpanel" aria-labelledby="task-edit-details-tab">
												<h6>General Details</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label> <input
														class="form-control col" type="text"
														placeholder="Task name" value="Create brand mood boards"
														name="task-name">
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<textarea class="form-control col" rows="3"
														placeholder="Task description" name="task-description">Assemble three distinct mood boards for client consideration</textarea>
												</div>
												<hr>
												<h6>Timeline</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Start Date</label> <input
														class="form-control col" type="date"
														placeholder="Task start" name="task-start">
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label> <input
														class="form-control col" type="date"
														placeholder="Task due" name="task-due">
												</div>
												<div class="alert alert-warning text-small" role="alert">
													<span>You can change due dates at any time.</span>
												</div>
											</div>
											<div class="tab-pane fade" id="task-edit-members"
												role="tabpanel" aria-labelledby="task-edit-members-tab">
												<div class="users-manage"
													data-filter-list="form-group-users">
													<div class="mb-3">
														<ul class="avatars text-center">

															<li><img alt="Claire Connors"
																src="assets/img/avatar-female-1.jpg" class="avatar"
																data-toggle="tooltip" data-title="Claire Connors">
															</li>

															<li><img alt="Marcus Simmons"
																src="assets/img/avatar-male-1.jpg" class="avatar"
																data-toggle="tooltip" data-title="Marcus Simmons">
															</li>

															<li><img alt="Peggy Brown"
																src="assets/img/avatar-female-2.jpg" class="avatar"
																data-toggle="tooltip" data-title="Peggy Brown"></li>

															<li><img alt="Harry Xai"
																src="assets/img/avatar-male-2.jpg" class="avatar"
																data-toggle="tooltip" data-title="Harry Xai"></li>

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
													<div class="form-group-users filter-list-1539340237537">
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-1" checked=""> <label
																class="custom-control-label" for="task-user-1">
																<div class="d-flex align-items-center">
																	<img alt="Claire Connors"
																		src="assets/img/avatar-female-1.jpg"
																		class="avatar mr-2"> <span
																		class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Claire Connors</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-2" checked=""> <label
																class="custom-control-label" for="task-user-2">
																<div class="d-flex align-items-center">
																	<img alt="Marcus Simmons"
																		src="assets/img/avatar-male-1.jpg" class="avatar mr-2">
																	<span class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Marcus Simmons</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-3" checked=""> <label
																class="custom-control-label" for="task-user-3">
																<div class="d-flex align-items-center">
																	<img alt="Peggy Brown"
																		src="assets/img/avatar-female-2.jpg"
																		class="avatar mr-2"> <span
																		class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Peggy Brown</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-4" checked=""> <label
																class="custom-control-label" for="task-user-4">
																<div class="d-flex align-items-center">
																	<img alt="Harry Xai" src="assets/img/avatar-male-2.jpg"
																		class="avatar mr-2"> <span
																		class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Harry Xai</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-5"> <label
																class="custom-control-label" for="task-user-5">
																<div class="d-flex align-items-center">
																	<img alt="Sally Harper"
																		src="assets/img/avatar-female-3.jpg"
																		class="avatar mr-2"> <span
																		class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Sally Harper</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-6"> <label
																class="custom-control-label" for="task-user-6">
																<div class="d-flex align-items-center">
																	<img alt="Ravi Singh"
																		src="assets/img/avatar-male-3.jpg" class="avatar mr-2">
																	<span class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Ravi Singh</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-7"> <label
																class="custom-control-label" for="task-user-7">
																<div class="d-flex align-items-center">
																	<img alt="Kristina Van Der Stroem"
																		src="assets/img/avatar-female-4.jpg"
																		class="avatar mr-2"> <span
																		class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Kristina Van Der Stroem</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-8"> <label
																class="custom-control-label" for="task-user-8">
																<div class="d-flex align-items-center">
																	<img alt="David Whittaker"
																		src="assets/img/avatar-male-4.jpg" class="avatar mr-2">
																	<span class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">David Whittaker</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-9"> <label
																class="custom-control-label" for="task-user-9">
																<div class="d-flex align-items-center">
																	<img alt="Kerri-Anne Banks"
																		src="assets/img/avatar-female-5.jpg"
																		class="avatar mr-2"> <span
																		class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Kerri-Anne Banks</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-10"> <label
																class="custom-control-label" for="task-user-10">
																<div class="d-flex align-items-center">
																	<img alt="Masimba Sibanda"
																		src="assets/img/avatar-male-5.jpg" class="avatar mr-2">
																	<span class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Masimba Sibanda</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-11"> <label
																class="custom-control-label" for="task-user-11">
																<div class="d-flex align-items-center">
																	<img alt="Krishna Bajaj"
																		src="assets/img/avatar-female-6.jpg"
																		class="avatar mr-2"> <span
																		class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Krishna Bajaj</span>
																</div>
															</label>
														</div>
														<div class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input"
																id="task-user-12"> <label
																class="custom-control-label" for="task-user-12">
																<div class="d-flex align-items-center">
																	<img alt="Kenny Tran"
																		src="assets/img/avatar-male-6.jpg" class="avatar mr-2">
																	<span class="h6 mb-0 SPAN-filter-by-text"
																		data-filter-by="text">Kenny Tran</span>
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
											Save</button>
									</div>
								</div>
							</div>
						</form>
						<form:form class="modal fade" id="note-add-modal" tabindex="-1"
							role="dialog" aria-labelledby="note-add-modal"
							style="display: none;" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">New Note</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<div class="modal-body">
										<div class="form-group row align-items-center">
											<label class="col-3">Title</label> <input
												class="form-control col" type="text"
												placeholder="Note title" name="note-name">
										</div>
										<div class="form-group row">
											<label class="col-3">Text</label>
											<textarea class="form-control col" rows="6"
												placeholder="Body text for note" name="note-description"></textarea>
										</div>
									</div>
									<!--end of modal body-->
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Create Note</button>
									</div>
								</div>
							</div>
						</form:form>
						<form class="modal fade" id="checklist-add-modal" tabindex="-1"
							role="dialog" aria-labelledby="note-add-modal"
							style="display: none;" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">New List</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<div class="modal-body">
										<div class="form-group row align-items-center">
											<label class="col-3">List</label> <input
												class="form-control col" type="text" placeholder="your work"
												name="note-name">
										</div>
									</div>
									<!--end of modal body-->
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Create</button>
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
	<script type="text/javascript" src="assets/js/theme.js"></script>

	<div id="draggable-live-region" aria-relevant="additions"
		aria-atomic="true" aria-live="assertive" role="log"
		style="position: fixed; width: 1px; height: 1px; top: -1px; overflow: hidden;"></div>
	<div id="__autosizeInputGhost"
		style="display: inline-block; height: 0px; overflow: hidden; position: absolute; top: 0px; visibility: hidden; white-space: nowrap; box-sizing: border-box; border-left: 0px solid red; border-right: 0px solid red; font-family: -apple-system, BlinkMacSystemFont,&amp; quot; Inter UI&amp;quot; , &amp; quot; Segoe UI&amp;quot; , Roboto , &amp;quot; Helvetica Neue&amp;quot; , Arial , sans-serif, &amp;quot; Apple Color Emoji&amp;quot; , &amp; quot; Segoe UI Emoji&amp;quot; , &amp; quot; Segoe UI Symbol&amp;quot;; font-feature-settings: normal; font-kerning: auto; font-size: 16px; font-stretch: 100%; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-left: 0px; margin-right: 0px; padding-left: 0px; padding-right: 0px; text-indent: 0px; text-transform: none;">Invite&nbsp;clients&nbsp;to&nbsp;board&nbsp;before&nbsp;next&nbsp;concept&nbsp;meeting</div>
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
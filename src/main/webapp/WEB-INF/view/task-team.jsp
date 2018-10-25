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
<title>Task-Team</title>
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
						<li class="breadcrumb-item"><a href="home">Home</a></li>
						<li class="breadcrumb-item"><a href="manage">Manage</a></li>
						<c:if test="${idTeam ne 0}">
							<li class="breadcrumb-item"><a href="team?idTeam=${idTeam}">Team</a></li>
						</c:if>
						<c:if test="${idProject ne 0}">
							<li class="breadcrumb-item"><a
								href="team-project?idProject=${idProject}">Project</a></li>
						</c:if>

						<li class="breadcrumb-item active" aria-current="page">Task</li>
					</ol>
				</nav>

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
							<div class="d-flex align-items-center">
								<ul class="avatars">
									<c:forEach var="member" items="${member}">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top"
											title="${member.teamMemberTeamProject.teamMember.member.name}">
												<img
												alt="${member.teamMemberTeamProject.teamMember.member.name}"
												class="avatar"
												src="<spring:url value='/profile/avatar/${member.teamMemberTeamProject.teamMember.member.email}'/>" />
										</a></li>
									</c:forEach>
								</ul>
								<button class="btn btn-round" data-toggle="modal"
									data-target="#user-manage-modal">
									<i class="material-icons">add</i>
								</button>
							</div>
							<div>
								<div class="progress">
									<div class="progress-bar bg-success"
										style="width: ${task.completedAmount /task.totalTask*100}%;"></div>
								</div>
								<div class="d-flex justify-content-between text-small">
									<div class="d-flex align-items-center">
										<i class="material-icons">playlist_add_check</i> <span>${task.completedAmount}/${task.totalTask}</span>
									</div>
									<span>Due ${task.due} days</span>
								</div>
							</div>
						</div>
						<ul class="nav nav-tabs nav-fill">
							<li class="nav-item"><a class="nav-link active"
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
							<div class="tab-pane fade show active" id="task" role="tabpanel"
								aria-labelledby="task-tab">
								<div class="content-list" data-filter-list="checklist">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Checklist</h3>
											<button class="btn btn-round" data-toggle="modal"
												data-target="#todo-add-modal">
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
									<div class="content-list-body">
										<c:forEach var="todo" items="${todo}">
											<c:choose>
												<c:when test="${todo.completed == 1}">
													<form action="task-todo/update-todo" method="post"
														class="checklist">
														<div class="row">
															<div class="form-group col">
																<span class="checklist-reorder"> <i
																	class="material-icons">reorder</i>
																</span>
																<div class="custom-control custom-checkbox col">
																	<input type="hidden" name="${_csrf.parameterName}"
																		value="${_csrf.token}" /> <input
																		onclick="this.form.submit();" type="checkbox"
																		class="custom-control-input" id="${todo.id}" checked>
																	<label class="custom-control-label" for="${todo.id}"></label>
																	<div>
																		<input name="todo" type="text"
																			placeholder="Checklist item" value="${todo.todo}"
																			data-filter-by="value" /> <input type="hidden"
																			name="completed" value="0" /> <input type="hidden"
																			name="idTodo" value="${todo.id}" />
																		<div class="checklist-strikethrough"></div>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</c:when>
												<c:otherwise>
													<form action="task-todo/update-todo" method="post"
														class="checklist">
														<div class="row">
															<div class="form-group col">
																<span class="checklist-reorder"> <i
																	class="material-icons">reorder</i>
																</span>
																<div class="custom-control custom-checkbox col">
																	<input type="hidden" name="${_csrf.parameterName}"
																		value="${_csrf.token}" /> <input
																		onclick="this.form.submit();" type="checkbox"
																		class="custom-control-input" id="${todo.id}">
																	<label class="custom-control-label" for="${todo.id}"></label>
																	<div>
																		<input name="todo" type="text"
																			placeholder="Checklist item" value="${todo.todo}"
																			data-filter-by="value" /> <input type="hidden"
																			name="completed" value="1" /> <input type="hidden"
																			name="idTodo" value="${todo.id}" />
																		<div class="checklist-strikethrough"></div>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</c:otherwise>
											</c:choose>

										</c:forEach>

										<div class="drop-to-delete">
											<div class="drag-to-delete-title">
												<i class="material-icons">delete</i>
											</div>
										</div>
									</div>
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
									<div class="content-list-body">

										<div class="card card-note">
											<div class="card-header">
												<div class="media align-items-center">
													<img alt="Peggy Brown" src="assets/img/avatar-female-2.jpg"
														class="avatar" data-toggle="tooltip"
														data-title="Peggy Brown" data-filter-by="alt" />
													<div class="media-body">
														<h6 class="mb-0" data-filter-by="text">First meeting
															notes</h6>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<span data-filter-by="text">Just now</span>
													<div class="ml-1 dropdown card-options">
														<button class="btn-options" type="button"
															id="note-dropdown-button-1" data-toggle="dropdown"
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
											<div class="card-body" data-filter-by="text">
												<p>Here&#39;s a quick rundown of companies the client
													expressed interest in on our call this morning:</p>
												<ul>
													<li><a href="#">Commonwealth Bank of Australia</a> for
														the bright, positive color scheme</li>
													<li><a href="#">Bupa Health Insurance</a> for the
														adaptability of their logo around the site&#39;s layout</li>
													<li><a href="#">OPSM</a> again for the color scheme,
														this time for the softer pallette</li>
												</ul>

											</div>
										</div>

										<div class="card card-note">
											<div class="card-header">
												<div class="media align-items-center">
													<img alt="David Whittaker"
														src="assets/img/avatar-male-4.jpg" class="avatar"
														data-toggle="tooltip" data-title="David Whittaker"
														data-filter-by="alt" />
													<div class="media-body">
														<h6 class="mb-0" data-filter-by="text">Client
															preference</h6>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<span data-filter-by="text">Yesterday</span>
													<div class="ml-1 dropdown card-options">
														<button class="btn-options" type="button"
															id="note-dropdown-button-2" data-toggle="dropdown"
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
											<div class="card-body" data-filter-by="text">
												<p>
													Hi all, just wanted to add that the client has requested
													that we lean toward a &#39;friendly&#39; aesthetic. I know
													this seems a little vague but it does give us a starting
													point for the mood boards. I recommend we use larger
													corporates who target &#39;youthful&#39; audiences as
													initial inspiration. <a href="#">@Peggy</a> will take the
													lead from here.
												</p>

											</div>
										</div>

										<div class="card card-note">
											<div class="card-header">
												<div class="media align-items-center">
													<img alt="Ravi Singh" src="assets/img/avatar-male-3.jpg"
														class="avatar" data-toggle="tooltip"
														data-title="Ravi Singh" data-filter-by="alt" />
													<div class="media-body">
														<h6 class="mb-0" data-filter-by="text">Matboard links</h6>
													</div>
												</div>
												<div class="d-flex align-items-center">
													<span data-filter-by="text">Just now</span>
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
											<div class="card-body" data-filter-by="text">
												<p>
													Hey guys, here&#39;s the link to the Matboards: <a href="#">https://matboard.io/3928462</a>
												</p>

											</div>
										</div>

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
																<img class="avatar" data-dz-thumbnail /> <i
																	class="material-icons">attach_file</i>
															</div>
														</li>
														<li><img alt="David Whittaker"
															src="assets/img/avatar-male-4.jpg" class="avatar"
															data-title="David Whittaker" data-toggle="tooltip" /></li>
													</ul>
													<div
														class="media-body d-flex justify-content-between align-items-center">
														<div class="dz-file-details">
															<a href="#" class="dz-filename"> <span data-dz-name></span>
															</a> <br> <span class="text-small dz-size" data-dz-size></span>
														</div>
														<img alt="Loader" src="assets/img/loader.svg"
															class="dz-loading" />
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
																	data-dz-remove>Delete</a>
															</div>
														</div>
														<button class="btn btn-danger btn-sm dz-remove"
															data-dz-remove>Cancel</button>
													</div>
												</div>
												<div class="progress dz-progress">
													<div class="progress-bar dz-upload" data-dz-uploadprogress></div>
												</div>
											</li>
										</div>
										<form class="dropzone"
											action="http://mediumra.re/dropzone/upload.php">
											<span class="dz-message">Drop files here or click here
												to upload</span>
										</form>
										<ul
											class="list-group list-group-activity dropzone-previews flex-column-reverse">

											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">insert_drive_file</i>
															</div>
														</li>
														<li><img alt="David Whittaker"
															src="assets/img/avatar-male-4.jpg" class="avatar"
															data-title="David Whittaker" data-toggle="tooltip"
															data-filter-by="data-title" /></li>
													</ul>
													<div
														class="media-body d-flex justify-content-between align-items-center">
														<div>
															<a href="#" data-filter-by="text">Branding-Proforma</a> <br>
															<span class="text-small" data-filter-by="text">15kb
																Text Document</span>
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

										<ol class="list-group list-group-activity">
											<li class="list-group-item">
												<div class="media align-items-center">
													<ul class="avatars">
														<li>
															<div class="avatar bg-primary">
																<i class="material-icons">add</i>
															</div>
														</li>
														<li><img alt="David"
															src="assets/img/avatar-male-4.jpg" class="avatar"
															data-filter-by="alt" /></li>
													</ul>
													<div class="media-body">
														<div>
															<span class="h6" data-filter-by="text">David</span> <span
																data-filter-by="text">started the task</span>
														</div>
														<span class="text-small" data-filter-by="text">6
															days ago</span>
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
							aria-hidden="true">
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
														data-toggle="tooltip" data-title="Claire Connors" /></li>

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
											<div class="form-group-users">

												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														id="user-manage-1" checked> <label
														class="custom-control-label" for="user-manage-1">
														<div class="d-flex align-items-center">
															<img alt="Claire Connors"
																src="assets/img/avatar-female-1.jpg" class="avatar mr-2" />
															<span class="h6 mb-0" data-filter-by="text">Claire
																Connors</span>
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
							aria-hidden="true">
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
									<ul class="nav nav-tabs nav-fill">
										<li class="nav-item"><a class="nav-link active"
											id="task-edit-details-tab" data-toggle="tab"
											href="#task-edit-details" role="tab"
											aria-controls="task-edit-details" aria-selected="true">Details</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											id="task-edit-members-tab" data-toggle="tab"
											href="#task-edit-members" role="tab"
											aria-controls="task-edit-members" aria-selected="false">Members</a>
										</li>
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
														name="task-name" />
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
														placeholder="Task start" name="task-start" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label> <input
														class="form-control col" type="date"
														placeholder="Task due" name="task-due" />
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

															<c:forEach var="member" items="${member}">
																<li><a href="#" data-toggle="tooltip"
																	data-placement="top"
																	title="${member.teamMemberTeamProject.teamMember.member.name}">
																		<img
																		alt="${member.teamMemberTeamProject.teamMember.member.name}"
																		class="avatar"
																		src="<spring:url value='/profile/avatar/${member.teamMemberTeamProject.teamMember.member.email}'/>" />
																</a></li>
															</c:forEach>

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
														<c:forEach var="member" items="${member}">
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="${member.teamMemberTeamProject.teamMember.member.email}" checked> <label
																	class="custom-control-label" for="${member.teamMemberTeamProject.teamMember.member.email}">
																	<div class="d-flex align-items-center">
																		<img alt="${member.teamMemberTeamProject.teamMember.member.name}"
																			src="<spring:url value='/profile/avatar/${member.teamMemberTeamProject.teamMember.member.email}'/>"
																			class="avatar mr-2" /> <span class="h6 mb-0"
																			data-filter-by="text">${member.teamMemberTeamProject.teamMember.member.name}</span>
																	</div>
																</label>
															</div>
														</c:forEach>
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
						<form class="modal fade" id="note-add-modal" tabindex="-1"
							role="dialog" aria-labelledby="note-add-modal" aria-hidden="true">
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
												placeholder="Note title" name="note-name" />
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
						</form>
						<form action="task-todo/create-todo" method="post"
							class="modal fade" id="todo-add-modal" tabindex="-1"
							role="dialog" aria-labelledby="note-add-modal" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">New Todo</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<div class="modal-body">
										<div class="form-group row align-items-center">
											<label class="col-3">Todo</label> <input
												class="form-control col" type="text" placeholder="Todo"
												name="todo" />
										</div>
									</div>
									<!--end of modal body-->
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Create Todo</button>
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

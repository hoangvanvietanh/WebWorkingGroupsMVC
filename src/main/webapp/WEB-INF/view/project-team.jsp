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
<title>Team Project</title>
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
<link rel="stylesheet"
	href="<spring:url value='/resources/css/notifications.css'/>">
</head>

<body>

	<div class="layout layout-nav-top">
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

				<div class="navbar-nav">
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

					<div class="nav-item">

						<div style="float: left;">
							<a class="nav-link" href="index.html">Overview</a>
						</div>
						<div style="float: left; padding-left: 5px;">
							<a class="nav-link" href="manage">Manage</a>
						</div>
					</div>

				</div>
				<div class="d-lg-flex align-items-center">

					<div class="dropdown">
						<a style="color: white;" class="material-icons"
							data-toggle="modal" href="#msgModal">notifications</a> <a
							style="color: white;"
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
					<div class="d-none2 d-lg-block">
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
		<div class="main-container">

			<div class="navbar bg-white breadcrumb-bar">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="home">Home</a></li>

						<li class="breadcrumb-item"><a href="manage">Manage</a></li>
						<c:if test="${idTeam ne 0}">
							<li class="breadcrumb-item"><a href="team?idTeam=${idTeam}">Team</a></li>
						</c:if>
						<li class="breadcrumb-item active" aria-current="page">Project</li>
					</ol>
				</nav>

				<div class="dropdown">
					<button class="btn btn-round" role="button" data-toggle="dropdown"
						aria-expanded="false">
						<i class="material-icons">settings</i>
					</button>
					<div class="dropdown-menu dropdown-menu-right">


						<a class="dropdown-item" href="" data-toggle="modal"
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
							<div class="d-flex align-items-center">
								<ul class="avatars">
									<c:forEach var="user" items="${user}">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="${user.teamMember.member.name}">
												<img alt="${user.teamMember.member.name}" class="avatar"
												src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>" />
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
										style="width: ${project.taskDone div project.totalTask * 100}%;"></div>
								</div>
								<div class="d-flex justify-content-between text-small">
									<div class="d-flex align-items-center">
										<i class="material-icons">playlist_add_check</i> <span>${project.taskDone}/${project.totalTask}</span>
									</div>
									<span>Due ${project.due} days</span>
								</div>
							</div>
						</div>
						<ul class="nav nav-tabs nav-fill">
							<li class="nav-item"><a class="nav-link active"
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
							<div class="tab-pane fade show active" id="tasks" role="tabpanel"
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
								<div class="content-list-body">

									<div class="card-list">
										<div class="card-list-body">
											<c:forEach var="task" items="${task}">
												<div class="card card-task">
													<div class="progress">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: ${task.completedAmount/task.totalTask*100}%"
															aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
													</div>
													<div class="card-body">
														<div class="card-title">
															<a href="task-todo?idTask=${task.id}">
																<h6 data-filter-by="text">${task.name}</h6>
															</a> <span class="text-small">due ${task.due} days</span>
														</div>
														<div class="card-meta">
															<ul class="avatars">
																<c:forEach var="userTask" items="${userTask}">
																	<c:if test="${userTask.taskTeamProject.id ==task.id}">
																		<li><a href="#" data-toggle="tooltip"
																			title="${userTask.teamMemberTeamProject.teamMember.member.name}">
																				<img
																				alt="${userTask.teamMemberTeamProject.teamMember.member.name}"
																				class="avatar"
																				src="<spring:url value='/profile/avatar/${userTask.teamMemberTeamProject.teamMember.member.email}'/>" />
																		</a></li>
																	</c:if>
																</c:forEach>
															</ul>
															<div class="d-flex align-items-center">
																<i class="material-icons">playlist_add_check</i> <span>${task.completedAmount}/${task.totalTask}</span>
															</div>
															<div class="dropdown card-options">
																<button class="btn-options" type="button"
																	id="task-dropdown-button-7" data-toggle="dropdown"
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

											</c:forEach>
										</div>
									</div>
									<!--end of content list body-->
								</div>
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
												<span class="dz-message">Drop files here or click
													here to upload</span>
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
																<a href="#" data-filter-by="text">Branding-Proforma</a>
																<br> <span class="text-small" data-filter-by="text">15kb
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

											<c:forEach var="history" items="${history}">
												<li class="list-group-item">
													<div class="media align-items-center">
														<ul class="avatars">
															<li>
																<div class="avatar bg-primary">
																	<i class="material-icons">playlist_add_check</i>
																</div>
															</li>
															<li><img alt="${history.user}"
																src="<spring:url value='/profile/avatar/${history.id_user}'/>"
																class="avatar" data-filter-by="alt" /></li>
														</ul>
														<div class="media-body">
															<div>
																<span class="h6" data-filter-by="text">${history.user}</span>
																<span data-filter-by="text">${history.activity}</span><a
																	href="#" data-filter-by="text">${history.last}</a>
															</div>
															<span class="text-small" data-filter-by="text">Just
																now</span>
														</div>
													</div>
												</li>
											</c:forEach>
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

													<c:forEach var="user" items="${user}">
														<li><img alt="${user.teamMember.member.name}"
															src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
															class="avatar" data-toggle="tooltip"
															data-title="${user.teamMember.member.name}" /></li>
													</c:forEach>

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

												<c:forEach var="user" items="${user}">
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="${user.teamMember.member.email}" checked> <label
															class="custom-control-label"
															for="${user.teamMember.member.email}"> </label>
														<div class="d-flex align-items-center">
															<img alt="${user.teamMember.member.name}"
																src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
																class="avatar mr-2" /> <span class="h6 mb-0"
																data-filter-by="text">${user.teamMember.member.name}</span>
														</div>
													</div>
												</c:forEach>

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

						<!----------------------------- Edit Project ------------------------------------->
						<form:form modelAttribute="editProject"
							action="team-project/edit-project" method="post"
							class="modal fade" id="project-edit-modal" tabindex="-1"
							role="dialog" aria-labelledby="project-edit-modal"
							aria-hidden="true">
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
									<ul class="nav nav-tabs nav-fill">
										<li class="nav-item"><a class="nav-link active"
											id="project-edit-details-tab" data-toggle="tab"
											href="#project-edit-details" role="tab"
											aria-controls="project-edit-details" aria-selected="true">Details</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											id="project-edit-members-tab" data-toggle="tab"
											href="#project-edit-members" role="tab"
											aria-controls="project-edit-members" aria-selected="false">Members</a>
										</li>
									</ul>
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active"
												id="project-edit-details" role="tabpanel"
												aria-labelledby="project-edit-details-tab">
												<h6>General Details</h6>

												<form:input path="id" type="hidden" />
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label>
													<form:input class="form-control col" type="text"
														path="name" name="project-name" />
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														path="description"></form:textarea>
												</div>
												<hr>
												<h6>Timeline</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Start Date</label>
													<form:input path="startDate" class="form-control col"
														type="date" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label>
													<form:input class="form-control col" type="date"
														path="endDate" />
												</div>
												<div class="alert alert-warning text-small" role="alert">
													<span>You can change due dates at any time.</span>
												</div>
												<hr>
												<h6>
													<form:label path="visibility">Visibility</form:label>
												</h6>
												<div class="row">
													<div class="col">
														<div class="custom-control custom-radio">
															<form:radiobutton id="visibility-everyone"
																path="visibility" class="custom-control-input"
																value="Everyone" />
															<label class="custom-control-label"
																for="visibility-everyone">Everyone</label>
														</div>
													</div>
													<div class="col">
														<div class="custom-control custom-radio">
															<form:radiobutton id="visibility-members"
																path="visibility" class="custom-control-input"
																value="Member" />
															<label class="custom-control-label"
																for="visibility-members">Members</label>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="project-edit-members"
												role="tabpanel" aria-labelledby="project-edit-members-tab">
												<div class="users-manage"
													data-filter-list="form-group-users">
													<div class="mb-3">
														<ul class="avatars text-center">
															<c:forEach var="user" items="${user}">
																<li><img alt="${user.teamMember.member.name}"
																	src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
																	class="avatar" data-toggle="tooltip"
																	data-title="${user.teamMember.member.name}" /></li>
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
														<c:set var="i" value="0" />
														<c:forEach var="user" items="${user}">
															<input type="hidden" value="${i=i+1}">
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input"
																	id="${i}" checked> <label
																	class="custom-control-label" for="${i}"> </label>
																<div class="d-flex align-items-center">
																	<img alt="${user.teamMember.member.name}"
																		src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
																		class="avatar mr-2" /> <span class="h6 mb-0"
																		data-filter-by="text">${user.teamMember.member.name}</span>
																</div>
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
						</form:form>
						<form:form modelAttribute="taskModel" method="post"
							action="team-project/create-task" class="modal fade"
							id="task-add-modal" tabindex="-1" role="dialog"
							aria-labelledby="task-add-modal" aria-hidden="true">
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
									<ul class="nav nav-tabs nav-fill">
										<li class="nav-item"><a class="nav-link active"
											id="task-add-details-tab" data-toggle="tab"
											href="#task-add-details" role="tab"
											aria-controls="task-add-details" aria-selected="true">Details</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											id="task-add-members-tab" data-toggle="tab"
											href="#task-add-members" role="tab"
											aria-controls="task-add-members" aria-selected="false">Members</a>
										</li>
									</ul>
									<!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------   -->
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active" id="task-add-details"
												role="tabpanel" aria-labelledby="task-add-details-tab">
												<h6>General Details</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label>
													<form:input class="form-control col" type="text"
														placeholder="Task name" path="name" />
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														placeholder="Task description" path="description"></form:textarea>
												</div>
												<hr>
												<h6>Timeline</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Start Date</label>
													<form:input class="form-control col" type="date"
														placeholder="Task start" path="startDate" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label>
													<form:input class="form-control col" type="date"
														placeholder="Task due" path="endDate" />
												</div>
												<div class="alert alert-warning text-small" role="alert">
													<span>You can change due dates at any time.</span>
												</div>
											</div>
											<div class="tab-pane fade" id="task-add-members"
												role="tabpanel" aria-labelledby="task-add-members-tab">
												<div class="users-manage"
													data-filter-list="form-group-users">
													<div class="mb-3">
														<ul class="avatars text-center">

															<li><img alt="${userLogin.name}"
																src="<spring:url value='/profile/avatar/${userLogin.email}'/>"
																class="avatar" data-toggle="tooltip"
																data-title="${userLogin.name}" /></li>
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

														<c:forEach var="user" items="${user}">
															<input type="hidden" value="${i=i+1}">
															<div class="custom-control custom-checkbox">
																<form:checkbox path="email" class="custom-control-input"
																	id="${i}" value="${user.teamMember.member.email}" />
																<form:label class="custom-control-label" for="${i}"
																	path="email">
																	<div class="d-flex align-items-center">
																		<img alt="${user.teamMember.member.name}"
																			src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
																			class="avatar mr-2" /> <span class="h6 mb-0"
																			data-filter-by="text">${user.teamMember.member.name}</span>
																	</div>
																</form:label>
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
											Create Task</button>
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
		<div class="cd fade" id="msgModal" tabindex="-1" role="dialog"
			aria-labelledby="bpq" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="d">
						<h5 class="modal-title">Notifications</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body afx js-modalBody">
						<div class="axw">
							<div class="afc js-conversation">
								<ul class="bow bpc">
									<c:forEach var="mess" items="${messages}">
										<li class="rv bpf afo">
											<div class="rw">
												<div class="bpd">${mess.messages}</div>
												<div class="bpe">
													<small class="axc">at ${mess.date} </small>
												</div>
											</div> <img class="us bos vb yb afi"
											src="resources/img/anonymous.png">
										</li>
									</c:forEach>
								</ul>
							</div>
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

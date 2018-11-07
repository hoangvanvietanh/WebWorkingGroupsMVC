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
<link rel="stylesheet"
	href="<spring:url value='/resources/css/notifications.css'/>">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>
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
							<a href="profile" class="dropdown-item">Accounts </a> <a
								href="logout" class="dropdown-item">Log Out</a>
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
							<input type="search" name="email"
								class="form-control form-control-dark" placeholder="Search"
								aria-label="Search app" aria-describedby="search-app">
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>



				</div>
				<div class="d-lg-flex align-items-center">

					<div class="dropdown">
						<c:choose>
							<c:when test="${checkNotification eq 'yes' }">
								<a style="color: white;" class="material-icons"
									data-toggle="modal" href="#msgModal">notifications_active</a>
							</c:when>
							<c:otherwise>
								<a style="color: white;" class="material-icons"
									data-toggle="modal" href="#msgModal">notifications</a>
							</c:otherwise>
						</c:choose>
						<a style="color: white;"
							class="nav-link material-icons dropdown-toggle" href="#"
							data-toggle="dropdown" aria-expanded="false" aria-haspopup="true"
							id="nav-dropdown-2">add</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="nav-dropdown-2">
							<a class="dropdown-item" href="manage">Manage</a> <a
								class="dropdown-item" href="profile-cv">Profile CV</a>
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
								<a href="profile" class="dropdown-item">Accounts </a> <a
									href="logout" class="dropdown-item">Log Out</a>
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
							href="team-project/MaskAsDone?idTask=${task.id}">Mark as
							complete</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item text-danger"
							href="team-project/leaveTask?idTask=${task.id}">Leave task</a>



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
									<c:choose>
										<c:when test="${task.due lt 5}">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width:${task.completedAmount /task.totalTask*100}%"
												aria-valuenow="8" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:when test="${task.due le 7 and task.due ge 5 }">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: ${task.completedAmount /task.totalTask*100}%"
												aria-valuenow="8" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:otherwise>
											<div class="progress-bar bg-success" role="progressbar"
												style="width: ${task.completedAmount /task.totalTask*100}%"
												aria-valuenow="8" aria-valuemin="0" aria-valuemax="100"></div>
										</c:otherwise>
									</c:choose>

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
												<i class="material-icons">playlist_add</i>
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
															<div class="dropdown">
																<button class="btn btn-round" role="button"
																	data-toggle="dropdown" aria-expanded="false">
																	<i class="material-icons">edit</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a data-todo-id="${todo.id}"
																		data-todo-content="${todo.todo}"
																		data-todo-completed="${todo.completed}"
																		class="dropdown-item edit-todo-btn"
																		data-toggle="modal" href="#"
																		data-target="#todo-edit-modal">Edit</a> <a
																		class="dropdown-item text-danger"
																		href="task-todo/delete-todo?idtodo=${todo.id }">Delete</a>
																</div>
															</div>
															<div class="form-group col">
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
															<div class="dropdown">
																<button class="btn btn-round" role="button"
																	data-toggle="dropdown" aria-expanded="false">
																	<i class="material-icons">edit</i>
																</button>
																<div class="dropdown-menu dropdown-menu-right">
																	<a data-todo-id="${todo.id}"
																		data-todo-content="${todo.todo}"
																		data-todo-completed="${todo.completed}"
																		class="dropdown-item edit-todo-btn"
																		data-toggle="modal" href="#"
																		data-target="#todo-edit-modal">Edit</a> <a
																		class="dropdown-item text-danger"
																		href="task-todo/delete-todo?idtodo=${todo.id }">Delete</a>
																</div>
															</div>
															<div class="form-group col">
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
												<i class="material-icons">note_add</i>
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

										<c:forEach var="note" items="${notes }">
											<div class="card card-note">
												<div class="card-header">
													<div class="media align-items-center">
														<img alt="${note.emailUser}"
															src="<spring:url value='/profile/avatar/${note.emailUser}'/>"
															class="avatar" data-toggle="tooltip"
															data-title="${note.emailUser}" data-filter-by="alt" />
														<div class="media-body">
															<h6 class="mb-0" data-filter-by="text">${note.titleNotes }</h6>
														</div>
													</div>
													<div class="d-flex align-items-center">
														<span data-filter-by="text">${note.date}</span>
														<div class="ml-1 dropdown card-options">
															<button class="btn-options" type="button"
																id="note-dropdown-button-2" data-toggle="dropdown"
																aria-haspopup="true" aria-expanded="false">
																<i class="material-icons">more_vert</i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<a data-note-id="${note.id }"
																	data-note-content="${note.notes}"
																	data-note-title="${note.titleNotes}"
																	class="dropdown-item edit-note-btn" data-toggle="modal"
																	href="#" data-target="#note-edit-modal">Edit</a> <a
																	class="dropdown-item text-danger"
																	href="task-todo/delete?idnote=${note.id }">Delete</a>
															</div>
														</div>
													</div>
												</div>
												<div class="card-body" data-filter-by="text">
													<p>${note.notes}</p>

												</div>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
							<!--end of tab-->

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
						<form:form modelAttribute="editTask"
							action="task-todo/manage-user-task" method="post"
							class="modal fade" id="user-manage-modal" tabindex="-1"
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
												<input type="search" class="form-control filter-list-input"
													placeholder="Filter members" aria-label="Filter Members"
													aria-describedby="filter-members">
											</div>
											<div class="form-group-users">
												<c:set var="i" value="0" />
												<c:forEach var="member" items="${member}">
													<input type="hidden" value="${i=i+1}">
													<div class="custom-control custom-checkbox">
														<form:checkbox path="email"
															value="${member.teamMemberTeamProject.teamMember.member.email}"
															class="custom-control-input" id="${i}" checked="checked" />
														<form:label path="email" class="custom-control-label"
															for="${i}">
															<div class="d-flex align-items-center">
																<img
																	alt="${member.teamMemberTeamProject.teamMember.member.name}"
																	src="<spring:url value='/profile/avatar/${member.teamMemberTeamProject.teamMember.member.email}'/>"
																	class="avatar mr-2" /> <span class="h6 mb-0"
																	data-filter-by="text">${member.teamMemberTeamProject.teamMember.member.name}</span>
															</div>
														</form:label>
													</div>
												</c:forEach>
												<c:forEach var="memberProject" items="${memberProject}">
													<input type="hidden" value="${i=i+1}">
													<div class="custom-control custom-checkbox">
														<form:checkbox path="email2"
															value="${memberProject.teamMember.member.email}"
															class="custom-control-input" id="${i}" />
														<form:label path="email2" class="custom-control-label"
															for="${i}">
															<div class="d-flex align-items-center">
																<img alt="${memberProject.teamMember.member.name}"
																	src="<spring:url value='/profile/avatar/${memberProject.teamMember.member.email}'/>"
																	class="avatar mr-2" /> <span class="h6 mb-0"
																	data-filter-by="text">${memberProject.teamMember.member.name}</span>
															</div>
														</form:label>
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
						</form:form>
						<form:form modelAttribute="editTask" action="task-todo/edit-task"
							method="post" class="modal fade" id="task-edit-modal"
							tabindex="-1" role="dialog" aria-labelledby="task-edit-modal"
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
												<form:input path="idtask" type="hidden" />
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label>
													<form:input class="form-control col" type="text"
														placeholder="Task name" path="name" name="task-name"
														required="required" />
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														placeholder="Task description" path="description"
														required="required"></form:textarea>
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
														placeholder="Task due" id="EndDate" path="endDate"
														required="required" />
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
															<input type="hidden" value="${i=i+1}">
															<div class="custom-control custom-checkbox">
																<form:checkbox path="email"
																	value="${member.teamMemberTeamProject.teamMember.member.email}"
																	class="custom-control-input" id="${i}"
																	checked="checked" />
																<form:label path="email" class="custom-control-label"
																	for="${i}">
																	<div class="d-flex align-items-center">
																		<img
																			alt="${member.teamMemberTeamProject.teamMember.member.name}"
																			src="<spring:url value='/profile/avatar/${member.teamMemberTeamProject.teamMember.member.email}'/>"
																			class="avatar mr-2" /> <span class="h6 mb-0"
																			data-filter-by="text">${member.teamMemberTeamProject.teamMember.member.name}</span>
																	</div>
																</form:label>
															</div>
														</c:forEach>
														<c:forEach var="memberProject" items="${memberProject}">
															<input type="hidden" value="${i=i+1}">
															<div class="custom-control custom-checkbox">
																<form:checkbox path="email2"
																	value="${memberProject.teamMember.member.email}"
																	class="custom-control-input" id="${i}" />
																<form:label path="email2" class="custom-control-label"
																	for="${i}">
																	<div class="d-flex align-items-center">
																		<img alt="${memberProject.teamMember.member.name}"
																			src="<spring:url value='/profile/avatar/${memberProject.teamMember.member.email}'/>"
																			class="avatar mr-2" /> <span class="h6 mb-0"
																			data-filter-by="text">${memberProject.teamMember.member.name}</span>
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
											Save</button>
									</div>
								</div>
							</div>
						</form:form>
						<form:form modelAttribute="note" action="task-todo/create-note"
							method="post" class="modal fade" id="note-add-modal"
							tabindex="-1" role="dialog" aria-labelledby="note-add-modal"
							aria-hidden="true">
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
										<form:input type="hidden" path="id" />
										<div class="form-group row align-items-center">
											<label class="col-3">Title</label>
											<form:input class="form-control col" type="text"
												placeholder="Note title" path="titleNotes" />
										</div>
										<div class="form-group row align-items-center">
											<label class="col-3">Note</label>
											<form:textarea class="form-control col" rows="6" path="notes"></form:textarea>
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

						<form:form modelAttribute="note" action="task-todo/edit-note"
							method="post" class="modal fade" id="note-edit-modal"
							tabindex="-1" role="dialog" aria-labelledby="note-edit-modal"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Edit Note</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->

									<div class="modal-body">
										<div class="form-group row align-items-center">
											<form:input id="note-id" type="hidden" path="id" />
											<label class="col-3">Title</label>
											<form:input id="note-title" class="form-control col"
												type="text" placeholder="Note title" path="titleNotes" />
										</div>
										<div class="form-group row align-items-center">
											<label class="col-3">Note</label>
											<form:textarea id="note-content" class="form-control col"
												rows="6" path="notes"></form:textarea>
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

						<form:form modelAttribute="todoModel" action="task-todo/edit-todo"
							method="post" class="modal fade" id="todo-edit-modal"
							tabindex="-1" role="dialog" aria-labelledby="note-edit-modal"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Edit Todo</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->

									<div class="modal-body">
										<div class="form-group row align-items-center">
											<label class="col-3">Todo</label>
											<form:input id="todo-content" class="form-control col"
												type="text" placeholder="Note title" path="todo" />
										</div>
									</div>
									<!--end of modal body-->
									<form:input type="hidden" id="todo-id" path="id" />
									<form:input type="hidden" id="todo-completed" path="completed" />
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Save</button>
									</div>
								</div>
							</div>
						</form:form>

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
													<c:choose>
														<c:when test="${mess.status == 0}">
															<small class="axc">not seen</small>
														</c:when>
														<c:otherwise>
															<small class="axc">seen</small>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="dropdown">
												<a class="media media-member" href="#" role="button"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false"> <img class="us bos vb yb afi"
													src="resources/img/anonymous.png">
												</a>
												<div class="dropdown-menu">
													<a href="home/seen?idNotifications=${mess.id}&path=${path}"
														class="dropdown-item">Seen</a> <a
														href="home/delete?idNotifications=${mess.id}&path=${path}"
														class="dropdown-item">Delete</a>
												</div>
											</div>
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

	<script>
		$(document).ready(function() {
			$('.edit-note-btn').click(function(event) {
				var id = $(this).attr("data-note-id");
				var title = $(this).attr("data-note-title");
				var content = $(this).attr("data-note-content");
				$('#note-id').val(id);
				$('#note-title').val(title);
				$('#note-content').val(content);

			});

		});
	</script>
	<script>
		$(document).ready(function() {
			$('.edit-todo-btn').click(function(event) {
				var id = $(this).attr("data-todo-id");
				var content = $(this).attr("data-todo-content");
				var completed = $(this).attr("data-todo-completed");

				$('#todo-id').val(id);
				$('#todo-content').val(content);
				$('#todo-completed').val(completed);

			});

		});
	</script>
</body>

</html>

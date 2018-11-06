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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>
<style type="text/css">
.done {
	background-image: url('resources/img/completed2.png');
	background-repeat: no-repeat;
	background-position: center;
	background-size: 20%;
}

.failed {
	background-image: url('resources/img/failed2.png');
	background-repeat: no-repeat;
	background-position: center;
	background-size: 20%;
}

.warming {
	background-image: url('resources/img/warming2.png');
	background-repeat: no-repeat;
	background-position: center;
	background-size: 10%;
}

.nothing {
	background-image: url('resources/img/nothing.png');
	background-repeat: no-repeat;
	background-position: center;
	background-size: 10%;
}
</style>
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
						<li class="breadcrumb-item active" aria-current="page">Project</li>
					</ol>
				</nav>

				<div class="dropdown">
					<button class="btn btn-round" role="button" data-toggle="dropdown"
						aria-expanded="false">
						<i class="material-icons">settings</i>
					</button>
					<div class="dropdown-menu dropdown-menu-right">

						<c:if test="${checkAdmin eq 'yes'}">
							<a class="dropdown-item" href="" data-toggle="modal"
								data-target="#project-edit-modal">Edit Project</a>
						</c:if>
						<a class="dropdown-item" href="team-project/MarkAsComplete">Mark
							as Complete</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item text-danger"
							href="manage/leaveProject?idProject=${project.id}">Leave
							Project</a>

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
								<c:if test="${checkAdmin eq 'yes'}">
									<button class="btn btn-round" data-toggle="modal"
										data-target="#user-manage-modal">
										<i class="material-icons">add</i>
									</button>
								</c:if>
							</div>
							<div>
								<div class="progress">
									<c:choose>
										<c:when test="${project.due lt 5}">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: ${project.taskDone div project.totalTask * 100}%"
												aria-valuenow="8" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:when test="${project.due le 7 and project.due ge 5 }">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: ${project.taskDone div project.totalTask * 100}%"
												aria-valuenow="8" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:otherwise>
											<div class="progress-bar bg-success" role="progressbar"
												style="width: ${project.taskDone div project.totalTask * 100}%"
												aria-valuenow="8" aria-valuemin="0" aria-valuemax="100"></div>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="d-flex justify-content-between text-small">
									<div class="d-flex align-items-center">
										<i class="material-icons">playlist_add_check</i>
										<c:choose>
											<c:when
												test="${project.taskDone == 0 and project.totalTask ==0}">
												<span>-/-</span>
											</c:when>
											<c:otherwise>
												<span>${project.taskDone}/${project.totalTask}</span>
											</c:otherwise>
										</c:choose>

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
												<c:choose>
													<c:when test="${task.due > -1 and task.totalTask == 0}">
														<div class="card card-task nothing">
															<div class="progress">
																<c:choose>
																	<c:when test="${task.due lt 5}">
																		<div class="progress-bar bg-danger" role="progressbar"
																			style="width:${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:when test="${task.due le 7 and task.due ge 5 }">
																		<div class="progress-bar bg-warning"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:otherwise>
																		<div class="progress-bar bg-success"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:otherwise>
																</c:choose>


															</div>
															<div class="card-body">
																<div class="card-title">
																	<a href="task-todo?idTask=${task.id}">
																		<h6 data-filter-by="text">${task.name}</h6>
																	</a> <span class="text-small">${task.description}</span><br>
																	<c:choose>
																		<c:when test="${task.due == 0}">
																			<span class="text-small">Today</span>
																		</c:when>
																		<c:otherwise>
																			<span class="text-small">due ${task.due} days</span>
																		</c:otherwise>
																	</c:choose>


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
																		<i class="material-icons">playlist_add_check</i>

																		<c:choose>
																			<c:when
																				test="${task.completedAmount == 0 and task.totalTask ==0}">
																				<span>-/-</span>
																			</c:when>
																			<c:otherwise>
																				<span>${task.completedAmount}/${task.totalTask}</span>
																			</c:otherwise>
																		</c:choose>


																	</div>
																	<div class="dropdown card-options">
																		<button class="btn-options" type="button"
																			id="task-dropdown-button-7" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false">
																			<i class="material-icons">more_vert</i>
																		</button>
																		<div class="dropdown-menu dropdown-menu-right">
																			<a class="dropdown-item"
																				href="team-project/MaskAsDone?idTask=${task.id}">Mark
																				as done</a>
																			<div class="dropdown-divider"></div>
																			<a class="dropdown-item text-danger"
																				href="team-project/leaveTask?idTask=${task.id}">Leave
																				Task</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:when>
													<c:when
														test="${(task.due > 0 and task.due le 7) and (task.completedAmount ne task.totalTask or task.totalTask == 0)}">

														<div class="card card-task warming">
															<div class="progress">
																<c:choose>
																	<c:when test="${task.due lt 5}">
																		<div class="progress-bar bg-danger" role="progressbar"
																			style="width:${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:when test="${task.due le 7 and task.due ge 5 }">
																		<div class="progress-bar bg-warning"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:otherwise>
																		<div class="progress-bar bg-success"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:otherwise>
																</c:choose>


															</div>
															<div class="card-body">
																<div class="card-title">
																	<a href="task-todo?idTask=${task.id}">
																		<h6 data-filter-by="text">${task.name}</h6>
																	</a> <span class="text-small">${task.description}</span><br>
																	<c:choose>
																		<c:when test="${task.due == 0}">
																			<span class="text-small">Today</span>
																		</c:when>
																		<c:otherwise>
																			<span class="text-small">due ${task.due} days</span>
																		</c:otherwise>
																	</c:choose>


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
																		<i class="material-icons">playlist_add_check</i>

																		<c:choose>
																			<c:when
																				test="${task.completedAmount == 0 and task.totalTask ==0}">
																				<span>-/-</span>
																			</c:when>
																			<c:otherwise>
																				<span>${task.completedAmount}/${task.totalTask}</span>
																			</c:otherwise>
																		</c:choose>


																	</div>
																	<div class="dropdown card-options">
																		<button class="btn-options" type="button"
																			id="task-dropdown-button-7" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false">
																			<i class="material-icons">more_vert</i>
																		</button>
																		<div class="dropdown-menu dropdown-menu-right">
																			<a class="dropdown-item"
																				href="team-project/MaskAsDone?idTask=${task.id }">Mark
																				as done</a>
																			<div class="dropdown-divider"></div>
																			<a class="dropdown-item text-danger"
																				href="team-project/leaveTask?idTask=${task.id}">Leave
																				task</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:when>
													<c:when
														test="${((task.due == -1) and (task.completedAmount ne task.totalTask)) or (task.due == -1 and task.completedAmount == 0 and task.totalTask == 0)}">

														<div class="card card-task failed">
															<div class="progress">
																<c:choose>
																	<c:when test="${task.due lt 5}">
																		<div class="progress-bar bg-danger" role="progressbar"
																			style="width:${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:when test="${task.due le 7 and task.due ge 5 }">
																		<div class="progress-bar bg-warning"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:otherwise>
																		<div class="progress-bar bg-success"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:otherwise>
																</c:choose>


															</div>
															<div class="card-body">
																<div class="card-title">
																	<a href="task-todo?idTask=${task.id}">
																		<h6 data-filter-by="text">${task.name}</h6>
																	</a> <span class="text-small">${task.description}</span><br>
																	<span class="text-danger">Task failed</span>

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
																		<i class="material-icons">playlist_add_check</i>

																		<c:choose>
																			<c:when
																				test="${task.completedAmount == 0 and task.totalTask ==0}">
																				<span>-/-</span>
																			</c:when>
																			<c:otherwise>
																				<span>${task.completedAmount}/${task.totalTask}</span>
																			</c:otherwise>
																		</c:choose>


																	</div>
																	<div class="dropdown card-options">
																		<button class="btn-options" type="button"
																			id="task-dropdown-button-7" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false">
																			<i class="material-icons">more_vert</i>
																		</button>
																		<div class="dropdown-menu dropdown-menu-right">
																			<a class="dropdown-item"
																				href="team-project/MaskAsDone?idTask=${task.id }">Mark
																				as done</a>
																			<div class="dropdown-divider"></div>
																			<a class="dropdown-item text-danger"
																				href="team-project/leaveTask?idTask=${task.id}">Leave
																				task</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:when>
													<c:when
														test="${task.completedAmount eq task.totalTask and task.due != -2 and task.totalTask ne 0}">

														<div class="card card-task done">
															<div class="progress">
																<c:choose>
																	<c:when test="${task.due lt 5}">
																		<div class="progress-bar bg-danger" role="progressbar"
																			style="width:${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:when test="${task.due le 7 and task.due ge 5 }">
																		<div class="progress-bar bg-warning"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:otherwise>
																		<div class="progress-bar bg-success"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:otherwise>
																</c:choose>


															</div>
															<div class="card-body">
																<div class="card-title">
																	<a href="task-todo?idTask=${task.id}">
																		<h6 data-filter-by="text">${task.name}</h6>
																	</a> <span class="text-small">${task.description}</span><br>
																	<span class="text-danger">Done</span>

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
																		<i class="material-icons">playlist_add_check</i>

																		<c:choose>
																			<c:when
																				test="${task.completedAmount == 0 and task.totalTask ==0}">
																				<span>-/-</span>
																			</c:when>
																			<c:otherwise>
																				<span>${task.completedAmount}/${task.totalTask}</span>
																			</c:otherwise>
																		</c:choose>


																	</div>
																	<div class="dropdown card-options">
																		<button class="btn-options" type="button"
																			id="task-dropdown-button-7" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false">
																			<i class="material-icons">more_vert</i>
																		</button>
																		<div class="dropdown-menu dropdown-menu-right">
																			<a class="dropdown-item"
																				href="team-project/MaskAsDone?idTask=${task.id }">Mark
																				as done</a>
																			<div class="dropdown-divider"></div>
																			<a class="dropdown-item text-danger"
																				href="team-project/leaveTask?idTask=${task.id}">Leave
																				task</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>

													</c:when>
													<c:otherwise>

														<div class="card card-task">
															<div class="progress">
																<c:choose>
																	<c:when test="${task.due lt 5}">
																		<div class="progress-bar bg-danger" role="progressbar"
																			style="width:${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:when test="${task.due le 7 and task.due ge 5 }">
																		<div class="progress-bar bg-warning"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:when>
																	<c:otherwise>
																		<div class="progress-bar bg-success"
																			role="progressbar"
																			style="width: ${task.completedAmount/task.totalTask*100}%"
																			aria-valuenow="8" aria-valuemin="0"
																			aria-valuemax="100"></div>
																	</c:otherwise>
																</c:choose>


															</div>
															<div class="card-body">
																<div class="card-title">
																	<a href="task-todo?idTask=${task.id}">
																		<h6 data-filter-by="text">${task.name}</h6>
																	</a> <span class="text-small">${task.description}</span><br>
																	<c:choose>
																		<c:when test="${task.due == -2}">
																			<span class="text-small"><a
																				href="task-todo?idTask=${task.id}"><strong>Click
																						to start</strong></a></span>
																		</c:when>
																		<c:otherwise>
																			<span class="text-small">due ${task.due} days</span>
																		</c:otherwise>
																	</c:choose>


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
																		<i class="material-icons">playlist_add_check</i>

																		<c:choose>
																			<c:when
																				test="${task.completedAmount == 0 and task.totalTask ==0}">
																				<span>-/-</span>
																			</c:when>
																			<c:otherwise>
																				<span>${task.completedAmount}/${task.totalTask}</span>
																			</c:otherwise>
																		</c:choose>


																	</div>
																	<div class="dropdown card-options">
																		<button class="btn-options" type="button"
																			id="task-dropdown-button-7" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false">
																			<i class="material-icons">more_vert</i>
																		</button>
																		<div class="dropdown-menu dropdown-menu-right">
																			<a class="dropdown-item"
																				href="team-project/MaskAsDone?idTask=${task.id }">Mark
																				as done</a>
																			<div class="dropdown-divider"></div>
																			<a class="dropdown-item text-danger"
																				href="team-project/leaveTask?idTask=${task.id}">Leave
																				task</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:otherwise>
												</c:choose>




											</c:forEach>
										</div>
									</div>
									<!--end of content list body-->
								</div>
								<!--end of content list-->
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
						<form:form modelAttribute="manageUser"
							action="team-project/manage-user-project" method="POST"
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
												<c:set var="i" value="0" />
												<c:forEach var="user" items="${user}">
													<input type="hidden" value="${i=i+1}">
													<div class="custom-control custom-checkbox">
														<form:checkbox path="email" class="custom-control-input"
															id="${i}" value="${user.teamMember.member.email}"
															checked="checked" />
														<form:label path="email" class="custom-control-label"
															for="${i}">
														</form:label>
														<div class="d-flex align-items-center">
															<img alt="${user.teamMember.member.name}"
																src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
																class="avatar mr-2" /> <span class="h6 mb-0"
																data-filter-by="text">${user.teamMember.member.name}</span>
														</div>
													</div>
												</c:forEach>
												<c:forEach var="member" items="${member}">
													<input type="hidden" value="${i=i+1}">
													<div class="custom-control custom-checkbox">
														<form:checkbox path="email2" class="custom-control-input"
															id="${i}" value="${member.member.email}" />
														<form:label path="email2" class="custom-control-label"
															for="${i}">
															<div class="d-flex align-items-center">
																<img alt="${member.member.name}"
																	src="<spring:url value='/profile/avatar/${member.member.email}'/>"
																	class="avatar mr-2" /> <span class="h6 mb-0"
																	data-filter-by="text">${member.member.name}</span>
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
														path="name" name="project-name" required="required" />
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														path="description" required="required"></form:textarea>
												</div>
												<hr>
												<h6>Timeline</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Start Date</label>
													<form:input path="startDate" id="StartDate"
														class="form-control col" type="date" required="required" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label>
													<form:input class="form-control col" id="EndDate"
														type="date" path="endDate" required="required" />
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

														<c:forEach var="user" items="${user}">
															<input type="hidden" value="${i=i+1}">
															<div class="custom-control custom-checkbox">
																<form:checkbox path="email" class="custom-control-input"
																	id="${i}" value="${user.teamMember.member.email}"
																	checked="checked" />
																<form:label path="email" class="custom-control-label"
																	for="${i}">
																</form:label>
																<div class="d-flex align-items-center">
																	<img alt="${user.teamMember.member.name}"
																		src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
																		class="avatar mr-2" /> <span class="h6 mb-0"
																		data-filter-by="text">${user.teamMember.member.name}</span>
																</div>
															</div>
														</c:forEach>
														<c:forEach var="member" items="${member}">
															<input type="hidden" value="${i=i+1}">
															<div class="custom-control custom-checkbox">
																<form:checkbox path="email2"
																	class="custom-control-input" id="${i}"
																	value="${member.member.email}" />
																<form:label path="email2" class="custom-control-label"
																	for="${i}">
																	<div class="d-flex align-items-center">
																		<img alt="${member.member.name}"
																			src="<spring:url value='/profile/avatar/${member.member.email}'/>"
																			class="avatar mr-2" /> <span class="h6 mb-0"
																			data-filter-by="text">${member.member.name}</span>
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
														placeholder="Task name" path="name" required="required" />
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
														placeholder="Task start" path="startDate" id="StartDate2"
														required="required" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label>
													<form:input class="form-control col" id="EndDate2"
														type="date" placeholder="Task due" path="endDate"
														required="required" />
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
															<c:choose>
																<c:when
																	test="${user.teamMember.member.email eq emailUser}">
																	<form:input type="hidden" path="email"
																		value="${emailUser}" />
																</c:when>
																<c:otherwise>
																	<div class="custom-control custom-checkbox">
																		<form:checkbox path="email"
																			class="custom-control-input" id="${i}"
																			value="${user.teamMember.member.email}" />
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
																</c:otherwise>
															</c:choose>

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

	<script type="text/javascript">
		$(document).ready(function() {
			$("#EndDate").change(function() {
				var startDate = document.getElementById("StartDate").value;
				var endDate = document.getElementById("EndDate").value;

				if ((Date.parse(endDate) <= Date.parse(startDate))) {
					alert("End date should be greater than Start date");
					document.getElementById("EndDate").value = "";
				}
			});
			$("#EndDate2").change(function() {
				var startDate = document.getElementById("StartDate2").value;
				var endDate = document.getElementById("EndDate2").value;

				if ((Date.parse(endDate) <= Date.parse(startDate))) {
					alert("End date should be greater than Start date");
					document.getElementById("EndDate2").value = "";
				}
			});
		});
	</script>


</body>

</html>

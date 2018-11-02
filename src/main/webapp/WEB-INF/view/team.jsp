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
<title>Team</title>
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
						<a style="color: white;" class="material-icons"
							data-toggle="modal" href="#msgModal">notifications</a> <a
							style="color: white;"
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


						<li class="breadcrumb-item active" aria-current="page">Team</li>
					</ol>
				</nav>

				<div class="dropdown">
					<button class="btn btn-round" role="button" data-toggle="dropdown"
						aria-expanded="false">
						<i class="material-icons">settings</i>
					</button>
					<div class="dropdown-menu dropdown-menu-right">
						<c:if test="${checkAdmin eq 'yes'}">
							<a class="dropdown-item" href="#" data-toggle="modal"
								data-target="#team-manage-modal">Edit Team</a>
						</c:if>
						<a class="dropdown-item" href="#">Share</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item text-danger" href="team/leaveTeam">Leave</a>
					</div>
				</div>

			</div>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-11 col-xl-10">
						<div class="page-header">
							<h1>${team.name}</h1>
							<p class="lead">${team.description}</p>
							<div class="d-flex align-items-center">
								<ul class="avatars">
									<c:forEach var="member" items="${member}">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="${member.member.name}"> <img
												alt="${member.member.name}" class="avatar"
												src="<spring:url value='/profile/avatar/${member.member.email}'/>" />
										</a></li>
									</c:forEach>
								</ul>
								<c:if test="${checkAdmin eq 'yes'}">
									<button class="btn btn-round" data-toggle="modal"
										data-target="#user-invite-modal">
										<i class="material-icons">email</i>
									</button>
									<button class="btn btn-round" data-toggle="modal"
													data-target="#userteam-manage-modal">
										<i class="material-icons">person_add</i>
									</button>
								</c:if>
							</div>
						</div>
						<hr>
						<ul class="nav nav-tabs nav-fill">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#projects" role="tab"
								aria-controls="projects" aria-selected="true">Projects</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#members" role="tab" aria-controls="members"
								aria-selected="false">Members</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="projects"
								role="tabpanel" aria-labelledby="tasks-tab"
								data-filter-list="content-list-body">
								<div class="content-list">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Projects</h3>
											<c:if test="${checkAdmin eq 'yes'}">
												<button class="btn btn-round" data-toggle="modal"
													data-target="#project-add-modal">
													<i class="material-icons">add</i>
												</button>
											</c:if>
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
										<c:forEach var="project" items="${project}">
											<div class="col-lg-6">
												<div class="card card-project">

													<div class="progress">
														<div class="progress-bar bg-success" role="progressbar"
															style="width: ${project.taskDone div project.totalTask * 100}%"
															aria-valuenow="8" aria-valuemin="0" aria-valuemax="100"></div>
													</div>

													<div class="card-body">
														<div class="dropdown card-options">
															<button class="btn-options" type="button"
																id="project-dropdown-button-5" data-toggle="dropdown"
																aria-haspopup="true" aria-expanded="false">
																<i class="material-icons">more_vert</i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">

																<a class="dropdown-item"
																	href="team-project/join-to-project?idProject=${project.id}">Join
																	to project</a>

																<div class="dropdown-divider"></div>
																<a class="dropdown-item text-danger"
																	href="manage/leaveProject?idProject=${project.id}">Leave
																	Project</a>
															</div>
														</div>
														<div class="card-title">
															<a
																href="team-project?idTeam=${team.idTeam}&idProject=${project.id}">
																<h5 data-filter-by="text">${project.name}</h5>
															</a>
														</div>
														<ul class="avatars">
															<c:forEach var="user" items="${user}">
																<c:if test="${user.teamProject.id == project.id}">
																	<li><a href="#" data-toggle="tooltip"
																		title="${user.teamMember.member.name}"> <img
																			alt="${user.teamMember.member.name}" class="avatar"
																			src="<spring:url value='/profile/avatar/${user.teamMember.member.email}'/>"
																			data-filter-by="alt" />
																	</a></li>
																</c:if>
															</c:forEach>
														</ul>
														<div class="card-meta d-flex justify-content-between">
															<div class="d-flex align-items-center">
																<i class="material-icons mr-1">playlist_add_check</i>

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
															<c:choose>
																<c:when test="${project.due == -2}">
																	<span class="text-small" data-filter-by="text">Click
																		on the project to start</span>
																</c:when>
																<c:when test="${project.due == 0}">
																	<span class="text-small" data-filter-by="text">Today</span>
																</c:when>
																<c:otherwise>
																	<span class="text-small" data-filter-by="text">Due
																		${project.due} days</span>
																</c:otherwise>
															</c:choose>

														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
									<!--end of content list body-->
								</div>
								<!--end of content list-->
							</div>
							<!--end of tab-->
							<div class="tab-pane fade" id="members" role="tabpanel"
								aria-labelledby="members-tab"
								data-filter-list="content-list-body">
								<div class="content-list">
									<div class="row content-list-head">
										<div class="col-auto">
											<h3>Members</h3>
											<c:if test="${checkAdmin eq 'yes'}">
												<button class="btn btn-round" data-toggle="modal"
													data-target="#user-invite-modal">
													<i class="material-icons">add</i>
												</button>
											</c:if>
										</div>
										<form class="col-md-auto">
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
										</form>
									</div>
									<!--end of content list head-->
									<div class="content-list-body row">
										<c:forEach var="member" items="${member}">
											<div class="col-6">
												<div class="dropdown">
													<a class="media media-member" href="#" role="button"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false"> <img alt="Image"
														src="<spring:url value='/profile/avatar/${member.member.email}'/>"
														class="avatar avatar-lg" />
														<div class="media-body">
															<h6 class="mb-0" data-filter-by="text">${member.member.name}</h6>
															<span data-filter-by="text" class="text-body">${member.role}</span>
														</div>
													</a>
													<div class="dropdown-menu">
														<a href="" class="dropdown-item">CV Profile </a> <a
															href="team/setAdmin?idMember=${member.id}"
															class="dropdown-item">Set Admin</a>
													</div>
												</div>

											</div>
										</c:forEach>
									</div>
								</div>
								<!--end of content list-->
							</div>
						</div>
						<form action="team/invitedMember" method="post" class="modal fade"
							id="user-invite-modal" tabindex="-1" role="dialog"
							aria-labelledby="user-invite-modal" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Invite Users</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<div class="modal-body">
										<p>Send an invite link via email to add members to this
											team</p>
										<div>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="material-icons">email</i>
													</span>
												</div>
												<input name="email" type="text" class="form-control"
													placeholder="Recipient email address"
													aria-label="Recipient email address"
													aria-describedby="recipient-email-address">
											</div>
											<div class="input-group">
												<label class="col-12">Your Messages</label>
												<textarea name="messages" class="form-control col" rows="3"
													placeholder="Team description"></textarea>
											</div>

										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<!--end of modal body-->
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Invite users</button>
									</div>
								</div>
							</div>
						</form>
						<form:form modelAttribute="teamModel" action="team/editTeam"
							method="post" class="modal fade" id="team-manage-modal"
							tabindex="-1" role="dialog" aria-labelledby="team-manage-modal"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Manage Team</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<ul class="nav nav-tabs nav-fill">
										<li class="nav-item"><a class="nav-link active"
											id="team-manage-details-tab" data-toggle="tab"
											href="#team-manage-details" role="tab"
											aria-controls="team-manage-details" aria-selected="true">Details</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											id="team-manage-members-tab" data-toggle="tab"
											href="#team-manage-members" role="tab"
											aria-controls="team-manage-members" aria-selected="false">Members</a>
										</li>
									</ul>
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active"
												id="team-manage-details" role="tabpanel"
												aria-labelledby="team-manage-details-tab">
												<h6>Team Details</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label>
													<form:input class="form-control col" type="text"
														placeholder="Team name" path="name" />
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														placeholder="Team description" path="description"></form:textarea>
												</div>
											</div>
											<div class="tab-pane fade" id="team-manage-members"
												role="tabpanel" aria-labelledby="team-manage-members-tab">
												<div class="users-manage"
													data-filter-list="form-group-users">
													<div class="mb-3">
														<ul class="avatars text-center">
															<c:forEach var="member" items="${member}">
																<li><img alt="${member.member.name}"
																	src="<spring:url value='/profile/avatar/${member.member.email}'/>"
																	class="avatar" data-toggle="tooltip"
																	data-title="${member.member.name}" /></li>
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
																<form:checkbox path="email" class="custom-control-input"
																	id="${member.member.email}"
																	value="${member.member.email}" checked="checked" />
																<form:label path="email" class="custom-control-label"
																	for="${member.member.email}">
																	<div class="d-flex align-items-center">
																		<img alt="${member.member.name}"
																			src="<spring:url value='/profile/avatar/${member.member.email}'/>"
																			class="avatar mr-2" /> <span class="h6 mb-0"
																			data-filter-by="text">${member.member.name}</span>
																	</div>
																</form:label>
															</div>
														</c:forEach>
														<c:forEach var="friend" items="${friend}">
															<div class="custom-control custom-checkbox">
																<form:checkbox path="email2"
																	class="custom-control-input"
																	id="${friend.emailFriend.email}"
																	value="${friend.emailFriend.email}" />
																<form:label path="email2" class="custom-control-label"
																	for="${friend.emailFriend.email}">
																	<div class="d-flex align-items-center">
																		<img alt="${friend.emailFriend.name}"
																			src="<spring:url value='/profile/avatar/${friend.emailFriend.email}'/>"
																			class="avatar mr-2" /> <span class="h6 mb-0"
																			data-filter-by="text">${friend.emailFriend.name}</span>
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
									<form:input type="hidden" path="owner" />
									<form:input type="hidden" path="memberAmount" />
									<form:input type="hidden" path="projectAmount" />
									<form:input type="hidden" path="idTeam" />
									<form:input type="hidden" path="dateCreate" />
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Done</button>
									</div>
								</div>
							</div>
						</form:form>
						<form:form modelAttribute="teamModel" action="team/manageUser"
							method="POST" class="modal fade" id="userteam-manage-modal"
							tabindex="-1" role="dialog" aria-labelledby="user-manage-modal"
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
														<li><img alt="${member.member.name}"
															src="<spring:url value='/profile/avatar/${member.member.email}'/>"
															class="avatar" data-toggle="tooltip"
															data-title="${member.member.name}" /></li>
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
														<form:checkbox path="email" class="custom-control-input"
															id="${i}"
															value="${member.member.email}" checked="checked" />
														<form:label path="email" class="custom-control-label"
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
												<c:forEach var="friend" items="${friend}">
												<input type="hidden" value="${i=i+1}">
													<div class="custom-control custom-checkbox">
														<form:checkbox path="email2" class="custom-control-input"
															id="${i}"
															value="${friend.emailFriend.email}" />
														<form:label path="email2" class="custom-control-label"
															for="${i}">
															<div class="d-flex align-items-center">
																<img alt="${friend.emailFriend.name}"
																	src="<spring:url value='/profile/avatar/${friend.emailFriend.email}'/>"
																	class="avatar mr-2" /> <span class="h6 mb-0"
																	data-filter-by="text">${friend.emailFriend.name}</span>
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
						<!-- ------------------------	Project - Team	----------------------------- -->
						<form:form modelAttribute="newProject"
							action="team/create-project" method="post" class="modal fade"
							id="project-add-modal" tabindex="-1" role="dialog"
							aria-labelledby="project-add-modal" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">New Project</h5>
										<button type="button" class="close btn btn-round"
											data-dismiss="modal" aria-label="Close">
											<i class="material-icons">close</i>
										</button>
									</div>
									<!--end of modal head-->
									<ul class="nav nav-tabs nav-fill">
										<li class="nav-item"><a class="nav-link active"
											id="project-add-details-tab" data-toggle="tab"
											href="#project-add-details" role="tab"
											aria-controls="project-add-details" aria-selected="true">Details</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											id="project-add-members-tab" data-toggle="tab"
											href="#project-add-members" role="tab"
											aria-controls="project-add-members" aria-selected="false">Members</a>
										</li>
									</ul>
									<div class="modal-body">
										<div class="tab-content">
											<div class="tab-pane fade show active"
												id="project-add-details" role="tabpanel"
												aria-labelledby="project-add-details-tab">
												<h6>General Details</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Name</label>
													<form:input class="form-control col" type="text"
														placeholder="Project name" path="name" required="required" />
												</div>
												<div class="form-group row">
													<label class="col-3">Description</label>
													<form:textarea class="form-control col" rows="3"
														placeholder="Project description" path="description"
														required="required"></form:textarea>
												</div>
												<hr>
												<h6>Timeline</h6>
												<div class="form-group row align-items-center">
													<label class="col-3">Start Date</label>
													<form:input class="form-control col" id="StartDate"
														type="date" placeholder="Project start" path="startDate"
														required="required" />
												</div>
												<div class="form-group row align-items-center">
													<label class="col-3">Due Date</label>
													<form:input class="form-control col" id="EndDate"
														type="date" placeholder="Project due" path="endDate"
														required="required" />
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
																value="Everyone" checked="checked" />
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
											<div class="tab-pane fade" id="project-add-members"
												role="tabpanel" aria-labelledby="project-add-members-tab">
												<div class="users-manage"
													data-filter-list="form-group-users">
													<div class="mb-3">
														<ul class="avatars text-center">

															<li><img alt="${profile.name}"
																src="<spring:url value='/profile/avatar/${emailUser}'/>"
																class="avatar" data-toggle="tooltip"
																data-title="${profile.name}" /></li>

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
															<c:choose>
																<c:when test="${member.member.email eq emailUser}">
																	<form:input type="hidden" path="email"
																		value="${member.member.email}" />
																</c:when>
																<c:otherwise>
																	<div class="custom-control custom-checkbox">
																		<form:checkbox path="email"
																			value="${member.member.email}"
																			class="custom-control-input" id="${i}" />
																		<form:label path="email" class="custom-control-label"
																			for="${i}">
																			<div class="d-flex align-items-center">
																				<img alt="${member.member.name}"
																					src="<spring:url value='/profile/avatar/${member.member.email}'/>"
																					class="avatar mr-2" /> <span class="h6 mb-0"
																					data-filter-by="text">${member.member.name}</span>
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
									<!-- 	<input type="hidden" name="idTeam" value="${idTeam}"/> -->
									<div class="modal-footer">
										<button role="button" class="btn btn-primary" type="submit">
											Create Project</button>
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



	<script src="<spring:url value='/resources/js/jquery-3.2.1.min.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/autosize.min.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/popper.min.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/prism.min.js'/>"
		type="text/javascript"></script>
	<script
		src="<spring:url value='/resources/js/draggable.bundle.legacy.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/swap-animation.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/dropzone.min.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/list.min.js'/>"
		type="text/javascript"></script>
	<script src="<spring:url value='/resources/js/bootstrap.min.js'/>"
		type="text/javascript"></script>

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
		});
	</script>

</body>

</html>

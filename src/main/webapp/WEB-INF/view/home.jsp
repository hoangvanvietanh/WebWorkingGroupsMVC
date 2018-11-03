<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.*"%>
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
<link rel="stylesheet"
	href="<spring:url value='/resources/css/notifications.css'/>">
<style type="text/css">
.messages {
	margin-top: 1.5rem;
	max-width: 500px;
	max-height: 500px;
	overflow: auto;
}
.
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
			<div class="sidebar-container">
				<button
					class="btn btn-primary btn-round btn-floating btn-lg d-lg-none"
					type="button" data-toggle="collapse"
					data-target="#sidebar-collapse" aria-expanded="false"
					aria-controls="sidebar-floating-chat">
					<i class="material-icons">more_horiz</i> <i class="material-icons">close</i>
				</button>
				<div class="sidebar collapse" id="sidebar-collapse">
					<div class="sidebar-content">
						<p style="padding-left: 35%; padding-top: 5%;">
							<strong>My Friends</strong>
						</p>
						<div class="chat-team-sidebar text-small">
							<div class="chat-team-sidebar-bottom">
								<div class="tab-content">
									<div class="tab-pane fade show active" style="padding-top: 0%;"
										id="members" role="tabpanel" aria-labelledby="members-tab"
										data-filter-list="list-group">
										<form class="px-3 mb-3">
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
										<div class="list-group list-group-flush">
											<c:forEach var="friend" items="${friend}">
												<a class="list-group-item list-group-item-action"
													href="profile-cv/cv?email=${friend.emailFriend.email}">
													<div class="media media-member mb-0">
														<img alt="${friend.emailFriend.name}"
															src="<spring:url value='/profile/avatar/${friend.emailFriend.email}'/>"
															class="avatar" />
														<div class="media-body">
															<h6 class="mb-0" data-filter-by="text">${friend.emailFriend.name}</h6>
														</div>
													</div>
												</a>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
			<div class="content-container">

				<div
					class="text-center d-flex align-items-center justify-content-center pt-5">
					<div>
						<img alt="Empty State" src="resources/img/boymax.gif" class="w-50"
							style="opacity: .8" /> <span class="h3 d-block mt-3">Hello
							my friend </span>
						<p>How can I help you ?</p>
					</div>
				</div>

			</div>
			<div class="sidebar-container">
				<button
					class="btn btn-primary btn-round btn-floating btn-lg d-lg-none"
					type="button" data-toggle="collapse"
					data-target="#sidebar-collapse" aria-expanded="false"
					aria-controls="sidebar-floating-chat">
					<i class="material-icons">more_horiz</i> <i class="material-icons">close</i>
				</button>
				<div class="sidebar collapse" id="sidebar-collapse">
					<div class="sidebar-content">
						<p style="padding-left: 35%; padding-top: 5%;">
							<strong>My Team</strong>
						</p>
						<div class="chat-team-sidebar text-small">
							<div class="chat-team-sidebar-bottom">
								<div class="tab-content">
									<div class="tab-pane fade show active" style="padding-top: 0%;"
										id="members" role="tabpanel" aria-labelledby="members-tab"
										data-filter-list="list-group">
										<form class="px-3 mb-3">
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
										<div class="list-group list-group-flush">
											<c:forEach var="team" items="${team}">
												<div class="card card-team">
													<div class="card-body">
														<div class="dropdown card-options">
															<button class="btn-options" type="button"
																data-toggle="dropdown" aria-haspopup="true"
																aria-expanded="false">
																<i class="material-icons">more_vert</i>
															</button>
															<div class="dropdown-menu dropdown-menu-right">
																<a data-team-idTeam="${team.team.idTeam}"
																	data-team-name="${team.team.name}"
																	data-team-description="${team.team.description}"
																	data-team-owner="${team.team.owner}"
																	data-team-memberAmount="${team.team.memberAmount}"
																	data-team-projectAmount="${team.team.projectAmount}"
																	date-team-dateCreate="${team.team.dateCreate}"
																	class="dropdown-item edit-team-btn" href=""
																	data-toggle="modal" data-target="#team-edit-modal">More
																	information</a> <a class="dropdown-item text-danger"
																	href="manage/leaveTeam?idTeam=${team.team.idTeam}">Leave
																	Team</a>
															</div>
														</div>
														<div class="card-title">
															<a href="team?idTeam=${team.team.idTeam}">
																<h5 data-filter-by="text">${team.team.name}</h5>
															</a> <span>${team.team.projectAmount} Projects,
																${team.team.memberAmount} Members</span>
														</div>

														<ul class="avatars">
															<c:forEach var="member" items="${member}">
																<c:if test="${member.team.idTeam ==  team.team.idTeam}">
																	<li><a
																		href="profile-cv/cv?email=${member.member.email}"
																		data-toggle="tooltip" title="${member.member.name}">
																			<img alt="${member.member.name}" class="avatar"
																			src="<spring:url value='/profile/avatar/${member.member.email}'/>" />
																	</a></li>
																</c:if>
															</c:forEach>
														</ul>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
				<form class="modal fade" id="team-edit-modal" tabindex="-1"
					role="dialog" aria-labelledby="team-edit-modal" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">Team Details</h5>
								<button type="button" class="close btn btn-round"
									data-dismiss="modal" aria-label="Close">
									<i class="material-icons">close</i>
								</button>
							</div>
							<!--end of modal head-->
							<div class="modal-body">
								<div class="tab-content">
									<div class="tab-pane fade show active"
										aria-labelledby="team-edit-details-tab">
										<div class="form-group row align-items-center">
											<label class="col-3">Name</label> <input
												class="form-control col" type="text" id="team-name" readonly />
										</div>
										<div class="form-group row">
											<label class="col-3">Owner</label> <input
												class="form-control col" id="team-owner" readonly />
										</div>
										<div class="form-group row">
											<label class="col-3">Created At</label> <input
												class="form-control col" id="team-dateCreate" readonly />
										</div>
										<div class="form-group row">
											<label class="col-3">Number of projects</label> <input
												class="form-control col" id="team-projectAmount" readonly />
										</div>
										<div class="form-group row">
											<label class="col-3">Number of members</label> <input
												class="form-control col" id="team-memberAmount" readonly />
										</div>

										<div class="form-group row">
											<label class="col-3">Description</label>
											<textarea class="form-control col" rows="3"
												id="team-description" readonly></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
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
										</div>
										<div class="dropdown">
											<a class="media media-member" href="#" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false"> <img class="us bos vb yb afi"
												src="resources/img/anonymous.png">
											</a>
											<div class="dropdown-menu">
												<a href="home/seen?idNotifications=${mess.id}&path=${path}" class="dropdown-item">Seen</a>
												<a href="home/delete?idNotifications=${mess.id}&path=${path}" class="dropdown-item">Delete</a>
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
	<script src="<spring:url value='/resources/js/application.js'/>"
		type="text/javascript"></script>

	<script>
		$(document).ready(function() {
			$('.edit-team-btn').click(function(event) {
				var id = $(this).attr("data-team-idTeam");
				var name = $(this).attr("data-team-name");
				var owner = $(this).attr("data-team-owner");
				var description = $(this).attr("data-team-description");
				var memberAmount = $(this).attr("data-team-memberAmount");
				var projectAmount = $(this).attr("data-team-projectAmount");
				var dateCreate = $(this).attr("date-team-dateCreate");

				$('#team-idTeam').val(id);
				$('#team-dateCreate').val(dateCreate);
				$('#team-name').val(name);
				$('#team-owner').val(owner);
				$('#team-projectAmount').val(projectAmount);
				$('#team-memberAmount').val(memberAmount);
				$('#team-description').val(description);
			});
		});
	</script>
</body>

</html>

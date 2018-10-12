<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en-US" class="gr__localhost">
<head>
<meta charset="UTF-8">
<title>Preview - Bootstrap Themes</title>
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
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style type="text/css">
.avatar {
	width: 2.25rem;
	height: 2.25rem;
	border-radius: 50%;
	border: 2px solid #F7F9FA;
	background: #F7F9FA;
	color: #fff;
}

.avatars {
	padding-left: 0;
	list-style: none;
	margin: 0;
}

ul, menu, dir {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

.material-icons {
	font-family: 'Material Icons';
	font-weight: normal;
	font-style: normal;
	font-size: 24px;
	line-height: 1;
	letter-spacing: normal;
	text-transform: none;
	display: inline-block;
	white-space: nowrap;
	word-wrap: normal;
	direction: ltr;
	-webkit-font-feature-settings: 'liga';
	-webkit-font-smoothing: antialiased;
}

.text-small {
	font-size: .875rem;
	line-height: 1.3125rem;
}

button:focus {
	outline: none;
}

.btn-lg {
	font-size: 1.125rem;
	max-height: 2;
}

.btn-round {
	width: 2rem;
	height: 2rem;
	line-height: 2rem;
	border-radius: 50%;
	padding: 0;
	background: gray-300;
	display: flex;
	align-items: center;
	justify-content: center;
}

.btn-round.btn-primary {
	background: theme-color("primary");
}

.btn-round.btn-primary i.material-icons {
	color: white;
}

.btn-round.btn-primary:hover {
	background: darken;
}

.btn-round i.material-icons {
	font-size: 1rem;
	color: gray-600;
}

.btn-round:hover {
	background: darken;
}

.btn-round.btn-lg {
	width: 3rem;
	height: 3rem;
}

.btn-round.btn-lg i.material-icons {
	font-size: 1.5rem;
}

.btn-round.close {
	padding: 0;
	background: gray-300;
	opacity: 1;
}

h3+.btn-round, h5+.btn-round {
	margin-left: 0.75rem;
}

.btn-options {
	color: body-color;
	padding: 0;
	background: none;
	border: none;
	cursor: pointer;
	display: flex;
	align-items: center;
}

.btn-floating {
	position: fixed;
	z-index: zindex-fixed;
	bottom: spacer;
	right: spacer;
}

.btn-floating[aria-expanded=false] i:last-child {
	display: none;
}

.btn-floating[aria-expanded=true] i:first-child {
	display: none;
}

.content-list-head {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.content-list-head>div:first-child {
	margin-bottom: spacer/2;
}

.content-list-head {
	margin-bottom: spacer;
}

.content-list-head h3, .content-list-head h5 {
	margin: 0;
	display: inline-block;
}

.content-list-head>[class*=col] {
	display: flex;
	align-items: center;
}

.content-list+.content-list {
	margin-top: spacer;
}

.card {
	margin-bottom: 0.75rem;
}

.card-body {
	padding: "spacer*0.75";
}

.card-title h6 {
	margin: 0;
}

.card-body p:last-child {
	margin-bottom: 0;
}

.card .card {
	background: gray-100;
}

/** Card Options **/
.card-body .card-options {
	position: absolute;
	top: 1.5rem;
	right: 0.75rem;
}

/** Card Progress Bars **/
.card>.progress {
	height: 0.1875rem;
	background: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	z-index: 1;
}

.card>.progress .progress-bar {
	height: 1rem;
	border-radius: 0.5rem 0 0 0;
}

.card>.progress .progress-bar[style="width: 100%"] {
	border-radius: 0.5rem 0.5rem 0 0;
}

/** Custom Cards **/
.card {
	margin-bottom: spacer/2;
}

.card .card-title {
	max-width: 90%;
}

.card-note {
	background: #ffffd6;
	border-color: #ffffc2;
}

.card-note .card-header {
	padding-top: 1rem;
	padding-bottom: 0;
	display: flex;
	align-items: center;
	justify-content: space-between;
	background: none;
	border-bottom: none;
}

.card-note .card-header .avatar {
	margin-right: spacer/2;
	border-color: #ffffcc;
}

.card-note .card-header+.card-body {
	padding-top: 1rem;
}

.card-task .card-body {
	padding: 1.25rem;
}

.card-task .card-meta {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.card-task .card-meta i {
	margin-right: spacer/6;
}

.card-task .card-title {
	margin: 0;
}

.card-task .card-body, .card-task .card-meta {
	display: flex;
	align-items: center;
}

.card-task .card-body {
	justify-content: space-between;
}

.card-task .card-options {
	margin-left: spacer;
	position: relative;
	top: 0;
	right: 0;
}

.card-task .avatars {
	margin-right: spacer;
}

.card-project, .card-team, .card-file {
	margin-bottom: spacer;
}

.card-project .card-title, .card-kanban .card-title {
	margin-bottom: spacer/2;
}

.card-project .card-title:last-child, .card-kanban .card-title:last-child
	{
	margin-bottom: 0;
}

.card-project .avatars {
	margin-bottom: "spacer*1.5";
}

.card-team h5 {
	margin-bottom: spacer/4;
}

.card-team .card-title {
	margin-bottom: spacer;
}

.card-kanban .card-body {
	padding: 1rem;
}

.card-kanban .avatars {
	margin-bottom: spacer/2;
}

.card-kanban .avatars .avatar {
	width: "spacer*1.25";
	height: "spacer*1.25";
}

.card-kanban .card-options {
	top: 1rem;
}

.card-kanban .card-meta {
	font-size: 0.875rem;
}

.card-kanban .card-meta i {
	margin-right: spacer/6;
}

.card-kanban:not (:hover ) .card-options {
	opacity: 0;
}

/** Card List **/
.card-list {
	margin-bottom: spacer/2;
	border-radius: "border-radius*2";
	padding: 1rem;
	background: gray-300;
}

.card-list .card {
	border: none;
}

.card-list .card-list-head {
	display: flex;
	justify-content: space-between;
}

.card-list .card:last-child {
	margin-bottom: 0;
}

.content-list-head {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.content-list-head>div:first-child {
	margin-bottom: 0.75rem;
}

.content-list-head {
	margin-bottom: spacer;
}

.content-list-head h3, .content-list-head h5 {
	margin: 0;
	display: inline-block;
}

.content-list-head>[class*=col] {
	display: flex;
	align-items: center;
}

.content-list+.content-list {
	margin-top: spacer;
}

.center {
	display: flex;
	min-height: 100vh;
}

*, *:before, *:after {
	box-sizing: border-box;
}

.options {
	position: absolute;
	left: -28px;
	right: -37px;
	top: 50%;
	transform: translateY(-50%);
	color: black;
	padding: 48px;
	font-family: 'Open Sans', sans-serif;
	text-align: center;
}

.options input {
	display: none;
}

.options>label {
	display: inline-block;
	position: relative;
	margin-right: 16px;
	padding-left: 24px;
	cursor: pointer;
}

.options>label:before {
	content: "";
	display: block;
	position: absolute;
	width: 16px;
	height: 16px;
	left: 0;
	top: 50%;
	margin-top: -8px;
	border: 1px solid black;
	border-radius: 8px;
}

.options>label:after {
	content: "";
	display: block;
	position: absolute;
	width: 0;
	height: 0;
	top: 50%;
	left: 8px;
	margin-top: 0;
	background: black;
	border-radius: 4px;
	transition: .2s ease-in-out;
}

.options :checked+label:after {
	height: 8px;
	width: 8px;
	margin-top: -4px;
	left: 4px;
}
</style>
</head>
<body data-gr-c-s-loaded="true" class="">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-11 col-xl-10">
				<div class="page-header">
					<h1>Hello</h1>
					<p class="lead">Hoang Van Viet Anh</p>
				</div>
				<hr>

				<div class="tab-content">
					<div class="tab-pane active" id="projects" role="tabpanel"
						aria-labelledby="tasks-tab" data-filter-list="content-list-body"
						aria-expanded="true">
						<div class="content-list">
							<div class="row content-list-head">
								<div class="col-auto">
									<h3>My Projects</h3>
									<button class="btn btn-round" data-toggle="modal"
										data-target="#project-add-modal">
										<i class="material-icons">add</i>
									</button>
								</div>
							</div>
							<!--end of content list head-->

							<div class="content-list-body row filter-list-1538991000867">
								<c:forEach var="project" items="${project}">
								<c:if test="${project.visibility ne 'team' }">
									<div class="col-lg-6">
										<div class="card card-project">

											<div class="progress">
												<div class="progress-bar bg-danger" role="progressbar"
													style="width: 70%" aria-valuenow="60" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>

											<div class="card-body">
												<div class="dropdown card-options">
													<button class="btn-options" type="button"
														id="project-dropdown-button-1" data-toggle="dropdown"
														aria-haspopup="true" aria-expanded="false">
														<i class="material-icons">more_vert</i>
													</button>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Edit</a> <a
															class="dropdown-item" href="#">Share</a>
													</div>
												</div>
												<div class="card-title">
													<a href="showMyProject?id=${project.idproject}">
														<h5 class="H5-filter-by-text">${project.name}</h5>
													</a>
												</div>
												<ul class="avatars">
													<li><a href="#0"><img
															style="width: 25px; height: 25px" alt="Avatar"
															src="/time-is-gold/profile/avatar/${project.owner}"></a></li>
												</ul>
												<div class="card-meta d-flex justify-content-between">
													<div class="d-flex align-items-center">
														<i class="material-icons mr-1">playlist_add_check</i> <span
															class="text-small">6/10</span>
													</div>
													<span class="text-small SPAN-filter-by-text"
														data-filter-by="text">Due 4 days</span>
												</div>
											</div>

										</div>

									</div>
									</c:if>
								</c:forEach>
							</div>

						</div>
					</div>

				</div>

				<div class="tab-content">
					<div class="tab-pane active" id="projects" role="tabpanel"
						aria-labelledby="tasks-tab" data-filter-list="content-list-body"
						aria-expanded="true">
						<div class="content-list">
							<div class="row content-list-head">
								<div class="col-auto">
									<h3>Team Projects</h3>
									<button class="btn btn-round" data-toggle="modal"
										data-target="#project-add-modal">
										<i class="material-icons">add</i>
									</button>
								</div>
							</div>
							<!--end of content list head-->
							
							<div class="content-list-body row filter-list-1538991000867">
								<c:forEach var="project" items="${project}">
								<c:if test="${project.visibility eq 'team' }">
									<div class="col-lg-6">
										<div class="card card-project">

											<div class="progress">
												<div class="progress-bar bg-danger" role="progressbar"
													style="width: 70%" aria-valuenow="60" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>

											<div class="card-body">
												<div class="dropdown card-options">
													<button class="btn-options" type="button"
														id="project-dropdown-button-1" data-toggle="dropdown"
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
														<h5 class="H5-filter-by-text">${project.name}</h5>
													</a>
												</div>
												<ul class="avatars">
													<li><a href="#0"><img
															style="width: 25px; height: 25px" alt="Avatar"
															src="/time-is-gold/profile/avatar/${project.owner}"></a></li>
												</ul>
												<div class="card-meta d-flex justify-content-between">
													<div class="d-flex align-items-center">
														<i class="material-icons mr-1">playlist_add_check</i> <span
															class="text-small">6/10</span>
													</div>
													<span class="text-small SPAN-filter-by-text"
														data-filter-by="text">Due 4 days</span>
												</div>
											</div>

										</div>

									</div>
									</c:if>
								</c:forEach>
							</div>

						</div>
					</div>

				</div>

				<form:form modelAttribute="projectCreate"
					action="myProject/createProject" method="post" class="modal fade"
					id="project-add-modal" tabindex="-1" role="dialog"
					aria-labelledby="project-add-modal" style="display: none;"
					aria-hidden="true">
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

							<div class="modal-body">
								<div class="tab-content">
									<div class="tab-pane fade active show" id="project-add-details"
										role="tabpanel" aria-labelledby="project-add-details-tab"
										aria-expanded="true">
										<h6>General Details</h6>
										<div class="form-group row align-items-center">
											<label class="col-3">Name</label>
											<form:input class="form-control col" type="text"
												placeholder="Project name" path="name" />
										</div>
										<div class="form-group row">
											<label class="col-3">Description</label>
											<form:textarea class="form-control col" rows="3"
												placeholder="Project description" path="description" />
										</div>
										<hr>
										<h6>Timeline</h6>
										<div class="form-group row align-items-center">
											<label class="col-3">Start Date</label>
											<form:input class="form-control col" type="date"
												placeholder="Project start" path="startDate" />
										</div>
										<div class="form-group row align-items-center">
											<label class="col-3">Due Date</label>
											<form:input class="form-control col" type="date"
												placeholder="Project due" path="endDate" />
										</div>
										<div class="alert alert-warning text-small" role="alert">
											<span>You can change due dates at any time.</span>
										</div>
										<hr>
										<h6><form:label path="visibility"/>Visibility</h6>
										<div class="row">
											<div class="col">
												<div class="options">
													<form:radiobutton path="visibility" id="private" value="private"
														/> <label for="private">Just Me</label>
												</div>
											</div>
											<div class="col">
												<div class="options">
													<form:radiobutton path="visibility" id="team" value="team"/>
													<label for="team">My Team</label>
												</div>
											</div>
											<div class="col">
												<div class="options">
													<form:radiobutton path="visibility" id="public" value="public"/>
													<label for="public">Public</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
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
</body>
</html>
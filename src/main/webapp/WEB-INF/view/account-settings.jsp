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
<title>Account</title>
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
<script src="<spring:url value='/resources/ckeditor5/ckeditor.js'/>"
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
						<li class="breadcrumb-item active" aria-current="page">Account
							Settings</li>
					</ol>
				</nav>
			</div>
			<div class="container">
				<div class="row justify-content-center mt-5">
					<div class="col-lg-3 mb-3">
						<ul class="nav nav-tabs flex-lg-column">
							<li class="nav-item"><a class="nav-link active"
								id="profile-tab" data-toggle="tab" href="#profile" role="tab"
								aria-controls="profile" aria-selected="true">Your Profile</a></li>

							<li class="nav-item"><a class="nav-link"
								id="notifications-tab" data-toggle="tab" href="#notifications"
								role="tab" aria-controls="notifications" aria-selected="false">More
									information</a></li>
							<li class="nav-item"><a class="nav-link" id="password-tab"
								data-toggle="tab" href="#password" role="tab"
								aria-controls="password" aria-selected="false">Password</a></li>
						</ul>
					</div>
					<div class="col-xl-8 col-lg-9">
						<div class="card">
							<div class="card-body">

								<div class="tab-content">

									<div class="tab-pane fade show active" role="tabpanel"
										id="profile" aria-labelledby="profile-tab">
										<form:form id="form" modelAttribute="profile" action="profile"
											method="post" enctype="multipart/form-data">
											<div class="media mb-4">
												<img alt="Image"
													src="<spring:url value='/profile/avatar/${emailProfile}'/>"
													class="avatar avatar-lg" />
												<div class="media-body ml-3">
													<div class="custom-file custom-file-naked d-block mb-1">
														<input type="file" name="file"
															class="custom-file-input d-none" id="avatar-file">
														<label class="custom-file-label position-relative"
															for="avatar-file"> <span class="btn btn-primary">
																Upload avatar </span>
														</label>
													</div>

												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">Full Name</label>
												<div class="col">
													<form:input type="text" path="name" class="form-control" />
												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">Birth Date</label>
												<div class="col">
													<form:input type="date" path="birthdate"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">Gender</label>
												<div class="col">
													<div class="custom-control custom-radio">
														<form:radiobutton id="male" path="gender"
															class="custom-control-input" value="Male" />
														<label class="custom-control-label" for="male">Male</label>
													</div>
												</div>
												<div class="col">
													<div class="custom-control custom-radio">
														<form:radiobutton id="female" path="gender"
															class="custom-control-input" value="Female" />
														<label class="custom-control-label" for="female">Female</label>
													</div>
												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">Email</label>
												<div class="col">
													<form:input type="text" readonly="true" path="email"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">Phone</label>
												<div class="col">
													<form:input type="text" path="phone" class="form-control" />
												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">Address</label>
												<div class="col">
													<form:input path="address" type="text" class="form-control" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-3">Bio</label>
												<div class="col">
													<form:textarea class="form-control" path="about"
														name="content" id="editor5"></form:textarea>
													<small>This will be displayed on your public
														profile</small>
												</div>
											</div>

											<div class="form-group row align-items-center">
												<label class="col-3">Theme</label>
												<div class="col">
													<div class="custom-control custom-radio">
														<form:radiobutton id="theme1" path="theme"
															class="custom-control-input" value="1" />
														<label class="custom-control-label" for="theme1">theme
															1</label>
													</div>
												</div>
												<div class="col">
													<div class="custom-control custom-radio">
														<form:radiobutton id="theme2" path="theme"
															class="custom-control-input" value="2" />
														<label class="custom-control-label" for="theme2">theme
															2</label>
													</div>
												</div>
											</div>
											<form:input type="hidden" path="summary" />
											<form:input type="hidden" path="skill" />
											<form:input type="hidden" path="experience" />
											<form:input type="hidden" path="education" />
											<div class="row justify-content-end">
												<button type="submit" class="btn btn-primary">Save</button>
											</div>
										</form:form>
									</div>


									<div class="tab-pane fade" role="tabpanel" id="password"
										aria-labelledby="password-tab">
										<form:form modelAttribute="change"
											action="account/change-password" method="post">
											<div class="form-group row align-items-center">
												<label class="col-3">Current Password</label>
												<div class="col">
													<input type="password"
														placeholder="Enter your current password" name="oldpass"
														class="form-control" />
												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">New Password</label>
												<div class="col">
													<input type="password" placeholder="Enter a new password"
														name="newpass" class="form-control" /> <small>Password
														must be at least 8 characters long</small>
												</div>
											</div>
											<div class="form-group row align-items-center">
												<label class="col-3">Confirm Password</label>
												<div class="col">
													<input type="password"
														placeholder="Confirm your new password" name="newre_pass"
														class="form-control" />
												</div>
											</div>
											<form:input type="hidden" path="email" />
											<form:input type="hidden" path="password" />
											<div class="row justify-content-end">
												<button type="submit" class="btn btn-primary">Change
													Password</button>
											</div>
										</form:form>
									</div>
									<div class="tab-pane fade" role="tabpanel" id="notifications"
										aria-labelledby="notifications-tab">
										<form:form modelAttribute="profile"
											action="profile/edit-profile" method="post">
											<h6>More information</h6>
											<div class="form-group">
												<label class="col-3">Summary</label>
												<div class="col">
													<form:textarea type="text" name="content" id="editor"
														placeholder="Tell us a little about yourself"
														path="summary" class="form-control"></form:textarea>
												</div>
											</div>
											<div class="form-group">
												<label class="col-3">Experience</label>
												<div class="col">
													<form:textarea type="text" name="content" id="editor2"
														placeholder="Tell us a little about yourself"
														path="experience" class="form-control"></form:textarea>
												</div>
											</div>
											<div class="form-group">
												<label class="col-3">Skill</label>
												<div class="col">
													<form:textarea type="text" name="content" id="editor3"
														placeholder="Tell us a little about yourself" path="skill"
														class="form-control"></form:textarea>
												</div>
											</div>
											<div class="form-group">
												<label class="col-3">Education</label>
												<div class="col">
													<form:textarea type="text" name="content" id="editor4"
														placeholder="Tell us a little about yourself"
														path="education" class="form-control"></form:textarea>
												</div>
											</div>
											<form:input type="hidden" path="theme" />
											<form:input type="hidden" path="name" />
											<form:input type="hidden" path="birthdate" />
											<form:input type="hidden" path="gender" />
											<form:input type="hidden" path="phone" />
											<form:input type="hidden" path="email" />
											<form:input type="hidden" path="address" />
											<form:input type="hidden" path="avatar" />
											<form:input type="hidden" path="about" />


											<div class="row justify-content-end">
												<button type="submit" class="btn btn-primary">Save
													preferences</button>
											</div>
										</form:form>
									</div>


								</div>
							</div>
						</div>
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
		document.getElementById("avatar-file").onchange = function() {
			document.getElementById("form").submit();
		};
	</script>
	<script type="text/javascript">
               ClassicEditor
    .create( document.querySelector( '#editor' ), {
        toolbar: [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' }
            ]
        }
    } )
     .create( document.querySelector( '#editor' ) )
    .catch( error => {
        console.log( error );
    } );
            </script>
	<script type="text/javascript">
               ClassicEditor
    .create( document.querySelector( '#editor2' ), {
        toolbar: [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' }
            ]
        }
    } )
     .create( document.querySelector( '#editor2' ) )
    .catch( error => {
        console.log( error );
    } );
            </script>
	<script type="text/javascript">
               ClassicEditor
    .create( document.querySelector( '#editor3' ), {
        toolbar: [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' }
            ]
        }
    } )
     .create( document.querySelector( '#editor3' ) )
    .catch( error => {
        console.log( error );
    } );
            </script>
	<script type="text/javascript">
               ClassicEditor
    .create( document.querySelector( '#editor4' ), {
        toolbar: [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' }
            ]
        }
    } )
     .create( document.querySelector( '#editor4' ) )
    .catch( error => {
        console.log( error );
    } );
            </script>
	<script type="text/javascript">
               ClassicEditor
    .create( document.querySelector( '#editor5' ), {
        toolbar: [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' }
            ]
        }
    } )
     .create( document.querySelector( '#editor5' ) )
    .catch( error => {
        console.log( error );
    } );
            </script>
</body>

</html>
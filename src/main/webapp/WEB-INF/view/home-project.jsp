<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Information</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.input{
	border: none;
    background: white;
	height: 20px;
	}
	.input {
	border: none;
	background: none;
	height: 20px;
}
.New1 {
	background: white;
}
.New2 {
	background: #CD853F;
}
.Done {
	background: #FFD700;
}
.In-progress {
	background: #00FFFF;
}
.Canceled {
	background: #A52A2A;
}
</style>
</head>
<body>
<div>
	<button type="button" onclick="window.location.href='<spring:url value="/project/createProject/" />' ">Create</button>
</div>
	<table class="table">
		<tr>
			<th>ID Project</th>
			<th>Name</th>
			<th>Status</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Owner</th>
			<th>Desciption</th>
			<th>Visibility</th>
			<th>Action</th>
		</tr>
	<c:forEach var="project" items="${listInfo}">
		<tr>
			<td>${project.idproject }</td>
			<td>${project.name}</td>
			<td>${project.status }</td>
			<td>${project.startDate }</td>
			<td>${project.endDate }</td>
			<td>${project.owner }</td>
			<td>${project.description }</td>
			<td>${project.visibility }</td>
	</c:forEach>
	</table>
</body>
</html>
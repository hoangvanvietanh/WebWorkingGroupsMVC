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
	<button type="button" onclick="window.location.href='<spring:url value="/inforproject/create/" />' ">Create</button>
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
			<c:if test="${project.status eq 'New' }">
				<form:form action="infoproject/start?email=${project.email }" method="post">
					<input type="hidden" name="email" value="${project.email }">
					<td><button class="input" type="submit">Start</button></td>
				</form:form>
			</c:if>
			<c:if test="${project.status eq 'New'}">
				<form:form action="infoproject/cancel?email=${project.email }" method="post">
					<input type="hidden" name="email" value="${project.email }">
					<td><button class="input" type="submit">Cancel</button>
				</form:form>
			</c:if>
			<c:if test="${project.status eq 'In-progress' }">
				<form:form action="infoproject/end?email=${project.email }" method="post">
					<input type="hidden" name="email" value="${project.email }">
					<td><button class="input" type="submit">End</button></td>
				</form:form>
			</c:if>			
			<c:if test="${project.status eq 'New' or project.status eq 'In-progress' or project.status eq 'Done'or project.status eq 'Canceled'}">
						<form:form action="infoproject/view?email=${project.email }" method="post">
						<input type="hidden" name="email" value="${project.email}">
						<td><button class="input" type="submit">View</button></td>
						</form:form>
					</c:if> 
					<c:if test="${project.status eq 'New'}">
						<form:form action="infoproject/update?email=${project.email }" method="get">
						<input type="hidden" name="email" value="${project.email}">
						<td><button class="input" type="submit">Update</button></td>
						</form:form>
					</c:if> 
					<c:if test="${project.status eq 'New' or project.status eq 'Cancel' or project.status eq 'Done' or project.status eq 'Canceled'}">
						<form:form action="infoproject/delete?email=${project.email }" method="post">
						<input type="hidden" name="email" value="${project.email}">
							<td><button class="input" type="submit">Delete</button></td>
						</form:form>
					</c:if>
	</c:forEach>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<spring:url value='/resources/css/app.css'/>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create</title>

</head>
<body>
	<div class="center">
		<form:form modelAttribute="createPro">
			<form:errors path="*" cssClass="error-box" />
			<div class="input-group">
				<label>ID</label>
				<form:input path="id" />
			</div>
			<div class="input-group">
				<label>Email</label>
				<form:input path="email" />
			</div>
			<div class="input-group">
				<label>Role</label>
				<form:input path="role"  />
			</div>
			<div class="input-group">
				<label>ID Project</label>
				<form:input path="idproject"/>
			</div>
			<form:button name="action" value="save">Save</form:button>
			<button type="button"
				onclick="window.location.href='<spring:url value="/project" />'">Cancel</button>
		</form:form>
	</div>

	<script src="<spring:url value='/resources/js/app.js' />"></script>
</body>
</html>
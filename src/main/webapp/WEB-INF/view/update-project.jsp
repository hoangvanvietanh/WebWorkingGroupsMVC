<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet"
	href="<spring:url value='/resources/css/app.css'/>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Project</title>
<title></title>
</head>
<body>
	<form:form modelAttribute="project" method="post">
		<form:errors path="*" cssClass="error-box"></form:errors>
	
  			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="name">Project name</label>
      				<form:input type="text" class="form-control" path="name"/>
   				</div>
    			<div class="form-group col-md-6">
      				<label for="status">Status</label>
     			 	<form:select path="status" class="form-control">
        				<option selected>New</option>
        				<option>In-progress</option>
        				<option>Cancel</option>
        				<option>Done</option>
      				</form:select>
    			</div>
  			</div>
  			<div class="form-group">
    			<label for="startDate">Start Date</label>
    			<form:input type="type" class="form-control" path="startDate"/>
  			</div>
  			<div class="form-group">
    			<label for="endDate">End Date</label>
    			<form:input type="type" class="form-control" path="endDate"/>
  			</div>
  			<div class="form-row">
    			<div class="form-group col-md-6">
      				<label for="owner">Owner</label>
      				<form:input type="text" class="form-control" path="owner"/>
    			</div>
    			<div class="form-group col-md-4">
      				<label for="description">Description</label>
      				<form:input path="description" class="form-control" type="text"/>
    			</div>
    			
    			<div class="form-group col-md-2">
      				<label for="visibility">Visibility</label>
      				<form:select path="visibility" class="form-control">
      					<option select>Public</option>
      					<option>Private</option>
      				</form:select>
    			</div>
  			</div>
  			
  
  <button type="submit" class="btn btn-primary" onclick="window.location.href='<spring:url href="project/update" />' ">Update</button>
  <button type="button" class="btn btn-primary" onclick="window.location.href='<spring:url href="/project" />'">Cancel</button>

		
		
		
	</form:form>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
	<script src="<spring:url value='/resources/js/app.js' />"></script>
</body>
</html>
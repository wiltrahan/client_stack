<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>

<html>
<head>
	<title>Client Information</title>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>

<body>

	<c:url var="updateLink" value="/client/showFormUpdate">
		<c:param name="clientId" value="${client.id}"/>
	</c:url>
	<c:url var="deleteLink" value="/client/delete">
		<c:param name="clientId" value="${client.id}"/>
	</c:url>
	
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Client Stack</a>
    </div> 
  </div>
</nav>
		
		<div id="container">
			<div id="content">		
				<ul id="client-info-list">
					<li><span class="client-info-header">Name:</span> ${client.firstName} ${client.lastName} </li>
					<li><span class="client-info-header">Phone:</span> ${client.phone}</li>
					<li><span class="client-info-header">Email:</span> ${client.email}</li>
					<li><span class="client-info-header">Last Appointment:</span> <fmt:formatDate value="${client.lastAppt}" type="date" pattern="EEEE, MMMM dd, yyyy"/></li>
					<li><span class="client-info-header">Next Appointment:</span> <fmt:formatDate value="${client.nextAppt}" type="date" pattern="EEEE, MMMM dd, yyyy"/> </li>
					<li><span class="client-info-header">Services:</span> ${client.service}</li>
				</ul>
		
			</div>
			
			<div class="row">
			 <div class="col-sm-3">
			
			<p><a href="${pageContext.request.contextPath}/client/list" class="btn btn-success btn-md custom-btn" role="button">Back</a></p>
			<p><a href="${updateLink}" class="btn btn-warning btn-md custom-btn" role="button">Update</a></p>
			<p><a href="${deleteLink}" class="btn btn-danger btn-md custom-btn" role="button" 
				onclick="if (!(confirm('Are you sure you want to delete this client?'))) return false">Delete
			</a></p>
			</div>
			</div>
		</div>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>



<!doctype html>

<html lang="en">
<head>
	<title>Client Information</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>

<body>

	<c:url var="updateLink" value="/client/showFormUpdate">
		<c:param name="clientId" value="${client.id}"/>
	</c:url>
	<c:url var="deleteLink" value="/client/delete">
		<c:param name="clientId" value="${client.id}"/>
	</c:url>
	
	<nav class="navbar navbar-default custom-nav">
  		<div class="container-fluid">
    		<div class="navbar-header">
        		<a class="navbar-brand" href="${pageContext.request.contextPath}/client/list">Client Stack</a>
    		</div> 
  		</div>
	</nav>
	<div id="wrapper">
		
		<div id="container">
		<div class="card">
  			<div class="card-body">
    			<h5 class="card-title">${client.firstName} ${client.lastName}</h5>
    			<h6 class="card-subtitle mb-2 text-muted">${client.phone}</h6>
    			<h6 class="card-subtitle mb-2 text-muted">${client.email}</h6>
    			<h6 class="card-subtitle mb-2 text-muted">Last Appointment: <fmt:formatDate value="${client.lastAppt}" type="date" pattern="EEEE, MMMM dd, yyyy"/></h6>
    			<h6 class="card-subtitle mb-2 text-muted">Next Appointment: <fmt:formatDate value="${client.nextAppt}" type="date" pattern="EEEE, MMMM dd, yyyy"/></h6>
   				 <p class="card-text">${client.service}</p>
    			 <a href="${pageContext.request.contextPath}/client/list" class="btn btn-outline-secondary custom-btn" role="button">Back To List</a>
    			 <a href="${updateLink}" class="btn btn-outline-secondary custom-btn" role="button">Update Client</a>
    			 <a href="${deleteLink}" class="btn btn-outline-danger custom-btn" role="button" 
					onclick="if (!(confirm('Are you sure you want to delete this client?'))) return false">Delete Client
				</a>
  			</div>
		</div>
			
		</div>
		</div>
		
</body>
</html>
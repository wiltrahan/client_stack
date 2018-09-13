<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>

<html>
<head>
	<title>Client Information</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h2>Client Stack</h2>
		</div>
		
		<div id="container">
			<div id="content">
				
				
					
					<c:url var="updateLink" value="/client/showFormUpdate">
						<c:param name="clientId" value="${client.id}"/>
					</c:url>
					<c:url var="deleteLink" value="/client/delete">
						<c:param name="clientId" value="${client.id}"/>
					</c:url>
					
					
				
				<ul>
					<li>Name: ${client.firstName} ${client.lastName} </li>
					<li>Phone: ${client.phone}</li>
					<li>Email: ${client.email}</li>
					<li>Last Appointment: ${client.lastAppt}</li>
					<li>Next Appointment ${client.nextAppt}</li>
					<li>Services ${client.service}</li>
					<li><a href="${updateLink}">Update</a></li>
					<li><a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this client?'))) return false">Delete</a></li>
				
				</ul>
		
			</div>
			
			<p> <a href="${pageContext.request.contextPath}/client/list">Back To List</a> </p>
		
		</div>
	</div>
</body>
</html>
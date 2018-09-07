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
				
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Formula</th>
						<th>Action</th>
					</tr>
					
					<c:url var="updateLink" value="/client/showFormUpdate">
						<c:param name="clientId" value="${client.id}"/>
					</c:url>
					<c:url var="deleteLink" value="/client/delete">
						<c:param name="clientId" value="${client.id}"/>
					</c:url>
					
					<tr>
						<td> ${client.firstName} </td>
						<td> ${client.lastName} </td>
						<td> ${client.phone} </td>
						<td> ${client.email} </td>
						<td> ${client.formula} </td>
						<td> 
							<a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this client?'))) return false">Delete</a>
						</td>
					</tr>
				</table>
			</div>
			
			<p> <a href="${pageContext.request.contextPath}/client/list">Back To List</a> </p>
		
		</div>
	</div>
	
</body>

</html>
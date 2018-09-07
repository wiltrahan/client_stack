<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
	<title>List Clients</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Client Stack</h2>
		</div>	
			<div id="container">
				<div id="content">
				
					<input type="button" value="Add Client" 
						onclick="window.location.href='showFormForAdd'; return false;"
						class="add-button"/>
					
					<!-- Search box -->
					<form:form action="search" method="POST">
						Search Client: <input type="text" name="theSearchName"/>
						<input type="submit" value="Search" class="add-button"/>
					</form:form>
					
					<table>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Phone</th>
							<th>Action</th>
						</tr>
						<c:forEach var="tempClient" items="${clients}">
						
						<c:url var="clientLink" value="/client/showClient">
							<c:param name="clientId" value="${tempClient.id }"/>
						</c:url>
						
						<c:url var="updateLink" value="/client/showFormUpdate">
							<c:param name="clientId" value="${tempClient.id }"/>
						</c:url>
						
						<c:url var="deleteLink" value="/client/delete">
							<c:param name="clientId" value="${tempClient.id }"/>
						</c:url>
							<tr>
								<td> ${tempClient.firstName} </td>
								<td> ${tempClient.lastName} </td>
								<td> ${tempClient.phone} </td>
								<td> 
									<a href="${clientLink}">More</a>
									|
									<a href="${updateLink}">Update</a>
									|
									<a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this client?'))) return false">Delete</a>
								</td>
							</tr>
						</c:forEach>	
					</table>
				</div>
					
			</div>
		</div>
</body>
</html>
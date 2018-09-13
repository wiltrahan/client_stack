<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
	<title>List Clients</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Client Stack</a>
			</div>
				<form:form class="navbar-form navbar-right" action="search" method="POST">
					<div class="form-group">
						<input type="text" name="theSearchName" class="form-control" placeholder="Search"/>
					</div>
					<input type="submit" value="Search" class="btn btn-default"/>
					<input type="button" value="Add New Client" 
						onclick="window.location.href='showFormForAdd'; return false;" class="btn btn-default"/>
				</form:form>
				
		</div>
	</nav>

	<div id="wrapper">
			
			<div class="container" >
				<div id="content" class="row">
				
					<table>
						<tr>
							<th class="text-center">First Name</th>
							<th class="text-center">Last Name</th>
							<th class="text-center">Phone</th>
							<th class="text-center">Action</th>
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
									
								</td>
							</tr>
						</c:forEach>	
					</table>
				</div>		
			</div>
		</div>
</body>
</html>
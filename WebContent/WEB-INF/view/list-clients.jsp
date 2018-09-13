<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
	<title>List Clients</title>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<h2 class="text-center">Client Stack</h2>
			
			<!-- Search box -->
			<div class="form-group">
					<form:form action="search" method="POST" class="navbar-form navbar-left">
						<input type="text" name="theSearchName" class="form-control" placeholder="Search"/>
						<input type="submit" value="Search" class="btn btn-default"/>
					</form:form>
			</div>
			
			<input type="button" class="btn btn-default" value="Add Client" 
						onclick="window.location.href='showFormForAdd'; return false;"
						class="add-button"/>
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
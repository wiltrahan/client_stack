<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>

<html lang="en">
<head>
	<title>List Clients</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>

	<nav class="navbar navbar-default custom-nav">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Client Stack</a>
			</div>
				<form:form class="form-inline my-2 my-lg-0" action="search" method="POST">
					
						<input type="text" name="theSearchName" class="form-control mr-sm-2" placeholder="Search"/>
						<!-- <input type="submit" value="Search" class="btn btn-default"/> -->
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					
				</form:form>
				<!-- <input type="button" value="Add Client" 
						onclick="window.location.href='showFormForAdd'; return false;" class="btn btn-default"/> -->
				<button class="btn btn-outline-success my-2 my-sm-0" onclick="window.location.href='showFormForAdd'; return false;">Add New Client</button>
				
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
						class="add-button"
					/>
					
					<table>
						<tr>
							<th>Last Name</th>
							<th>First Name</th>
							<th>Phone</th>
							<th>Email</th>
							<th>Formula</th>
						</tr>
						<c:forEach var="tempClient" items="${clients}">
							<tr>
								<td> ${tempClient.lastName} </td>
								<td> ${tempClient.firstName} </td>
								<td> ${tempClient.phone} </td>
								<td> ${tempClient.email} </td>
								<td> ${tempClient.formula} </td>
							</tr>
						</c:forEach>	
					</table>
				</div>
			</div>
		</div>
</body>
</html>
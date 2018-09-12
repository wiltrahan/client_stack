<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
<head>
	<title>Save Client</title>
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">
		  
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-client-style.css">
		  
		  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/myjQuery.js"/></script>
	
		

</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Client Stack</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save Client</h3>
		
		<form:form action="saveClient" modelAttribute="client" method="post">
		
		<!-- associate this data with customer id -->
		<form:hidden path="id"/>
		
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName"/></td>
					</tr>
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName"/></td>
					</tr>
					<tr>
						<td><label>Phone:</label></td>
						<td><form:input path="phone"/></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email"/></td>
					</tr>
					<tr>
						<td><label>Service:</label></td>
						<td><form:textarea path="service" id="textarea" rows="7" cols="34" maxlength="255"/></td>
						<td id="textarea_feedback"></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<div style="clear; both;"></div>
		
		<p> <a href="${pageContext.request.contextPath}/client/list">Back To List</a> </p>		
	</div>

</body>
</html>
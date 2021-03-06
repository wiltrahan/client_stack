<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>

<html lang="en">
<head>
	<title>Save Client</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		  
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-client-style.css">
	
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
   	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/myjQuery.js"/></script>
	
		

</head>

<body>
	
	<nav class="navbar navbar-default custom-nav">
  		<div class="container-fluid">
    		<div class="navbar-header">
        		<a class="navbar-brand" href="${pageContext.request.contextPath}/client/list">Client Stack</a>
    		</div> 
  		</div>
	</nav>
	
	<div id="container">
		<h3>Client Information</h3>
		
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
						<td><label>Last Appointment (Click for calendar):</label></td>
						<td><form:input path="lastAppt" type="text" id="last_appt"/></td>
					</tr>
					
					<tr>
						<td><label>Next Appointment (Click for calendar):</label></td>
						<td><form:input path="nextAppt" type="text" id="next_appt"/></td>
					</tr>
					<tr>
						<td><label>Start Time: </label></td>
						<td><form:input path="startTime" type="text" class="timepicker"/></td>
					</tr>
					<tr>
						<td><label>End Time: </label></td>
						<td><form:input path="endTime" type="text" class="timepicker"/></td>
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

	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
	
</body>
</html>
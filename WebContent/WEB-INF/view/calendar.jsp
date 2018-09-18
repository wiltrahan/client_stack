<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>

<html lang="en">
<head>
	<title>Calendar</title>

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/fullcalendar.css">
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">
		  
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" 
			src="${pageContext.request.contextPath}/resources/js/moment.min.js"/></script>
	<script type="text/javascript" 
			src="${pageContext.request.contextPath}/resources/js/fullcalendar.js"/></script>
	<script type="text/javascript" 
			src="${pageContext.request.contextPath}/resources/js/myjQuery.js"/></script>
		
	

</head>


<body>

	<div id="calendar"></div>
	
	<%-- <c:forEach var="tempClient" items="${clients}">
	
	
	</c:forEach> --%>
	
	
	<script>
	
		$(document).ready(function() {
			
			$('#calendar').fullCalendar({
				
				events: [
					<c:forEach var="tempClient" items="${clients}">
	    	    	{
	    	      		title  : '${tempClient.firstName} ${tempClient.lastName}',
	    	      		start  : '${tempClient.nextAppt}'
	    	    	},
	    	    	</c:forEach>
	    	    	]
				
	    	});	
			
		});
		
	</script>

</body>

</html>
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
	<nav class="navbar navbar-default custom-nav">
  		<div class="container-fluid">
    		<div class="navbar-header">
        		<a class="navbar-brand" href="${pageContext.request.contextPath}/client/list">Client Stack</a>
    		</div>
    		<a href="${pageContext.request.contextPath}/client/list" class="btn btn-outline-success add-new-btn my-2 my-sm-0" role="button">Back To List</a>
  		</div>
	</nav>
	
	<div id="wrapper">
		<div id="calendar"></div>
	</div>
	<script>
	
		$(document).ready(function() {
			
			$('#calendar').fullCalendar({
				
				defaultView : 'basicWeek',
				 
				events: [
					<c:forEach var="tempClient" items="${clients}">
	    	    	{
	    	    		id 	   : '${tempClient.id}',
	    	      		title  : '${tempClient.firstName} ${tempClient.lastName}',
	    	      		start  : '${tempClient.nextAppt}',
	    	      		description : '${tempClient.startTime} -- ${tempClient.endTime}',
	    	      		url: '${pageContext.request.contextPath}/client/showClient?clientId=' + '${tempClient.id}'
	    	      	},
	    	    	</c:forEach>
	    	    ],
	    	    eventRender: function(event, element) { 
	                element.find('.fc-title').append("<br/>" + event.description); 
	            } 
	    	});	
			
		});
		
	</script>

</body>

</html>
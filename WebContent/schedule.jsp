<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Schedule</title>
	</head>
	<body>
		
		<c:forEach var="schedule" items="${schedule}">
			${schedule.scheduleId}
			${schedule.docName}
			${schedule.docRegNum}
			${schedule.date}
			${schedule.startTime}
			${schedule.endTime}
			${schedule.location}
			${schedule.specialization}
			<br>
		</c:forEach>
		
	</body>
</html>
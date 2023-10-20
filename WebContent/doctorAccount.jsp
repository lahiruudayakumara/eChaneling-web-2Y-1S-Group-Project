<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Doctor Account</title>
</head>
<body>
	<h1> Welcome to eChanneling</h1>
	
	<c:forEach var="doctor" items="${spDocDetails}">
		${doctor.userId}
		${doctor.name}
		${doctor.email}
		${doctor.phoneNum}
		${doctor.work}
		${doctor.specialization}
	</c:forEach>
	
	<br>
	
	<form action="ReadScheduleServlet" method="post">
			<input type="submit" name="view" value="view schedules">
	</form>
	
</body>
</html>
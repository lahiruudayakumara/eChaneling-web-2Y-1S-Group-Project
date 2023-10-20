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
		<p> Doctor ID : ${doctor.userId}</p>
		<p> Doctor Name : ${doctor.name}</p>
		<p> Email : ${doctor.email}</p>
		<p>	Contact Number : ${doctor.phoneNum}</p>
		<p> Work Place : ${doctor.work}</p>
		<p> SpecialIzation : ${doctor.specialization}</p>
	</c:forEach>
	
	<br>
	
	<form action="ReadScheduleServlet" method="post">
		<p> Doctor Register Number : <input type="text" name="doctorRegNum"> </p>
		<input type="submit" name="view" value="view schedules">
	</form>
	
</body>
</html>
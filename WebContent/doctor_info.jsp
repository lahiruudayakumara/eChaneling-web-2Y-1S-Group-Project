<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div style="with: 80%;">
		<div>
			<h1>Doctors List</h1>
			<a href="log">Home</a>
		</div>
	
	
	        <c:forEach var="doctor" items="${doctorList}">
	            <c:set var="n" value="${doctor.displayInfo()}" />
	            <c:set var="n" value="${doctor.displayName(Name)}" />
	            <c:set var="fName" value="${doctor.fullName}" />
	            <p>${doctor.displayName(Name)}</p>
	            <p>${doctor.displayInfo()}</p>
	        </c:forEach>

	
	</div>
	
	
</body>
</html>
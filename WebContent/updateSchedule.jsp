<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Update Schedule</title>
	</head>
<body>
	<%	
		String id = request.getParameter("id");
		String docName = request.getParameter("docName");
		String docRegNum = request.getParameter("docRegNum");
		String date = request.getParameter("date");
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		String location = request.getParameter("location");
		String specialization = request.getParameter("specialization");
		String docCharge = request.getParameter("docCharge");
		String availability = request.getParameter("availability");
	%>

	<form action="UpdateScheduleServlet" method="post">
		<label for="id"> Schedule Id </label>
		<input type="text" name="id" id="id" value="<%= id %>" readonly>
		<br>
		
		<label for="docName"> Doctor Name </label>
		<input type="text" name="docName" id="docName" value="<%= docName %>" readonly>
		<br>

		<label for="docRegNum"> Doctor Register Number </label>
		<input type="text" name="docRegNum" id="docRegNum" value="<%= docRegNum %>" readonly>
		<br>

		<label for="date"> Date </label>
		<input type="date" name="date" id="date" value="<%= date %>">
		<br>

		<label for="startTime"> Start Time </label>
		<input type="time" name="startTime" id="startTime" value="<%= startTime %>">
		<br>

		<label for="endTime"> End Time </label>
		<input type="time" name="endTime" id="endTime" value="<%= endTime %>">
		<br>

		<label for="location"> Location </label>
		<input type="text" name="location" id="location" value="<%= location %>">
		<br>
		
		<label for="specialization"> Specialization </label>
		<input type="text" name="specialization" id="specialization" value="<%= specialization %>">
		<br>
		
		<label for="docCharge"> Doctor's Fee </label>
		<input type="number" name="docCharge" id="docCharge" value="<%= docCharge %>">
		<br>
		
		<label for="availability"> Availability </label>
		<input type="text" name="availability" id="availability" value="<%= availability %>">
		<br>
		
		<input type="submit" name="update" value="update">	
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create a schedule</title>
</head>
<body>
<form action="addSchedule" method="post">
		<label for="docName"> Doctor Name </label>
		<input type="text" name="docName" id="docName" placeholder="dushan" required>
		<br>

		<label for="docRegNum"> Doctor Register Number </label>
		<input type="text" name="docRegNum" id="docRegNum" placeholder="dushan123" required>
		<br>

		<label for="date"> Date </label>
		<input type="date" name="date" id="date">
		<br>

		<label for="startTime"> Start Time </label>
		<input type="time" name="startTime" id="startTime">
		<br>

		<label for="endTime"> End Time </label>
		<input type="time" name="endTime" id="endTime">
		<br>

		<label for="location"> Location </label>
		<input type="text" name="location" id="location" placeholder="Asiri hospital" required>
		<br>
		
		<label for="specialization"> specialization </label>
		<input type="text" name="specialization" id="specialization" placeholder="eye" required>
		<br>

		<input type="submit" name="submit" value="Create">	
	</form>

</body>
</html>
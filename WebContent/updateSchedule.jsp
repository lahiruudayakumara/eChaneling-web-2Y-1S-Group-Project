<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Update Schedule</title>
		<link rel="stylesheet" href="css/scheduleStyle.css">
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

	<form action="UpdateScheduleServlet" method="post" onsubmit="return validate()" style="margin-top: 40px; margin-bottom: 40px">
		<div style="width: 48%; float: left; text-align: left;">
			<label for="id"> Schedule Id </label>
			<input type="text" name="id" id="id" value="<%= id %>" readonly>
			
			<label for="docName"> Doctor Name </label>
			<input type="text" name="docName" id="docName" value="<%= docName %>" readonly>
			
			<label for="docRegNum"> Doctor Register Number </label>
			<input type="text" name="docRegNum" id="docRegNum" value="<%= docRegNum %>" readonly>
			
			<label for="date"> Date </label>
			<input type="date" name="date" id="date" value="<%= date %>">
	
			<label for="startTime"> Start Time </label>
			<input type="time" name="startTime" id="startTime" value="<%= startTime %>">
		</div>
		
		<div style="width: 48%; float: right; text-align: left;">
			<label for="endTime"> End Time </label>
			<input type="time" name="endTime" id="endTime" value="<%= endTime %>">
	
			<label for="location"> Location </label>
			<input type="text" name="location" id="location" value="<%= location %>">
			
			<label for="specialization"> Specialization </label>
			<input type="text" name="specialization" id="specialization" value="<%= specialization %>">
			
			<label for="docCharge"> Doctor's Fee </label>
			<input type="number" name="docCharge" id="docCharge" value="<%= docCharge %>">
			
			<label for="availability"> Availability </label>
			<input type="text" name="availability" id="availability" value="<%= availability %>">
		</div>
		
		<div style="clear: both;"></div>
		
		<input type="submit" name="update" value="update">	
	</form>
		
	<script type="text/javascript">
		function validate(){
			
			var x = document.getElementById("docCharge").value;
			var y = document.getElementById("startTime").value;
			var z = document.getElementById("endTime").value;
	
			if (x > 5000) {
				alert("Can only Charge up to Rs.5000 only");
				
				return false;
			}
			
			if (y >= z) {
				alert("End time must be later than start time.");
				
				return false;
			}
			
			
			return true;
		}
	</script>
</body>
</html>
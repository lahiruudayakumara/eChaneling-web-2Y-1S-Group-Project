<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Create a schedule</title>
	<link rel="stylesheet" href="css/scheduleStyle.css">
</head>
<body>
	<body>
    <body>
    <form action="addSchedule" method="post" onsubmit="return validate()">

        <div style="width: 48%; float: left; text-align: left;">
            <label for="docName"> Doctor Name </label>
            <input type="text" name="docName" id="docName" placeholder="dushan" required>
            
            <label for="docRegNum"> Doctor Register Number </label>
            <input type="text" name="docRegNum" id="docRegNum" placeholder="dushan123" required">
            
            <label for="location"> Location </label>
            <input type="text" name="location" id="location" placeholder="Asiri hospital" required>
            
            <label for="specialization"> Specialization </label>
            <input type="text" name="specialization" id="specialization" placeholder="eye" required>
        </div>

        <div style="width: 48%; float: right; text-align: left;">
        	<label for="date"> Date </label>
            <input type="date" name="date" id="date" required>
        
        	<label for="startTime"> Start Time </label>
            <input type="time" name="startTime" id="startTime" required>
        	
            <label for="endTime"> End Time </label>
            <input type="time" name="endTime" id="endTime" required>
            
            <label for="docCharge"> Doctor's Fee </label>
            <input type="text" name="docCharge" id="docCharge" placeholder="1000" required>
        </div>
        
        <input type="hidden" name="availability" id="availability" value="Available">
        
        <div style="clear: both;"></div> <!-- Clear floats to prevent overlapping -->
        
        <div>
            <input type="submit" name="submit" value="Create">
        </div>
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
				
				var startTime = document.getElementById("startTime").value;
				var endTime = document.getElementById("endTime").value;

			    // Parse the startTime and string as a Date object
			    var parsedStartTime = new Date("2000-01-01 " + startTime);
			    var parsedEndTime = new Date("2000-01-01 " + endTime);

			    // Define the start and end time as Date objects
			    var validStartTime = new Date("2000-01-01 09:00");
			    var validEndTime = new Date("2000-01-01 21:00");

			    if (parsedStartTime < validStartTime || parsedStartTime > validEndTime) {
			        alert("Invalid Time. Time should be between 09:00 and 21:00.");
			        return false;
			    }
			    
			    if (parsedEndTime < validStartTime || parsedEndTime > validEndTime) {
			        alert("Invalid Time. Time should be between 09:00 and 21:00.");
			        return false;
			    }
			    
				return true;
			}
			
	</script>
	
</body>
</html>
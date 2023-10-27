<%@ page import="com.doctor.Schedule" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Schedule</title>
		<link rel="stylesheet" href="./css/admin.css" />
		<style type="text/css">
			body{
				background:rgba(0, 0, 0, 0.5)url('img/logo.jpg') no-repeat center fixed;
				background-size: cover;
				background-blend-mode: darken;
			}
			.table{
				font-family: Arial, Helvetica, sans-serif;
				border-collapse: collapse;
				width: 100%;
			}
			.table td, .table th{
				border: 1px solid #ddd;
  				padding: 8px;
  				text-align: center;
			}
			
			.table tr:nth-child(even){
				background-color: #f2f2f2;
			}
			
			.table tr:nth-child(odd){
				color: white;
			}

			.table tr:hover {
				background-color: #ddd;
				color: black;
			}
			
			.table th {
				 padding-top: 12px;
				 padding-bottom: 12px;
				 background-color: #04AA6D;
				 color: white;
			}
			.search-bar {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 60px;
	        }
	
	        /* Style the select dropdown */
	        select {
	            padding: 10px;
	            border: 1px solid #ccc;
	            border-radius: 5px;
	            font-size: 16px;
	            margin-right: 5px;
	        }
	
	        /* Style the text input fields */
	        input[type="text"] {
	            flex: 1; /* Take up the remaining space */
	            padding: 10px;
	            border: 1px solid #ccc;
	            border-radius: 5px;
	            font-size: 16px;
	            margin-right: 5px;
	        }
	
	        /* Style the submit button */
	        input[type="submit"] {
	            padding: 10px 20px;
	            background-color: #007bff;
	            color: #fff;
	            border: none;
	            border-radius: 5px;
	            font-size: 16px;
	            cursor: pointer;
	        }
	        
			.update-button {
			  background-color: #008000;
			  color: white;
			  border: none;
			  padding: 10px;
			  text-decoration: none;
			  cursor: pointer;
			}
			
			.delete-button {
			  background-color: #f90808b0;
			  color: white;
			  border: none;
			  padding: 10px;
			  text-decoration: none;
			  cursor: pointer;
			}
	        
		</style>
	</head>
	<body>
		<header>
		<div class="header">
			<div class="nav">
				<div id="logo">
					<h3><a>Doctor Dashboard</a></h3>
				</div>
				<ul>
					<li><a href="doctorLogOut.jsp">Logout</a>
				</ul>
			</div>
		</div>
		</header>
		
		<form class="search-bar" action="SearchServlet" method="post">
        <input type="hidden" name="docRegNumber" value="<%= session.getAttribute("doctorRegNumber") %>">
        <select name="option">
            <option value="date"> Date </option>
            <option value="fee"> Doctor Fee </option>
            <option value="time"> Time </option>
        </select>
        <input type="text" name="value" placeholder="Search... (YY-MM-DD | Rs.1000)">
        <input type="submit" value="Search">
    </form>
		<br>
			
		<table class="table">
			<tr>
				<th> Id </th>
				<th> Doctor Name </th>
				<th> Doctor Register Number </th>
				<th> Date </th>
				<th> Start Time </th>
				<th> End Time </th>
				<th> Location </th>
				<th> Specialization </th>
				<th> Doctor Fee </th>
				<th> Availability </th>
			</tr>
			<c:forEach var="schedule" items="${schedule}">
			
			<c:set var="id" value="${schedule.scheduleId}"/>
			<c:set var="docName" value="${schedule.docName}"/>
			<c:set var="docRegNum" value="${schedule.docRegNum}"/>
			<c:set var="date" value="${schedule.date}"/>
			<c:set var="startTime" value="${schedule.startTime}"/>
			<c:set var="endTime" value="${schedule.endTime}"/>
			<c:set var="location" value="${schedule.location}"/>
			<c:set var="specialization" value="${schedule.specialization}"/>
			<c:set var="docCharge" value="${schedule.docCharge}"/>
			<c:set var="availability" value="${schedule.availability}"/>
			
			<tr>
				<td> ${schedule.scheduleId} </td>
				<td> ${schedule.docName} </td>
				<td> ${schedule.docRegNum} </td>
				<td> ${schedule.date} </td>
				<td> ${schedule.startTime} </td>
				<td> ${schedule.endTime} </td>
				<td> ${schedule.location} </td>
				<td> ${schedule.specialization} </td>
				<td> ${schedule.docCharge} </td>
				<td> ${schedule.availability} </td>
			
			<c:url value="updateSchedule.jsp" var="schUpdate">
				<c:param name="id" value="${id}"/>
				<c:param name="docName" value="${docName}"/>
				<c:param name="docRegNum" value="${docRegNum}"/>
				<c:param name="date" value="${date}"/>
				<c:param name="startTime" value="${startTime}"/>
				<c:param name="endTime" value="${endTime}"/>
				<c:param name="location" value="${location}"/>
				<c:param name="specialization" value="${specialization}"/>
				<c:param name="docCharge" value="${docCharge}"/>
				<c:param name="availability" value="${availability}"/>
			</c:url>
			
				<td>	
					<a href="${schUpdate}">
					<input type="button" name="update" value="Update" class="update-button">
					</a>
				</td>
				
				<td> 
					<form action="DeleteScheduleServlet" method="post" onclick="return deleteConfirmation()">
					<input type="hidden" name="docRegNum" value="${schedule.docRegNum}">
					<button id="delete" class="delete-button" name="delete" value="${schedule.scheduleId}"> Delete </button>
					</form>
				</td>
			</tr>
			</c:forEach>
		</table>
		
		<script>
	    // Function to display the confirmation dialog
	    function deleteConfirmation() {
	        if (confirm("Are you sure you want to delete this item?")) {
	            // User clicked "OK," continue with form submission
	            return true;
	        } else {
	            // User clicked "Cancel" or closed the dialog, prevent form submission
	            return false;
	        }
	    }
		</script>
		
	</body>
</html>
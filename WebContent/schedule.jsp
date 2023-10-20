<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Schedule</title>
		<style type="text/css">
			body{
				background: url('img/logo.jpg') no-repeat center fixed;
				background-size: cover;
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
			
			.table tr:nth-child(even){background-color: #f2f2f2;}

			.table tr:hover {background-color: #ddd;}
			
			.table th {
				 padding-top: 12px;
				 padding-bottom: 12px;
				 background-color: #04AA6D;
				 color: white;
			}
		</style>
	</head>
	<body>
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
					<input type="button" name="update" value="Update">
					</a>
				</td>
				
				<td> 
					<form action="DeleteScheduleServlet" method="post">
					<input type="hidden" name="docRegNum" value="${schedule.docRegNum}">
					<button name="delete" value="${schedule.scheduleId}"> Delete </button>
					</form>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>
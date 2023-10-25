<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Appoinment</title>
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
	<table class="table">
		<tr>
			<th>Ref_No</th>
			<th>Patient Name</th>
			<th>Patient Gender</th>
			<th>Patient Age</th>
			<th>Patient Contact Number</th>
			<th>Appoinment Date</th>
			<th>Appoinment Time</th>
		</tr>
			<c:forEach var="appoinment" items="${appoinment}">
			<tr>
				<td>${appoinment.refNo}</td>
				<td>${appoinment.patient_name}</td>
				<td>${appoinment.patient_gender}</td>
				<td>${appoinment.patient_age}</td>
				<td>${appoinment.patient_phone}</td>
				<td>${appoinment.date}</td>
				<td>${appoinment.time}</td>
			</tr>
			</c:forEach>
	</table>
</body>
</html>
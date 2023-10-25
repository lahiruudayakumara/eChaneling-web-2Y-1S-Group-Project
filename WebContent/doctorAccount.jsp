<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.doctor.Doctor" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Doctor Account</title>
	<link rel="stylesheet" href="./css/doctorDashboard.css" />
</head>
<body>
	
	<div id="container">
        <div id="sidebar">
        	<div id="logo">
                <img src="img/logo.jpg" alt="E-channeling Logo">
            </div>
            <p><h2>Hello</h2></p>
            <p><h2>Welcome to </h2></p>
            <p><h2> E-Channeling</h2></p>
            <ul>
                <li><a style="width: 100%;" href="doctorLogOut.jsp">Log Out</a></li>
            </ul>
        </div>
        <div id="content">
            <div id="header">
                <h1>Doctor Dashboard</h1>
            </div>
            <div id="widgets">
                <div class="widget">
                	<h2>Doctor Details</h2>
                	<table>
						<c:forEach var="doctor" items="${spDocDetails}">
						<tr>
                            <td>Doctor ID</td>
                            <td>${doctor.userId}</td>
                        </tr>
                        <tr>
                            <td>Doctor Name</td>
                            <td>${doctor.name}</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>${doctor.email}</td>
                        </tr>
                        <tr>
                            <td>Contact Number</td>
                            <td>${doctor.phoneNum}</td>
                        </tr>
                        <tr>
                            <td>Work Place</td>
                            <td>${doctor.work}</td>
                        </tr>
                        <tr>
                            <td>Specialization</td>
                            <td>${doctor.specialization}</td>
                        </tr>
						</c:forEach>
					</table>
				</div>
				<div class="widget">
                    <h2>Doctor Options</h2>
                    <ul style="color= black;">
	                    <li><a href="viewSchedule.jsp">View Schedules</a></li>
	                	<li><a href="doctorAddSchedule.jsp">Create Schedules</a></li>
	                </ul>
	                
	                <form action="ReadAppoinmentServlet" method="post">
	                	<input type="submit" value="Appoinments" class="appoinments">
	                </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
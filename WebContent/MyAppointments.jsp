<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Objects" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Appointments</title>
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
	<style>
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
body {
    font-family: 'Poppins', sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    background-image: url('img/white-concrete-wall.jpg');
    background-size: cover;
    
}

.title{
	margin: 30px;
    padding: 20px;
    padding-top: 10px;
    color: #333;
    text-align:center;
}

.msg-container {
    margin: 30px;
    padding: 20px;
    padding-top: 10px;
    background-color: rgb(0, 123, 255, 0.2);
    border: 2px solid #007bff;
    border-radius: 10px;
    color: #333;
}

#msg-info {
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
}

table {
    width: 100%;
    border-collapse: separate; /* Use separate instead of collapse */
    margin-top: 20px;
    border-radius: 10px;
    overflow: hidden;
    border: 2px solid rgb(0, 123, 255);
}

th, td {
    padding: 10px;
    text-align: left;
    border-collapse:separate;
    border: 1px solid  rgba(0, 123, 255, 0.25);
    border-radius: 100px;
    overflow: hidden;
}

th {
    background-color: #007bff;
    color: #fff;
}
/* Add this CSS to center the button container and center-align the buttons */

.button-container {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top:20px;
}

.action-button {
    padding: 10px 20px;
    margin: 0 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    display: inline-block;
    transition: background-color 0.3s;
    color: #fff;
}

.update-button {
    background-color: #4CAF50; /* Green color */
}

.delete-button {
    background-color: #FF5733; /* Red color */
}

.back-button {
    background-color: #007bff;
}

.action-button:hover {
    background-color: #0056b3;
}


</style>
</head>

<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Objects" %>

<%
	HttpSession session1 = request.getSession(false);
    String userName = (session1 != null) ? (String) session1.getAttribute("UserName") : null;
%>

<body style="background-image: url('img/white-concrete-wall.jpg');
background-size: cover;
background-repeat: no-repeat;">
   
    <header class="header">
        <div class="hcontainer">
            <nav class="navbar">
               <div class="logo"><a href="#"><img src="img/logo.jpg" alt="logo"></a></div>
               <ul class="nav-links">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn">Services</a>
                        <div class="dropdown-content">
                            <a href="#">Book an Appointment</a>
                            <a href="#">Order Medicine</a>
                        </div>
                    </li>
                    <li><a href="blog.jsp">Blog</a></li>
                    <li><a href="about_us.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
                <div class="nav-buttons">
                    <% if (userName != null) { %>
                    <a href="user_info.jsp" class="sbutton"><%=userName %></a>
                    <a href="logout.jsp" class="sbutton">Logout</a>
                <% } else { %>
                    <a href="register.jsp" class="sbutton">Sign Up</a>
                    <a href="login.jsp" class="sbutton">Sign In</a>
                <% } %>
                </div>
            </nav>
        </div>
    </header>
    
    <div class=title><h2>My Appointments</h2></div>

<c:forEach var="appData" items="${appDetails}">


	<c:set var="refId" value="${appData.getReferenceID()}"/>
	<c:set var="appId" value="${appData.getAppointmentID()}"/>
	<c:set var="uName" value="${appData.getUserName()}"/>
	<c:set var="docName" value="${appData.getDoctorName()}"/>
	<c:set var="docSpec" value="${appData.getSpecialization()}"/>
	<c:set var="hosName" value="${appData.getHospitalName()}"/>
	<c:set var="date" value="${appData.getDate()}"/>
	<c:set var="time" value="${appData.getTime()}"/>
	<c:set var="patName" value="${appData.geteName()}"/>
	<c:set var="patNic" value="${appData.getNic()}"/>
	<c:set var="patGender" value="${appData.getGender()}"/>
	<c:set var="patAge" value="${appData.getAge()}"/>
	<c:set var="patEmail" value="${appData.getEmail()}"/>
	<c:set var="patPhone" value="${appData.getPhone()}"/>
	<c:set var="patAddress" value="${appData.getAddress()}"/>
	
		<c:url value="UpdateContactDetails.jsp" var="appupdate">
		<c:param name="refId" value="${appData.getReferenceID()}"></c:param>
		<c:param name="patEmail" value="${appData.getEmail()}"></c:param>
		<c:param name="patPhone" value="${appData.getPhone()}"></c:param>
		<c:param name="patAddress" value="${appData.getAddress()}"></c:param>
		</c:url>
		
		<c:url value="DeleteAppDetails.jsp" var="appdelete">
		<c:param name="refId" value="${appData.getReferenceID()}"></c:param>
		<c:param name="appId" value="${appData.getAppointmentID()}"></c:param>
		<c:param name="patName" value="${appData.geteName()}"></c:param>
		<c:param name="patNic"  value="${appData.getNic()}"></c:param>
		<c:param name="docName" value="${appData.getDoctorName()}"/>
		<c:param name="docSpec" value="${appData.getSpecialization()}"/>
		<c:param name="hosName" value="${appData.getHospitalName()}"/>
		<c:param name="date" value="${appData.getDate()}"/>
		<c:param name="time" value="${appData.getTime()}"/>
		</c:url>
		
	    <div class="msg-container">
        <div id="msg-info">
            <table>
                <tr>
                    <td>Reference ID</td>
                    <td>${appData.getReferenceID()}</td>
                </tr>
                <tr>
                    <td>Appointment No</td>
                    <td>${appData.getAppointmentID()}</td>
                </tr>
                <tr>
                    <td>Patient's Name</td>
                    <td>${appData.geteName()}</td>
                </tr>
                <tr>
                    <td>Doctor's Name</td>
                    <td>${appData.getDoctorName()}</td>
                </tr>
                <tr>
                    <td>Doctor's Specialization</td>
                    <td>${appData.getSpecialization()}</td>
                </tr>
                <tr>
                    <td>Hospital Name</td>
                    <td>${appData.getHospitalName()}</td>
                </tr>
                <tr>
                    <td>Session Date</td>
                    <td>${appData.getDate()}</td>
                </tr>
                <tr>
                    <td>Session Time</td>
                    <td>${appData.getTime()}</td>
                </tr>
                <tr>
                    <td>Patient's Email</td>
                    <td>${appData.getEmail()}</td>
                </tr>
                <tr>
                    <td>Patient's Phone</td>
                    <td>${appData.getPhone()}</td>
                </tr>
                <tr>
                    <td>Patient's Address</td>
                    <td>${appData.getAddress()}</td>
                </tr>
            </table>
        </div>
        <div class="msgUD">
		    <div class="button-container">
		    	<a href="${appupdate}"><button class="action-button update-button" type="submit">Update contact-Info</button></a>
		        <a href="${appdelete}"><button class="action-button delete-button" type="Submit">Cancel</button></a>
		        <a href="index.jsp"><button class="action-button back-button">Back</button></a>
		    </div>
		</div>
    </div>


</c:forEach>
<footer class="footer">
        <div class="fcontainer">
            <div class="row">
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Privacy Policies</a></li>
                        <li><a href="#">T & C</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>               
                <div class="footer-col">
                    <h4>Get Help</h4>
                    <ul>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Live Chat</a></li>
                        <li><a href="#">Refund</a></li>
                    </ul>
                </div>               
 
                <div class="footer-col">
                    <h4>Payment</h4>
                    <div class="payment-links">
                        <a href="#"><i class="fab fa-cc-visa"></i></a>
                        <a href="#"><i class="fab fa-cc-mastercard"></i></a>
                        <a href="#"><i class="fab fa-cc-amex"></i></a>
                        <a href="#"><i class="fab fa-cc-paypal"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
                <div class="copyright"> <p>&copy; 2023 E-Channelling</p>
            <p><a href="#"> By NexTech Visionaries</a></p>
        </div>
    </footer>



</body>
</html>
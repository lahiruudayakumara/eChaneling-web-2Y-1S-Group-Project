<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Objects" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Messages</title>
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
          .msgUD {
            display: flex;
            justify-content: center; /* Center the buttons horizontally */
            margin-top: 10px;
        }

        .msgUD button {
            padding: 10px 30px; /* Increased width */
            margin: 0 10px; /* Gap between buttons */
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .update-button {
            background-color: #4CAF50; /* Green color */
            color: #fff;
        }

        .delete-button {
            background-color: #FF5733; /* Red color */
            color: #fff;
        }

        .msgUD button:hover {
            background-color: #0056b3;
        }
</style>
</head>
<%
	HttpSession session1 = request.getSession(false);
    String userName = (session1 != null) ? (String) session1.getAttribute("UserName") : null;
%>

<body>

<header class="header">
        <div class="hcontainer">
            <nav class="navbar">
               <div class="logo"><a href="#"><img src="img/logo.jpg" alt="logo"></a></div>
               <ul class="nav-links">
                    <li><a href="home.jsp">Home</a></li>
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

<c:forEach var="msg" items="${messages}">

    <div class="msg-container">
        <div id="msg-info">
            <table>
                <tr>
                    <td>Message ID</td>
                    <td> ${msg.msgId }</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td> ${msg.name}</td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td>${msg.email}</td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>${msg.phone}</td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td>${msg.subject}</td>
                </tr>
                <tr>
                    <td>Message</td>
                    <td>${msg.message}</td>
                </tr>
            </table>
        </div>
        <div class = "msgUD">
      		<button class="update-button" type="submit">Update</button>
            <button class="delete-button" type="Submit">Delete</button>
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
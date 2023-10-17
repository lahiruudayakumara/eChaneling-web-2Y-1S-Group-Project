<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Error Page</title>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        @import url('http://fonts.googleapis.com/css?family=Open+Sans:400,700');
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('img/white-concrete-wall.jpg');
            background-size: cover;
        }

        .error-cont1{
            margin: 40px 80px 80px 80px;
            padding: 20px;
            color: #333;
        }

        .error-container{
            margin: auto;
            margin-top:20px;
            padding: 30px;
            max-width: 800px;
            background-color: rgb(0, 123, 255, 0.3);
            border: 2px solid #007bff;
            border-radius: 10px;  
        }

        .error-message {
            color: red;
        }

        .back-to-home{
            margin: auto;
            margin-top: 50px;
            text-align: center;
        }
        .back-to-home button{
            padding: 10px;
            background-color: rgb(0, 123, 255, 0.5);
            cursor: pointer;
            border: 2px solid #007bff;;
            border-radius: 10px;
            width: 150px;
            color: #333;
            font-size: medium;
        }

        .back-to-home button:hover{
            background-color: #007bff;
           scale: 1.05;
        }


    </style>
</head>
<body>
	
	<header class="header">
        <div class="hcontainer">
            <nav class="navbar">
               <div class="logo"><a href="#"><img src="img/logo.jpg" alt="logo"></a></div>
               <ul class="nav-links">
                    <li><a href="#">Hospitals</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn">Services</a>
                        <div class="dropdown-content">
                            <a href="#">Book an Appointment</a>
                            <a href="#">Order Medicine</a>
                        </div>
                    </li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <div class="nav-buttons">
                    <a href="#" class="sbutton">Sign Up</a>
                    <a href="#" class="sbutton">Sign In</a>
                </div>
            </nav>
        </div>
    </header>
    <div class="error-cont1">
    <h2>Search Results</h2>
        <div class="error-container">
            <div class="error-message">
                <h1>Oops!</h1>
                <% String error = (String) request.getAttribute("error"); %>
                <p><%= error %></p>
            </div>
        </div>
        <div class="back-to-home">
            <a href="#"><button>Back to Home</button></a>
        </div>    
    </div>
    </div>
    
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

    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
    
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Info Page</title>
    <link rel="stylesheet" href="css/user_info.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
     <link rel="stylesheet" href="H&F.css">
    <link rel="stylesheet" type="text/css "href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
        <link rel="stylesheet" href="css/header.css">
    

    <style>
        .user-info {
            margin-top: 5px;
            margin-bottom: 50px;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent white background */
            padding: 50px;
            border-radius: 50px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
        }

        .user-photo {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .user-details {
            margin-bottom: 50px;
        }

        .user-details p {
            margin: 10px 0;
            font-size: 16px;
            color: #333;
        }

        .button-group {
            display: flex;
        }

        .logo img {
            width: 80px;
            height: 80px;
        }
    /* Define a keyframes animation called 'buttonAnimation' */
    @keyframes buttonAnimation {
            0% {
                transform: scale(1); /* Initial size */
            }
            50% {
                transform: scale(1.2); /* Scale up to 120% at 50% keyframe */
            }
            100% {
                transform: scale(1); /* Return to original size */
            }
        }

        /* Apply the animation to the buttons when hovered */
        .Settings a:hover {
            animation: buttonAnimation 0.5s ease-in-out; /* Apply the animation with a duration of 0.5 seconds */
        }

        .Settings {
            text-align: center;
            margin-bottom: 20px;
        }

        .Settings a {
            display: inline-block;
            padding: 10px 20px; /* Adjust padding to your liking */
            background-color: #2bec4b;
            border: 1px solid #ffffff; /* Add a border for a beveled look */
            box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.5); /* Add a subtle box shadow for a carved effect */
            text-decoration: none;
            color: #333;
            transition: background-color 0.3s ease; /* Add a smooth transition for background color change */
        }

        .Settings a:hover {
            background-color: #28a9f9; /* Change the background color on hover */
            color: #fff;
        }
        
    </style>
    
    
	

</head>

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
                            <a href="Hospital.jsp">Hospital</a>
                            <a href="#">Doctors</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn">Products</a>
                        <div class="dropdown-content">
                            <a href="#">Foods</a>
                            <a href="#">Medicine</a>
                            <a href="#">Accessories</a>
                            <a href="#">Toys</a>
                        </div>
                    </li>
                    <li><a href="about_us.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact </a></li>
                    <li><a href="">User Info</a></li>
                </ul>
               <div class="logout-button" style="text-align: center; margin-top: 20px;">
    <a href="logout.jsp" onclick="return confirm('Are you sure you want to logout?');" style="display: inline-block; padding: 10px 20px; background-color: red; color: #fff; text-decoration: none; border: none; border-radius: 5px; font-weight: bold; cursor: pointer;">Logout</a>
</div>
            </nav>
        </div>
    </header>
      <header>

    </header>
    

    <div class="user-info">
        <div class="blur-overlay"></div>

        <img src="img/user.jpeg" alt="User Photo" class="user-photo">
        <div class="user-details">
        
        <c:forEach var = "user" items= "${userDetails}">
        
        <c:set var="nic" value="${user.nic }" />
        <c:set var="name" value="${user.name}" />
        <c:set var="email" value="${user.email}" />
        <c:set var="address" value="${user.address}" />
        <c:set var="tpno" value="${user.tpno}" />
        
            <p><strong>Name:</strong>${user.name}</p>
            <p><strong>ID Number:</strong>${user.nic}</p>
            <p><strong>Email:</strong>${user.email}</p>
            <p><strong>Address:</strong>${user.address}</p>
            <p><strong>Telephone Number:</strong>${user.tpno}</p>
            
            </c:forEach>
            
        
            
        </div>
        </div>
        
    
    
</body>
           <center>
           <div class="Settings">
           	<c:url value="update_details.jsp" var="userupdate">
           		<c:param name="nic" value="${nic}"/>
           		<c:param name="name" value="${name}"/>
           		<c:param name="email" value="${email}"/>
           		<c:param name="address" value="${address}"/>
           		<c:param name="tpno" value="${tpno}"/>
           	</c:url>
            <a href="${userupdate }" class="Settings"><center>Account Settings</center></a>
            <a href="yohan gona" class="Settings"><center>My appointment</center></a>
            </div>
           

	
            </center>
            
            
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
            <p><a href="4member.html"> By NexTech Visionaries</a></p>
            
        </div>
        
    </footer>    

</html>


    
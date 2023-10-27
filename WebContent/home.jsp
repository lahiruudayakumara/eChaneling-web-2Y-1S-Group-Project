<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Channelling</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
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
                    <li><a href="home.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropbtn">Services</a>
                        <div class="dropdown-content">
                            <a href="#">Book an Appointment</a>
                            <a href="#">Order Medicine</a>
                             <a href="Hospital.jsp">Hospital</a>
                        </div>
                    </li>
                    <li><a href="blog.jsp">Blog</a></li>
                    <li><a href="about_us.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
                <div class="nav-buttons">
                    <% if (userName != null) { %>
                    <a href="userRetrive" class="sbutton"><%=userName %></a>
                    <a href="logout.jsp" class="sbutton">Logout</a>
                <% } else { %>
                    <a href="register.jsp" class="sbutton">Sign Up</a>
                    <a href="login.jsp" class="sbutton">Sign In</a>
                <% } %>
                </div>
            </nav>
        </div>
    </header>

    <div class="content1" style="background-image: url('img/Writing medical doctor Over blue cardio background.jpg');
    background-size: cover;">
        <div class="content2">
            <section class="search-section">
                <h2>FIND A DOCTOR</h2>
                <form id="doctor-search-form" method="post" action="appointments">
                    <input type="text" name="doctor-name" placeholder="Doctor's Name">
                    <select name="specialization">
                        <option value="" disabled selected>Select a specialization</option> 
                        <option value="Anaesthetist">Anaesthetist</option>
                        <option value="Audiologist">Audiologist</option>
                        <option value="Ayurvedha">Ayurvedha</option>
                        <option value="Cardiologist">Cardiologist</option>
                        <option value="Dentist">Dentist</option>
                        <option value="Diabetologist">Diabetologist</option>
                        <option value="ENT">ENT</option>
                        <option value="Neurologist">Neurologist</option>
                        <option value="Physiotherapy">Physiotherapy</option>
                        <option value="Psychiatrist">Psychiatrist</option>
                    </select>
                    <select name="hospital">
                        <option value="" disabled selected>Select a hospital</option>
                        <option value="Asiri">Asiri Hospital</option>
                        <option value="Hemas">Hemas Hospital</option>
                        <option value="Lanka">Lanka Hospital</option>
                        <option value="Nawaloka">Nawaloka Hospital</option>
                        <option value="Ninewhales">Ninewhales Hospital</option>
                    </select>
                    <input type="date" name="date">
                    <button type="submit">Search</button>
                </form>
            </section>
        </div>
    </div>

<div class="content3">
    <div class="quick-access">
        <h2>Quick Access</h2>
    </div>

    <div class="box-container">
        <!-- Box 1 -->
        <div class="box">
            <a href="page2.html">
                <img src="img/delivery.png" alt="Image 1">
                <h3>Order Medicine</h3>
            </a>
        </div>
        
        
        <!-- Box 2 -->
        <div class="box">
            <a href="page3.html">
                <img src="img/refund.png" alt="Image 2">
                <h3> Claim Refund</h3>
            </a>
        </div>

        <!-- Box 3 -->
        <div class="box">
            <a href="page1.html">
                <img src="img/privacyPolicy.png" alt="Image 3">
                <h3>Privacy Policy</h3>
            </a>
        </div>

        <!-- Box 4 -->
        <div class="box">
            <a href="page4.html">
                <img src="img/terms-and-conditions.png" alt="Image 4">
                <h3>Terms & Conditions</h3>
            </a>
        </div>
    </div>

    <div class="content4">
        <div class="slideshow-container">
            <div class="slide fade">
                <img src="img/Slide1.png" alt="Slide 1">
            </div>
            <div class="slide fade">
                <img src="img/Slide2.png" alt="Slide 2">
            </div>
            <div class="slide fade">
                <img src="img/Slide3.png" alt="Slide 3">
            </div>
            <div class="slide fade">
                <img src="img/slide4.png" alt="Slide 4">
            </div>
            <div class="slide fade">
                <img src="img/slide5.png" alt="Slide 5">
            </div>
            <div class="slide fade">
                <img src="img/slide6.png" alt="Slide 6">
            </div>
        </div>
    </div>

    <script src="js/HomeSlideShow.js"></script>
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
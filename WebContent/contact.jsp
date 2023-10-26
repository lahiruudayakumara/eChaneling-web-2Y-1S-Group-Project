<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="css/contact.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
    <script>
        function validateForm() {
            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;
            var subject = document.getElementById("subject").value;
            var message = document.getElementById("message").value;
            var isValid = true;



            if (name.trim() === "") {
                document.getElementById("nameError").textContent = "Name is required.";
                isValid = false;
            }

            if (email.trim() === "") {
                document.getElementById("emailError").textContent = "Email is required.";
                isValid = false;
            } else if (!validateEmail(email)) {
                document.getElementById("emailError").textContent = "Invalid email format.";
                isValid = false;
            }

            if (phone.trim() === "" || !/^\d{10}$/.test(phone)) {
                alert("Please enter a valid 10-digit phone number.");
                isValid = false;
            }

            if (subject.trim() === "") {
                document.getElementById("subjectError").textContent = "Subject is required.";
                isValid = false;
            }

            if (message.trim() === "") {
                document.getElementById("messageError").textContent = "Message is required.";
                isValid = false;
            }

            return isValid;
        }

        function validateEmail(email) {
            // Basic email format validation
            var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;
            return emailRegex.test(email);
        }
    </script>
</body>
</html>
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

    <div class="container">
        
        <section class="channel-info">
            <h2>Channelling a doctor</h2>
            <p>Channelling a doctor is quite easy through eChannelling.</p><br>
            <ol>
                <li>You can search for your Doctor by name, specialisation, or even their hospital.</li><br>
                <li>Then, by clicking search, you will be redirected to the available medical professionals.</li><br>
                <li>Select your professional with the "Book Now" button and then you will be directed to the times that medical officer is available.</li><br>
                <li>Enter the patient's details and click "Pay Now".</li><br>
                <li>Congratulations! You have channeled your doctor! Wait for your confirmation email and your all set for your appointment</li>
            </ol>      
        </section>

        <section class="contact-info">
            <h2>Contact Us</h2>
            <p>Want to know more? Contact us at any time! Our team will be in touch with you soon!</p><br>
            <table>
                <tr>
                  <td><strong>Address </strong></td>
                  <td>eChannelling PLC, No: 222, K A L Rathnayake Mawatha, Colombo 1, Sri Lanka.</td>
                </tr>
                <tr>
                  <td><strong>Email address</strong></td>
                  <td>contact@echanneling.com</td>
                </tr>
                <tr>
                  <td><strong>Phone number</strong></td>
                  <td>+94 (112) 456-789</td>
                </tr>
              </table>
        </section>
        <section class="social-linx">
            <h2>Socials</h2>
            <p>Follow us on social media.</p><br>
            <div class="Social media">
                <div class="wrapper">
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        </div>
                        <span>Facebook</span>
                    </div>
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                        <span>Twitter</span>
                    </div>
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                        <span>Instagram</span>
                    </div>
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        </div>
                        <span>YouTube</span>
                    </div>
                </div>
            </div>
        </section>
        <section class="inquiry-form">
            <h2>Drop us a line</h2>
            <p>Get in touch if you have any questions.</p><br>
            <form action="drop" method="post" onsubmit="return validateForm()">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" required>
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" required>
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4"></textarea><br>
                <button type="submit" name="submit">Submit</button>
            </form>
        </section>
        <section class="history">
            <p>View your previous messages.</p><br>
            <button><a href="displaymsg.jsp">Message History</a></button>
        </section>
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
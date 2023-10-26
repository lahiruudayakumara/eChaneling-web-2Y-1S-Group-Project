<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/PatientDetailsForm.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
    
    <script>
function validateForm() {
    // Get form field values
    var fullName = document.getElementById("first_name").value;
    var nic = document.getElementById("nic").value;
    var age = document.getElementById("age").value;
    var gender = document.querySelector('input[name="gender"]:checked');
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;


    // Initialize a variable to check if all validations pass
    var isValid = true;

    // Validate Full Name
    if (fullName.trim() === "") {
        alert("Full Name is required.");
        isValid = false;
    }

 // Validate NIC (Sri Lankan NIC format)
    if (nic.trim() === "" || !/^\d{12}$|^\d{9}[VvXx]$/.test(nic)) {
        alert("Please enter a valid NIC number.");
        isValid = false;
    }

    // Validate Age
    if (age.trim() === "" || isNaN(age) || age < 1 || age > 120) {
        alert("Please enter a valid age.");
        isValid = false;
    }

    // Validate Gender
    if (!gender) {
        alert("Please select a gender.");
        isValid = false;
    }

    // Validate Email
    if (email.trim() !== "" && !/^\S+@\S+\.\S+$/.test(email)) {
        alert("Please enter a valid email address.");
        isValid = false;
    }

    // Validate Phone Number
    if (phone.trim() === "" || !/^\d{10}$/.test(phone)) {
        alert("Please enter a valid 10-digit phone number.");
        isValid = false;
    }


    return isValid;
}
</script>    
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

<div class="form-container">
    <h2>Update contact Details</h2>
    <form action="contdetails" method="post" onsubmit="return validateForm()">
<%
    	String id = request.getParameter("refId");
	    String address = request.getParameter("patAddress");
	    String email = request.getParameter("patEmail");
	    String phone = request.getParameter("patPhone");
%>
        <!-- Contact Information -->
        <fieldset>
            <legend>Contact Information</legend>
            
            <label for="refId">Reference No:</label>
            <input type="text" id="refId" name="refId" value="<%=id%>" readonly>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%=email%>">

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" value="<%=phone%>" required>

            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="4"><%=address%></textarea>
        </fieldset>

       <div class="submit"><input type="submit" name="submit" value="Update Contact-Info"></div> 
    </form>
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


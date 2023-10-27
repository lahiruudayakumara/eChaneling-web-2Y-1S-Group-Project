<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Objects" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    
    
    <c:forEach var="refund" items="${refund}">
    
    <c:set var="refundId" value="${refund.refundId}"/>
    <c:set var="refId" value="${refund.refId}"/>
	<c:set var="appId" value="${refund.appId}"/>
	<c:set var="name" value="${refund.name}"/>
	<c:set var="nic" value="${refund.nic}"/>
	<c:set var="username" value="${refund.username}"/>
    
    <div class="form-container">
    <h2>Claim Refund</h2>
    <form action="claim" method="post" onsubmit="return validateForm()">
        <!-- Personal Information -->
        <fieldset>
            <legend>Refund Request</legend>
            
            <label for="claim_no">Claim ID:</label>
            <input type="text" id="claim_no" name="claim_no" value="${refund.refundId}" required>
            
            <label for="ref_no">Reference No:</label>
            <input type="text" id="ref_no" name="ref_no" value="${refund.refId}" required>
            
            <label for="app_no">Appointment No:</label>
            <input type="text" id="app_no" name="app_no" value="${refund.appId}" required>
            
            <label for="name">Patient's Full Name:</label>
            <input type="text" id="name" name="name"  value="${refund.name}" required >

            <label for="nic">Patient's NIC:</label>
            <input type="text" id="nic" name="nic" value="${refund.nic}" required>
			
			<label for="reason">Refund Reason:</label>
            <select name="reason" required>
                        <option value="" disabled selected>Select a reason</option>
                        <option value="I HAVE ANOTHER APPOINTMENT AT THAT TIME">I HAVE ANOTHER APPOINTMENT AT THAT TIME</option>
                        <option value="TWO APPOINTMENTS HAVE BEEN MADE">TWO APPOINTMENTS HAVE BEEN MADE</option>
                        <option value="UNABLE TO ATTEND TO THE APPOINTMENT">UNABLE TO ATTEND TO THE APPOINTMENT</option>
                        <option value="DOCTOR HAS CENCELLED THE SESSION">DOCTOR HAS CENCELLED THE SESSION</option>
                        <option value="I CHANGED MY MIND">I CHANGED MY MIND</option>
                        <option value="OTHER">OTHER</option>
            </select>
            
            <label for="acc_holder_name">Account Holder Name:</label>
            <input type="text" id="acc_holder_name" name="acc_holder_name"  required>
            
            <label for="bank_name">Bank Name:</label>
            <input type="text" id="bank_name" name="bank_name"  required>
            
            <label for="branch_name">Branch name:</label>
            <input type="text" id="branch_name" name="branch_name" required>
            
            <label for="acc_no">Account Number:</label>
            <input type="text" id="acc_no" name="acc_no"  required>

        </fieldset>
        
        <!-- Submit Button -->
       <div class="submit"><input type="submit" name="submit" value="Submit"></div> 
    </form>
    

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


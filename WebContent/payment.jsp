<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Gateway</title>
    <link rel="stylesheet" href="css/payment.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
	<script>
function validatePaymentForm() {
    var cardNumber = document.getElementsByName("card-number")[0].value;
    var expiration = document.getElementsByName("expiration")[0].value;
    var cvv = document.getElementsByName("cvv")[0].value;
    var cardType = document.querySelector('input[name="payment-method"]:checked');

    var currentYear = new Date().getFullYear() % 100;
    var [month, year] = expiration.split("/");

    var isValid = true;

    if (!cardType) {
        alert("Please select a payment method (Visa or Mastercard).");
        isValid = false;
    }

    if (!/^\d{16}$/.test(cardNumber)) {
        alert("Please enter a valid 16-digit card number.");
        isValid = false;
    }

    if (!/^\d{2}\/\d{2}$/.test(expiration) || month < 1 || month > 12 || year < currentYear) {
        alert("Please enter a valid expiration date in MM/YY format.");
        isValid = false;
    }

    if (!/^\d{3}$/.test(cvv)) {
        alert("Please enter a valid 3-digit CVV.");
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


    <div class="container">
        <h1>Payment Details</h1>
        <form id="payment-form" method="POST" action="payment"  onsubmit="return validatePaymentForm()">
            
            <div class="payment-methods">
                <label>Select Payment Method</label><br>
                <div class="payment-method">
                    <input type="radio" id="visa" name="payment-method" value="visa" required>
                    <label for="visa"><img src="img/png-transparent-mastercard-visa-credit-card-american-express-company-mastercard-blue-company-text.png" alt="Visa"></label>
                </div>
                <div class="payment-method">
                    <input type="radio" id="mastercard" name="payment-method" value="mastercard" required>
                    <label for="mastercard"><img src="img/png-transparent-logo-mastercard-font-solar-home-text-orange-logo.png" alt="Mastercard"></label>
                </div>
            </div>
            
            <label for="card-number">Card Number</label>
            <input type="text" name="card-number" placeholder="1234 5678 9012 3456" required>

            <label for="expiration">Expiration Date</label>
            <input type="text" name="expiration" placeholder="MM/YY" required>

            <label for="cvv">CVV</label>
            <input type="text" name="cvv" placeholder="123" required>

            <label for="card_holder_name">Cardholder Name</label>
            <input type="text" name="card_holder_name" placeholder="John Doe" required>

            <label for="accept-terms">
                <input type="checkbox" id="accept-terms" name="accept-terms" required>
                I accept the <a href="terms_and_conditions.html" target="_blank">Terms & Conditions</a>
            </label>

            <button type="submit" name="pay">Pay Now</button>
        </form>
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
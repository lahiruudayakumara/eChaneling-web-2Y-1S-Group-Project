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
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 

</head>
<body style="background-image: url('img/globe-technology-business-with-gradient-wallpaper.jpg');
    background-size: cover;
    background-repeat: no-repeat;">

    <header>
        <h1>Welcome to E-Channelling</h1>
    </header>

    <div class="container">
        <h1>Payment Details</h1>
        <form id="payment-form" method="POST" action="#">
            
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

            <label for="name">Cardholder Name</label>
            <input type="text" name="name" placeholder="John Doe" required>

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
        <div class="copyright"> <p>&copy; 2023 E-Channelling</p><br></div>
    </footer>
    
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/PatientDetailsForm.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
</head>
<body style="background-image: url('img/white-concrete-wall.jpg');
background-size: cover;">

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

    <div class="apdt-container">
        <div id="appointment-info">
            <h2>Appointment Details</h2>
            <table>
                <tr>
                    <td>Appointment ID</td>
                    <td>12345</td>
                </tr>
                <tr>
                    <td>Doctor's Name</td>
                    <td>Dr. John Doe</td>
                </tr>
                <tr>
                    <td>Doctor's Specialization</td>
                    <td>Cardiology</td>
                </tr>
                <tr>
                    <td>Hospital Name</td>
                    <td>City Hospital</td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>2023-10-16</td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td>10:00 AM</td>
                </tr>
            </table>
        </div>
    </div>

<div class="form-container">
    <h2>Patient Details</h2>
    <form action="#" method="post">
        <!-- Personal Information -->
        <fieldset>
            <legend>Personal Information</legend>
            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" required><br><br>

            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required><br><br>

            <label for="nic">NIC:</label>
            <input type="text" id="nic" name="nic" required><br><br>

            <label for="age">Age:</label>
            <input type="text" id="age" name="age" required><br><br>

            <label for="gender">Gender:</label>
            <input type="radio" id="male" name="gender" value="Male">Male
            <input type="radio" id="female" name="gender" value="Female">Female
            <input type="radio" id="other" name="gender" value="Other">Other<br><br>
        </fieldset>

        <!-- Contact Information -->
        <fieldset>
            <legend>Contact Information</legend>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email"><br><br>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required><br><br>

            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="4"></textarea><br><br>
        </fieldset>

        <!-- Medical Information -->
        <fieldset>
            <legend>Medical Information</legend>
            <label for="medical_condition">Medical Condition:</label>
            <input type="text" id="medical_condition" name="medical_condition"><br><br>

            <label for="allergies">Allergies:</label>
            <input type="text" id="allergies" name="allergies"><br><br>

            <label for="medications">Current Medications:</label>
            <input type="text" id="medications" name="medications"><br><br>
        </fieldset>

        <!-- Submit Button -->
       <div class="submit"><input type="submit" name="submit" value="Book Appointment"></div> 
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


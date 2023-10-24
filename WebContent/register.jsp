<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8" />
    <title>Registration Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/register.css" />
  </head>
  <body>
    <div style="position: absolute; top: 0; left: 0;">
      <a href="home.jsp" style="display: inline-block; padding: 10px 20px; background-color: #0074cc; color: #fff; text-decoration: none; border: none; border-radius: 5px; font-weight: bold; text-align: center; cursor: pointer;">Back to Home</a>
    </div>
    <div class="container">
      <h1 class="form-title">Registration</h1>
      <form action="reguser" method="post" onsubmit="return validateForm()">
        <div class="main-user-info">
          <div class="user-input-box">
            <label for="fullName">Full Name</label>
            <input type="text" id="fullName" name="fName" placeholder="Enter Full Name"/>
          </div>
          <div class="user-input-box">
            <label for="NIC">National identity card</label>
            <input type="text" id="Nic" name="nic" placeholder="Enter Nic Number (10 characters)" required maxlength="10" />
          </div>
          <div class="user-input-box">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter Email" required />
          </div>
          <div class="user-input-box">
            <label for="phoneNumber">Phone Number</label>
            <input type="text" id="phoneNumber" name="phoneNumber" placeholder="Enter Phone Number (10 numbers)" maxlength="10" />
          </div>
          <div class="user-input-box">
            <label for="address">User address</label>
            <input type="text" id="address" name="address" placeholder="User address"/>
          </div>
          <div class="user-input-box">
            <label for="username">User name</label>
            <input type="text" id="username" name="username" placeholder="User name"/>
          </div>
          <div class="user-input-box">
            <label for="password">Password</label>
            <input type="password" id="password" name="pass" placeholder="Enter Password"/>
          </div>
          <div class="user-input-box">
            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="password" placeholder="Enter Password"/>
          </div>
        </div>
        <div class="form-submit-btn">
          <input type="submit" name="submit" value="Register">
        </div>
      </form>
    </div>
    
    <script>
      function validateForm() {
        var fullName = document.getElementById("fullName").value;
        var nic = document.getElementById("Nic").value;
        var email = document.getElementById("email").value;
        var phoneNumber = document.getElementById("phoneNumber").value;
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
    
        if (fullName.trim() === "") {
          alert("Full Name cannot be empty");
          return false;
        }
    
        if (nic.length !== 10) {
          alert("NIC must be 10 characters long");
          return false;
        }
    
        if (!emailIsValid(email)) {
          alert("Invalid email address");
          return false;
        }
    
        if (phoneNumber.length !== 10) {
          alert("Phone Number must be 10 numbers long");
          return false;
        }
    
        if (password.length < 1) {
          alert("Password must be at least 6 characters long");
          return false;
        }
    
        if (password !== confirmPassword) {
          alert("Passwords do not match");
          return false;
        }
    
        return true;
      }
    
      function emailIsValid(email) {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
      }
    </script>
  </body>
</html>

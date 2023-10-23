<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8" />
    <title> Registration Form</title>
    <meta name="viewport" content="width=device-width,
      initial-scale=1.0"/>
    <link rel="stylesheet" href="css/register.css" />
  </head>
  <body>
    <div class="container">
      <h1 class="form-title">Registration</h1>
      <form action="reguser" method="post">
        <div class="main-user-info">
          <div class="user-input-box">
          
            <label for="fullName">Full Name</label>
            <input type="text"
                    id="fullName"
                    name="fName"
                    placeholder="Enter Full Name"/>
          </div>
          <div class="user-input-box">
            <label for="NIC">National identity card</label>
            <input type="text"
                    id="Nic"
                    name="nic"
                    placeholder="Enter Nic Numuber"required/>
          </div>
          <div class="user-input-box">
            <label for="email">Email</label>
            <input type="email"
                    id="email"
                    name="email"
                    placeholder="Enter Email"required/>
          </div>
          
			<div class="user-input-box">
			  <label for="phoneNumber">Phone Number</label>
			  <input type="text"
			         id="phoneNumber"
			         name="phoneNumber"
			         placeholder="Enter Phone Number"
			         maxlength="10" />
			</div>

          
          <div class="user-input-box">
            <label for="address">User address</label>
            <input type="text"
                    id="address"
                    name="address"
                    placeholder="User address"/>
               </div>  
               
            <div class="user-input-box">
            	<label for="username">User name</label>
            	<input type="text"
                    id="username"
                    name="username"
                    placeholder="User name"/>
         	</div>
           
                    

          
          <div class="user-input-box">
            <label for="password">Password</label>
            <input type="password"
                    id="password"
                    name="pass"
                    placeholder="Enter Password"/>
                              
          </div>
          
             <div class="user-input-box">
            <label for="password">Confirm Password</label>
            <input type="password"
                    id="password"
                    name="password"
                    placeholder="Enter Password"/>
                    
              </div>
         
        </div>
        <div class="form-submit-btn">
          <input type="submit" name="submit" value="Register">
        </div>
      </form>
    </div>
  </body>
</html>
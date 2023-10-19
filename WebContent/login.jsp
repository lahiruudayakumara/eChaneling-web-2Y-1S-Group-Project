<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <title>loginpage</title>
    <link rel="stylesheet" href="css/loging.css">
</head>
<body>

 <% 
String username = "John";
session.setAttribute("username", username);
%>


    <div class="main">
    
        <p><a href="home.jsp" style="display: inline-block; padding: 10px 20px; background-color: #0074cc; color: #fff; text-decoration: none; border: none; border-radius: 5px; font-weight: bold; text-align: center; cursor: pointer;">Back to Home</a></p>


        <div class="content">
        
            <h1>A fit body, a calm mind,   <br><span>a house full of</span> <br>love. ...</h1>
            
            
            

                

                <div class="form">
                    <h2>Login Here</h2>
                    <form action="regloging" method="post">
	                    <input type="username" name="uid" placeholder="Enter Usename Here" required autocomplete="off" >
	                    <input type="password" name="pass" placeholder="Enter Password Here" required autocomplete="off">
	                    <input type="submit" name="btnn" value="Login" style="width: 240px; height: 40px; background: rgba(10, 186, 54, 0.7); border: none; margin-top: 30px; font-size: 18px; border-radius: 10px; cursor: pointer; color: #fff; transition: background 0.4s ease, color 0.4s ease;" onmouseover="this.style.background='#fff'; this.style.color='#00a41e';" onmouseout="this.style.background='rgba(10, 186, 54, 0.7)'; this.style.color='#fff';">

                    </form>

                    <p class="link">Don't have an account<br>
                    <a href="register.jsp">Sign up </a> here</a></p>
                    <p class="liw">Log in with</p>

                    <div class="icons">
                        <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-twitter"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-google"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-skype"></ion-icon></a>
                    </div>

                </div>
                    </div>
                </div>
        </div>
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Doctor Login</title>
		<style type="text/css">
			body {
			    background:rgba(0, 0, 0, 0.5)url('img/logo.jpg') no-repeat fixed center center;
			    background-size: cover;
			    font-family: Montserrat;
			    background-blend-mode: darken;
			}
			
			.login {
			    width: 213px;
			    height: 36px;
			    margin: 30px auto;
			}
			
			.login-block {
			    width: 320px;
			    padding: 20px;
			    background: transparent;
			    border: 2px solid rgba(255, 255, 255, .2);
			    backdrop-filter: blur(20px);
			    box-shadow: 0 0 10px rgba(0, 0, 0, .2);
			    background-color: rgba(255, 255, 255, 0.2);
			    border-radius: 5px;
			    border-top: 5px solid #128020;
			    margin: 0 auto;
			}
			
			.login-block h1 {
			    text-align: center;
			    color: #fff;
			    font-size: 18px;
			    text-transform: uppercase;
			    margin-top: 0;
			    margin-bottom: 20px;
			}
			
			.login-block input {
			    width: 100%;
			    height: 42px;
			    box-sizing: border-box;
			    border-radius: 5px;
			    border: 2px solid green;
			    margin-bottom: 20px;
			    font-size: 14px;
			    font-family: Montserrat;
			    padding: 0 20px 0 50px;
			    outline: none;
			}
			
			.login-block input#email {
			    background-size: 16px 80px;
			}
			
			.login-block input#email:focus {
			    background-size: 16px 80px;
			}
			
			.login-block input#password {
			    background-size: 16px 80px;
			}
			
			.login-block input#password:focus {
			    background-size: 16px 80px;
			}
			
			.login-block input:active, .login-block input:focus {
			    border: 2px solid #ff656c;
			}
			
			.login-block button {
			    width: 100%;
			    height: 40px;
			    background: #07a63e;
			    box-sizing: border-box;
			    border-radius: 25px;
			    border: 1px solid #c6f203;
			    color: #fff;
			    font-weight: bold;
			    text-transform: uppercase;
			    font-size: 14px;
			    font-family: Montserrat;
			    outline: none;
			    cursor: pointer;
			}
			
			.login-block button:hover {
			    background: #ff7b81;
			}
			
			input[type="checkbox"] {
			    width: 16px;
			    height: 16px;
			    margin-bottom: 20px;
			    cursor: pointer;
			}
			
	</style>
	</head>
	<body>
		
		<div class="login"></div>
		<div class="login-block">
		<h1>Login</h1>
			<form action="doctorLogin" method="post">
				<input type="email" name="email" placeholder="dushan123@gmail.com">
				<input type="password" name="password" id="password" placeholder="Password">
				<input type="checkbox" onclick="togglePasswordVisibility()" id="show" name="show">
				<label for="show" style="color: #fff" >Show Password</label>
        		<br>
				<button>Submit</button>
			</form>
		</div>
		<script>
        function togglePasswordVisibility() {
            var passwordInput = document.getElementById("password");
            if (passwordInput.type === "password") {
                passwordInput.type = "text"; // Show the password
            } else {
                passwordInput.type = "password"; // Hide the password
            }
        }
       </script>
	   </body>
</html>
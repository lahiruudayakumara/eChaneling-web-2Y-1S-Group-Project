<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>View Scedule</title>
	<link rel="stylesheet" href="./css/admin.css" />
	<style type="text/css">
		body {
			    background: url('img/logo.jpg') no-repeat fixed center center;
			    background-size: cover;
			    font-family: Montserrat;
			}
			
			.login {
			    width: 213px;
			    height: 36px;
			    margin: 30px auto;
			}
			
			.login-block {
			    width: 320px;
			    padding: 20px;
			    background: #fff;
			    border-radius: 5px;
			    border-top: 5px solid #128020;
			    margin: 0 auto;
			}
			
			.login-block p {
			    text-align: center;
			    color: #000;
			    font-size: 18px;
			    text-transform: uppercase;
			    margin-top: 0;
			    margin-bottom: 20px;
			    padding: 10px;
			}
			
			.login-block input#doctorRegNum {
			    width: 100%;
			    height: 42px;
			    box-sizing: border-box;
			    border-radius: 5px;
			    border: 1px solid green;
			    margin-bottom: 20px;
			    margin-top: 15px;
			    font-size: 14px;
			    font-family: Montserrat;
			    padding: 0 20px 0 50px;
			    outline: none;
			    text-align: justify;
			}
			
			.login-block input#doctorRegNum {
			    background-size: 16px 80px;
			}
			
			.login-block input#doctorRegNum:focus {
			    background-size: 16px 80px;
			}
			
			
			.login-block input:active, .login-block input:focus {
			    border: 1px solid #ff656c;
			}
			
			.login-block input[type="submit"] {
			    width: 100%;
			    height: 40px;
			    background: #07a63e;
			    box-sizing: border-box;
			    border-radius: 5px;
			    border: 1px solid #c6f203;
			    color: #fff;
			    font-weight: bold;
			    text-transform: uppercase;
			    font-size: 14px;
			    font-family: Montserrat;
			    outline: none;
			    cursor: pointer;
			}
			
			.login-block input[type="submit"]:hover {
			    background: orange;
			}
	</style>
</head>
<body>
	<header>
	<div class="header">
			<div class="nav">
				<div id="logo">
					<h3><a>Doctor Dashboard</a></h3>
				</div>
				<ul>
					<li><a href="doctorLogOut.jsp">Logout</a>
				</ul>
			</div>
		</div>
	</header>
	
	<div class="login"></div>
	<div class="login-block">
		<form action="ReadScheduleServlet" method="post">
			<p> Doctor Register Number <input type="text" name="doctorRegNum" id="doctorRegNum"> </p>
			<input type="submit" name="view" value="view schedules">
		</form>
	</div>
</body>
</html>
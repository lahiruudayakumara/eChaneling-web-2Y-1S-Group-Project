<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="./css/admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,700;1,800;1,900;1,1000&display=swap" rel="stylesheet">
</head>
<body>
	<div class="main">
		<form class="login_form" action="log" method="post">
			<h3>Admin Login</h3>
			<label>User Name:</label></br>
			<input class="input_field" type="text"  name="uName" placeholder="User Name"></br>
			<label>Password:</label></br>
			<input class="input_field" type="password" name="pass" placeholder="Password"></br>
			<input class="submit" type="submit" value="Submit" name="submit">
		</form>
	</div>
</body>
</html>
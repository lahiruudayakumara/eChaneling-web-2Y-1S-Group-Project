<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<% 
	if (session.getAttribute("adminUserName")== null) {
		response.sendRedirect("admin_login.jsp");
	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,700;1,800;1,900;1,1000&display=swap" rel="stylesheet">
</head>
<body>
	<div class="main">
		<form class="common_form" action="add" method="post">
			<h3>Add Doctor</h3>
			<label>Full Name : </label></br>
			<input class="input_field" type="text" name="fName" required autocomplete="off"></br>
			
			<label>Email : </label></br>
			<input class="input_field" type="email" name="email" required autocomplete="off"></br>
			
			<label>Mobile No : </label></br>
			<input class="input_field" type="text" name="mobile" required autocomplete="off"></br>
			
			<label>Password : </label></br>
			<input  id="password" class="input_field" type="password" name="password" required autocomplete="off"></br>
			
			<label>Confirm Password : </label></br>
			<input id="confirmPassword" class="input_field" type="password" name="confirmPassword" required autocomplete="off"></br>
			
			<label>Specialist : </label></br>
			<input class="input_field" type="text" name="spec" required autocomplete="off"></br>
			
			<label>Work : </label></br>
			<input class="input_field" type="text" name="work" required autocomplete="off"></br>
					
			<input id="submit" class="submit_btn" type="submit" value="Add Doctor" name="submit" >
			<a href="log">
			<input class="cancle_btn" type="button" value="Cancle" name="cancel" >
			</a>
		</form>
	</div>
</body>
<script type="text/javascript">
	var pass = document.getElementById("password"); 
	var confirmPass = document.getElementById("confirmPassword"); 
	var submit = document.getElementById("submit");
	
	submit.addEventListener("click", function(event){
		if(pass.value != confirmPass.value){
			event.preventDefault();
			alert('Password & Confirm Password does not Match');
		}
	});
</script>
</html>
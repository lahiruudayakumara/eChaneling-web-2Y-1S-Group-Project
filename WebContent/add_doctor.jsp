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
</head>
<body>
	<form action="add" method="post">
		<h3>Add Doctor</h3>
		<label>Full Name</label>
		<input type="text" name="fName" ></br>
		
		<label>Email : </label>
		<input type="email" name="email" ></br>
		
		<label>Mobile No : </label>
		<input type="text" name="mobile" ></br>
		
		<label>Password : </label>
		<input type="password" name="password" ></br>
		
		<label>Confirm Password : </label>
		<input type="password" name="configPassword" ></br>
		
		<label>Specialist : </label>
		<input type="text" name="spec" ></br>
		
		<label>Work: </label>
		<input type="text" name="work" ></br>
				
		<input type="submit" value="Add Doctor" name="submit" >
		<a href="log">
		<input type="button" value="Cancle" name="cancel" >
		</a>
	</form>
</body>
</html>
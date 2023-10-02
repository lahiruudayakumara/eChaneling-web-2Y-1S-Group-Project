<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

	<%
		String dId = request.getParameter("dId");
		String fName = request.getParameter("fName");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String spec = request.getParameter("spec");
		String work = request.getParameter("work");
		String pass = request.getParameter("pass");
	%>
	
	<div class="main">
		<form class="common_form" action="updateDoctor" method="post">
			<input class="input_field" type="hidden" name="docId" value="<%= dId %>" readonly/></br>
			<label>Full Name</label>
			<input class="input_field" type="text" name="fName" value="<%= fName %>" /></br>
			<label>Email</label>
			<input class="input_field" type="text" name="email" value="<%= email %>" /></br>
			<label>Tel.</label>
			<input class="input_field" type="text" name="mobile" value="<%= mobile %>" /></br>
			<label>Speification</label>
			<input class="input_field" type="text" name="spec" value="<%= spec %>" /></br>
			<label>Currently Work</label>
			<input class="input_field" type="text" name="work" value="<%= work %>" /></br>
			<label>Did You wont change the password?</label></br>
			<label>Yes</label>
			<input class="input_field" type="radio" name="choose" id="showDiv" value="true"/>
			<label>No</label> 
			<input class="input_field" type="radio" name="choose" id="hideDiv" value="false" checked/></br>
			
			<div id="myDiv" style="display: none" >
				<input id="currentPassword" class="input_field" type="hidden" name="currentPassword"  value="<%= pass %>"/></br>
				<label>Enter Old Password</label>
				<input id="oldPassword" class="input_field" type="password" name="oldPassword" /></br>
				<label>Enter New Password</label>
				<input id="newPassword" class="input_field" type="password" name="newPassword" /></br>
				<label>Confirm Password</label>
				<input id="confirmPassword" class="input_field" type="password" name="confirmPassword" /></br>
			</div>
			
			<input id="submit" class="submit_btn" type="submit" name="submit" value="Update" />
			<a href="doctorinfo">
			<input class="cancle_btn" type="button" value="Cancle" name="cancel" >
			</a>
		</form>
	</div>
</body>
<script type="text/javascript">

	var radio1 = document.getElementById("showDiv");
	var radio2 = document.getElementById("hideDiv");
	var myDiv = document.getElementById("myDiv");
	var submit = document.getElementById("submit");
	var currentPassword = document.getElementById("currentPassword");
	var oldPassword = document.getElementById("oldPassword");
	var newPassword = document.getElementById("newPassword");
	var confirmPassword = document.getElementById("confirmPassword");
	
	radio1.addEventListener("change", function() {
		if (radio1.checked) {
	        myDiv.style.display = "block";
	    } 
	})
	
	radio2.addEventListener("change", function() {
		if (radio2.checked) {
	         myDiv.style.display = "none";
	    } 
	})
	
	submit.addEventListener("click", function(event) {
		if(currentPassword.value != oldPassword.value && radio1.checked){
			event.preventDefault();
			alert("enter old password incorrect ");
			myDiv.style.display = "block";
		} else if(newPassword.value !=  confirmPassword.value && radio1.checked) {
			event.preventDefault();
			alert("new password & new password doesn't match");
			myDiv.style.display = "block";
		}else if(newPassword.value == currentPassword.value  && currentPassword.value ==confirmPassword.value && radio1.checked){
			event.preventDefault();
			alert("This password previously use then can't use this password");
			myDiv.style.display = "block";
		}
	})
</script>
</html>
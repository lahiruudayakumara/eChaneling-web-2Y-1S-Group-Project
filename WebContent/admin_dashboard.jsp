<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="javax.servlet.http.HttpSession" %>
<% 
	//Session Validate
	if (session.getAttribute("adminUserName")== null) {
		response.sendRedirect(" admin_login.jsp");
	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="icon" type="image/x-icon" href="./img/logo.jpg">
<link rel="stylesheet" href="./css/admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,700;1,800;1,900;1,1000&display=swap" rel="stylesheet">
</head>
<body>
	<c:forEach var="admin" items="${adminDetails }">
		<c:set var="aId" value="${admin.id}" />
		<c:set var="fName" value="${admin.fullName}" />
		<c:set var="email" value="${admin.email}" />
		<c:set var="mobile" value="${admin.phoneNo}" />
		<c:set var="pass" value="${admin.password}" />
		<c:set var="uName" value="${admin.userName}" />
		<c:set var="uRole" value="${admin.userRole}" />
		
			<c:url value="update_admin_details.jsp" var="adminUpdate">
				<c:param name="aId" value="${aId}"/>
				<c:param name="fName" value="${fName}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="mobile" value="${mobile}"/>
			    <c:param name="uName" value="${uName}"/>
				<c:param name="uRole" value="${uRole}"/>
				<c:param name="pass" value="${pass}"/>
           	</c:url>
           	
	<!-- Header -->
	<header>
		<div class="header">
			<div class="nav">
				<div id="logo">
					<h3>eChannelling - Admin Dashboard  - ${admin.showMsg()}</h3>
				</div>
				<ul>
					<li><a href="admin_logout">Logout</a>
				</ul>
			</div>
		</div>
	</header>
	
	<div class="hero">
		<div class="left_section">
			<div class="banner">
				<img src="img/logo.jpg" width="240px">
			</div>

			<div class="user_info">
				<img src="img/unkown.png">
				<div class="user_details">
				<div style="display: flex; position: fixed; left: 13%; top: 375px; object-fit:cover;">
					<a href="${adminUpdate}"><i class="fa fa-pencil-square-o" 
								  aria-hidden="true" 
								  style="padding: 10px; background-color: cornflowerblue; border-radius: 20px; color: #fff;"
								 ></i></a>
				</div>
					<p>${admin.displayInfo()}</p>
				</div>
			</div>	
		</div>
	</c:forEach>
	
		<div class="right_section">
			<div class="display_tab">
			
				<c:forEach var="view" items="${countView}">
				<div class="display_box">
					<h4 align="left">Performance</h4>
					<i class="fa fa-tachometer"></i>
					 <p>${view.performence}%</p>
				</div>
			
				<div class="display_box">
					<h4 align="left">Doctors</h4>
					<i class="fa fa-user-md" aria-hidden="true"></i>
					<p>${view.doctor}</p>
				</div>
				
				<div class="display_box">
					<h4 align="left">Registered User</h4>
					<i class="fa fa-user" aria-hidden="true"></i>
					<p>${view.regUser}</p>
				 </div>
				 
				<div class="display_box">
					<h4 align="left">Appoiment</h4>
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					<p>${view.appointment}</p>
				</div>
				
				<div class="display_box">
					<h4 align="left">Pending Approvel</h4>
					<i class="fa fa-exclamation-circle" aria-hidden="true"></i>
					<p>${view.pendingApprovel}</p>
				</div>
				</c:forEach>
			</div>
			
			
			<div style="margin-top: 10px;">
				<h4 style="padding-left: 10px;  background-color: #f1c200;">Admin Option</h4>
				<div style=" display: flex; margin-top: 10px;">
					<div class="left_side">
						<a href="add_doctor.jsp">
							<div class="left_item" >
								<p>Add Doctor</p>
							</div>
						</a>
						
						<a href="doctorinfo">
							<div class="left_item" >
								<p>Doctors List</p>
							</div>
						</a>
												
						<a href="" onclick="alert('None Pending Approvel');">
							<div class="left_item">
								<p>Pending for Approvel</p>
							</div>
						</a>
						
					</div>
					
					<div class="rigt_side">
						<img alt="" src="./img/visitor.jpg" width="305px">
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<div class="footer">
		<div class="footer_details">
			<p>Develop by <a href="https://github.com/lahiruudayakumara/eChaneling-web-2Y-1S-Group-Project#readme">LAHIRU</a></p>
		</div>
	</div>
	
</body>
<script>
document.getElementById("submitLink").addEventListener("click", function(e) {
    e.preventDefault(); // Prevent the default behavior of following the link
    var form = document.createElement("form");
    form.method = "post";
    form.action = "doctorinfo";

    document.body.appendChild(form);
    form.submit();
});
</script>
</html>
<!--lahiru udayakumara-->
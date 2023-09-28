<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="css/admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,500;0,600;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,700;1,800;1,900;1,1000&display=swap" rel="stylesheet">
</head>
<body>
	
	<!-- Header -->
	<header>
		<div class="header">
			<div class="nav">
				<div id="logo">
				</div>
				<ul>
					<li><a href="#">Home</a>
					<li><a href="#">Logout</a>
				</ul>
			</div>
		</div>
	</header>
	
	<div class="main">
		<div class="left_section">
			<div class="banner">
				<img src="img/logo.jpg" width="240px">
			</div>

			<div class="user_info">
				<img src="img/admin_avatar.png">
				<div class="user_details">
					<c:forEach var="admin" items="${adminDetails }">
					<h3>${admin.fullName}</h3>
					<p>User Name : ${admin.userName}</p>
					<p>User Name : ${admin.email}</p>
					<p>Your Role: ${admin.userRole}</p>
					<p>Mobile : ${admin.phoneNo}</p>
					</c:forEach>
				</div>
			</div>	
		</div>
	
		<div class="right_section">
			<div class="display_tab">
				<div class="display_box">
					<h4 align="left">Performance</h4>
					<i class="fa fa-tachometer"></i>
					 <p>100%</p>
				</div>
			
				<div class="display_box">
					<h4 align="left">Doctors</h4>
					<i class="fa fa-user-md" aria-hidden="true"></i>
					<p>15</p>
				</div>
				
				<div class="display_box">
					<h4 align="left">Registered User</h4>
					<i class="fa fa-user" aria-hidden="true"></i>
					<p>150</p>
				 </div>
				 
				<div class="display_box">
					<h4 align="left">Appoiment</h4>
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					<p>15</p>
				</div>
				
				<div class="display_box">
					<h4 align="left">Pending Approvel</h4>
					<i class="fa fa-exclamation-circle" aria-hidden="true"></i>
					<p>15</p>
				</div>
			</div>
			
			<div style="margin-top: 10px;">
				<h4 style="padding-left: 10px;  background-color: #f1c200;">Admin Option</h4>
				<div style=" margin-top: 10px;">
					<button>Add Doctor</button>
					<button>Edit Doctor</button>
					<button>Remove Doctor</button>
					<button>Generate Report</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="footer">
		<div class="footer_details">
			<p>Develop by NexTech</p>
		</div>
	</div>
	
</body>
</html>
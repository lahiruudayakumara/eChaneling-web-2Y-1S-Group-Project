<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<div class="doc_info">
			<div style="text-align: center;">
				<h1>Doctor's Information</h1>
			</div>
			<hr>
		
		        <c:forEach var="doctor" items="${doctorList}">
		            <c:set var="n" value="${doctor.displayInfo()}" />
		            <c:set var="n" value="${doctor.displayName(Name)}" />
		            <c:set var="fName" value="${doctor.fullName}" />
		            <div style="margin-top: 15px;">
		            	<img class="info_img" src="img/unkown.png" width="150px"></br>
		            	<h3>${doctor.displayName(Name)}</h3>
		            	<p>${doctor.displayInfo()}</p>
		            </div>
		        </c:forEach>
		        <a href="log">
					<input class="submit_btn" type="button" value="Home" name="home" >
				</a>
		</div>
	</div>	
</body>
</html>
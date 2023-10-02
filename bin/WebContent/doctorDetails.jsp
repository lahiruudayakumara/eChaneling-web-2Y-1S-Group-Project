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
		<div class="main_cover">
			<div style="display: flex; justify-content: space-between;">
				<h1 style="margin-left: 10px;">Doctors List</h1>
				<a href="log"><button class="common_btn"><i class="fa fa-home" class=""></i></button></a>
			</div>
			<hr>
		
			<table style="width: 100%">
		        <tr>
		            <th>ID</th>
		            <th>Full Name</th>
		            <th>Email</th>
		            <th>Mobile</th>
		            <th>Specialty</th>
		            <th>Work</th>
		            <th>Action</th>
		        </tr>
		        <c:forEach var="doctor" items="${doctorList}">
		        	<c:set var="dId" value="${doctor.id}" />
		        	<c:set var="fName" value="${doctor.fullName}" />
		        	<c:set var="email" value="${doctor.email}" />
		        	<c:set var="mobile" value="${doctor.phoneNo}" />
		        	<c:set var="spec" value="${doctor.specialization}" />
		        	<c:set var="work" value="${doctor.work}" />
		        	<c:set var="pass" value="${doctor.password}" />
		            <tr>
		                <td>${doctor.id}</td>
		                <td>${doctor.fullName}</td>
		                <td>${doctor.email}</td>
		                <td>${doctor.phoneNo}</td>
		                <td>${doctor.specialization}</td>
		                <td>${doctor.work}</td>
		                <td style="display:flex; justify-item: center;">
		                
		                	<c:url value="update_doctor_details.jsp" var="doctorUpdate">
				           		<c:param name="dId" value="${dId}"/>
				           		<c:param name="fName" value="${fName}"/>
				           		<c:param name="email" value="${email}"/>
				           		<c:param name="mobile" value="${mobile}"/>
				           		<c:param name="spec" value="${spec}"/>
				           		<c:param name="work" value="${work}"/>
				           		<c:param name="pass" value="${pass}"/>
				           	</c:url>
				           	
				           	<div style="display: flex; margin: auto;">
								<form 
			                    	action="doctor_Info" 
			                    	method="post" 
			                    	>
			                        <input type="hidden" name="docId" value="${doctor.id}" />
			                        <input class="detailsbtn" type="submit" value="View" />
			                    </form>
			                	<form 
			                		action="${doctorUpdate}" 
			                		method="post" 
			                		onsubmit="return confirm('Are you sure you want to update this data?')"
			                		>
			                        <input type="hidden" name="id" value="${doctor.id}" />
			                        <input class="detailsbtn" type="submit" value="Update" />
			                    </form>
			                    <form 
			                    	action="docdelete" 
			                    	method="post" 
			                    	onsubmit="return confirm('Are you sure you want delete this account?')"
			                    	>
			                        <input type="hidden" name="docId" value="${doctor.id}" />
			                        <input class="delete_btn" type="submit" value="Delete" />
			                    </form>
				           	</div>
		                </td>
		            </tr>
		        </c:forEach>
		    </table>
		
		</div>
	</div>	
</body>
</html>
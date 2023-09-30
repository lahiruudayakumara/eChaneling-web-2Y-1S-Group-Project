<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div style="with: 80%;">
		<div>
			<h1>Doctors List</h1>
			<a href="log">Home</a>
		</div>
	
		<table border="0" style="width: 80%">
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
	                <td style="display:flex;">
	                
	                	<c:url value="update_doctor_details.jsp" var="doctorUpdate">
			           		<c:param name="dId" value="${dId}"/>
			           		<c:param name="fName" value="${fName}"/>
			           		<c:param name="email" value="${email}"/>
			           		<c:param name="mobile" value="${mobile}"/>
			           		<c:param name="spec" value="${spec}"/>
			           		<c:param name="work" value="${work}"/>
			           		<c:param name="pass" value="${pass}"/>
			           	</c:url>
			           	
			           	<form 
	                    	action="doctor_Info" 
	                    	method="post" 
	                    	>
	                        <input type="hidden" name="docId" value="${doctor.id}" />
	                        <input type="submit" value="View" />
	                    </form>
	                	<form 
	                		action="${doctorUpdate}" 
	                		method="post" 
	                		onsubmit="return confirm('Are you sure you want to update this data?')"
	                		>
	                        <input type="hidden" name="id" value="${doctor.id}" />
	                        <input type="submit" value="Update" />
	                    </form>
	                    <form 
	                    	action="docdelete" 
	                    	method="post" 
	                    	onsubmit="return confirm('Are you sure you want delete this account?')"
	                    	>
	                        <input type="hidden" name="docId" value="${doctor.id}" />
	                        <input type="submit" value="Delete" />
	                    </form>
	                </td>
	            </tr>
	            
	        </c:forEach>
	    </table>
	
	</div>
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="javax.servlet.http.HttpSession" %>
 <%@ page import="java.util.Objects" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		HttpSession session1 = request.getSession(false);
	
		if(session1 != null){
			session1.invalidate();
		}
		
		HttpSession session2 = request.getSession(false);
		
		if(session2 != null && !session2.isNew()){
			out.println("Session exists and is not new");
		}else{
			response.sendRedirect("doctorLogin.jsp");
		}
		
	%>
</body>
</html>
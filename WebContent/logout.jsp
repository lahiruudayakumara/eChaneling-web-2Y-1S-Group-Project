<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Objects" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="3;url=home.jsp"> <!-- Redirect to home.jsp after 3 seconds -->
    <title>Logout Page</title>
</head>
<body>


<%
    HttpSession session1 = request.getSession(false);
    if (session1 != null) {
        session1.invalidate();
    }
    
    HttpSession session2 = request.getSession(false);
    
    if (session2 != null && !session2.isNew()) {
        // Session exists and is not new
        out.println("Session exists and is not new.");
    } else {
        // No session or it's a new session
    	 response.sendRedirect("login.jsp");
    }
%>

</body>
</html>

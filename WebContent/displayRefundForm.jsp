<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.io.IOException" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.member.AppointmentsDBUtil" %>
<%@ page import="com.member.Refund" %>

<%
HttpSession session1 = request.getSession(false);
String userName = (session1 != null) ? (String) session1.getAttribute("UserName") : null;

HttpSession session9 = request.getSession();
	String ids = (String) session9.getAttribute("refID");
	
	int refId =Integer.parseInt(ids);

	try {
	List<Refund> refund = AppointmentsDBUtil.getRefundDetails(refId);
	if (!refund.isEmpty()) {
		request.setAttribute("refund",refund);
		RequestDispatcher dis = request.getRequestDispatcher("refundForm.jsp");
		dis.forward(request, response);
	}
	else{
            request.setAttribute("error", "Something went wrong.");
            RequestDispatcher errorDispatcher = request.getRequestDispatcher("refundNotFound.jsp");
            errorDispatcher.forward(request, response);
}	
}
catch(Exception e) {
	e.printStackTrace();
}	
%>
</body>
</html>
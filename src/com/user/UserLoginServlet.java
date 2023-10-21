package com.user;

import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Objects;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		HttpSession session1 = request.getSession(false);
	    String userName = (session1 != null) ? (String) session1.getAttribute("UserName") : null;
	    
	    
	    try {
	    	List<User> userDetails = RegisteruserDBUtil.getUserDetails(userName);
	    	if(!userDetails.isEmpty()) {
	    	request.setAttribute("userDetails", userDetails);
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
	    	}
	    	else {
	    		out.println("<script type='text/javascript'>");
				out.println("alert('you are not logged in');");
				out.println("location = 'login.jsp'");
				out.println("</script>");
	    	}
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	}

}

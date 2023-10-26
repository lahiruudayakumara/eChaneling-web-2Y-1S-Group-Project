package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterLoginServlet
 */
@WebServlet("/RegisterLoginServlet")
public class RegisterLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = RegisteruserDBUtil.validate(userName, password);
		
		HttpSession session = request.getSession(false);
				
		if (session != null) {
        	if(session.getAttribute("UserName") != null && session.getAttribute("Upassword") !=null) {
        		userName = (String) session.getAttribute("UserName");
            	password = (String) session.getAttribute("Upassword"); 
        	}     	      	
        } 
		
		if(isTrue == true) {
			session.setAttribute("UserName", userName);
			session.setAttribute("Upassword", password);
			response.sendRedirect("index.jsp");
			/*List<User> userDetails =  RegisteruserDBUtil.getUserDetails(userName);
			session.setAttribute("usernic", userName);
			request.setAttribute("userDetails", userDetails);
			request.getRequestDispatcher("user_info.jsp").forward(request, response);*/
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username and password is incorrect');");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		}	
	
	}

}

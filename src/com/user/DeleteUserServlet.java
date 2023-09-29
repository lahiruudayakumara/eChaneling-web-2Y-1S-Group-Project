package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession();
		String nic = (String) session.getAttribute("usernic");
				
		boolean isTrue;
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		isTrue = RegisteruserDBUtil.deleteUser(nic);  
		
		if(isTrue == true) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username and password is incorrect');");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		}
	}
	}



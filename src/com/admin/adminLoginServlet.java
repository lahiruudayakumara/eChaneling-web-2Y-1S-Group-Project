package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
			List<Admin> adminDetails = AdminDBUtil.validate(userName, password);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admin_dashboard.jsp");
			dis.forward(request, response);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}

package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdatePWServlet
 */
@WebServlet("/UpdatePWServlet")
public class UpdatePWServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String password = request.getParameter("confirmPassword");
	
		
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("usernic");
		
		
		boolean isTrue;
		
		isTrue = RegisteruserDBUtil.updatePassword(password, userName);
		
		if(isTrue == true) {
			List<User> userDetails = RegisteruserDBUtil.getUserDetails(userName) ;
			request.setAttribute("userDetails", userDetails);
			
			request.getRequestDispatcher("user_info.jsp").forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("sucess.jsp");
			dis2.forward(request, response);
		}
	}
}
	
	

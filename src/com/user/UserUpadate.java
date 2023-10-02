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
 * Servlet implementation class UserUpadate
 */
@WebServlet("/UserUpadate")
public class UserUpadate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tpno = request.getParameter("phone");
		String nic = request.getParameter("userNic");
		
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("usernic");
		
		int convort = Integer.parseInt(tpno);  
		
		boolean isTrue;
		
		isTrue = RegisteruserDBUtil.updateUser(name, email,address,convort,nic);
		
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

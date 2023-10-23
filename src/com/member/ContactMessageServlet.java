package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ContactMessageServlet
 */
@WebServlet("/ContactMessageServlet")
public class ContactMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		HttpSession session = request.getSession(false);
	    String userName = (session != null) ? (String) session.getAttribute("UserName") : null;
		
		boolean isTrue;
		
		isTrue = MemberDBUtil.dropMessage(name, email, phone, subject, message, userName);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("displaymsg.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			
		}
		
		
	}

}

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
 * Servlet implementation class UpdateContactDetailsServlet
 */
@WebServlet("/UpdateContactDetailsServlet")
public class UpdateContactDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session1 = request.getSession(false);
	    String userName = (session1 != null) ? (String) session1.getAttribute("UserName") : null;
	    
	    String id = request.getParameter("refId");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		boolean isTrue = AppointmentsDBUtil.updateContactDetails(id, email, phone, address);
		
		if (isTrue) {
			RequestDispatcher dis = request.getRequestDispatcher("displayappointments.jsp");
    		dis.forward(request, response);
		}
	}

}

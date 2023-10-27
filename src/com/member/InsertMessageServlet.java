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
@WebServlet("/InsertMessageServlet")
public class InsertMessageServlet extends HttpServlet {
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
		
		//HttpSession session = request.getSession(false);
	   // String userName = (session != null) ? (String) session.getAttribute("UserName") : null;
		
		HttpSession session = request.getSession(false);
	    String userName = (session != null) ? (String) session.getAttribute("UserName") : null;
		boolean isTrue;

		if ( userName != null) {
		    isTrue = MemberDBUtil.dropMessage(name, email, phone, subject, message, userName);
		    if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("displaymsg.jsp");
				dis.forward(request, response);
			}
		    else {
		    	request.setAttribute("error", "Failed to Insert your inquiry. try again!");
                RequestDispatcher errorDispatcher = request.getRequestDispatcher("msgInsertFailed.jsp");
                errorDispatcher.forward(request, response);
	    	}
		}
		else {
			request.setAttribute("error", "<h3>You are not logged in.<br>Please login first to contact us.</h3>");
            RequestDispatcher errorDispatcher = request.getRequestDispatcher("msgInsertFailed2.jsp");
            errorDispatcher.forward(request, response);
		}
		
	}

}

package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteMessageServlet
 */
@WebServlet("/DeleteMessageServlet")
public class DeleteMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("msgid");
		
		boolean isTrue = MemberDBUtil.deleteMessage(id);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("displaymsg.jsp");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("error", "Failed to delete your inquiry. try again!");
            RequestDispatcher errorDispatcher = request.getRequestDispatcher("msgDeleteFailed.jsp");
            errorDispatcher.forward(request, response);
		}
	
	}

}

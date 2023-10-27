package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateMessageServlet")
public class UpdateMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("msgid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		boolean isTrue = MemberDBUtil.updateMessage(id, name, email, phone, subject, message);
		
		try {
			if(isTrue==true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("displaymsg.jsp");
	    		dis.forward(request, response);
			}
			else {
				request.setAttribute("error", "Failed to update your inquiry. try again!");
                RequestDispatcher errorDispatcher = request.getRequestDispatcher("msgUpdateFailed.jsp");
                errorDispatcher.forward(request, response);
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}

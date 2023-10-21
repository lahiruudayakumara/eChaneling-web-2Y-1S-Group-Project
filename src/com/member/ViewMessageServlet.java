package com.member;

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
 * Servlet implementation class ViewMessegeServlet
 */
@WebServlet("/ViewMessageServlet")
public class ViewMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
	    String userName = (session != null) ? (String) session.getAttribute("UserName") : null;
	    
		
	    try {
	    	List<Member> messages = Member.view(userName);
	    	if (!messages.isEmpty()) {
	    		request.setAttribute("messages",messages);
	    		RequestDispatcher dis = request.getRequestDispatcher("myMessages.jsp");
	    		dis.forward(request, response);
    		}
    		else{
	                request.setAttribute("error", "No messages were found for the given user.");
	                RequestDispatcher errorDispatcher = request.getRequestDispatcher("msgNotFound.jsp");
	                errorDispatcher.forward(request, response);
	    }	
    	}
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
		
	}

}

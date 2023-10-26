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
 * Servlet implementation class ViewAppointmentsDetailsServlet
 */
@WebServlet("/ViewAppointmentsDetailsServlet")
public class ViewAppointmentsDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);
	    String userName = (session != null) ? (String) session.getAttribute("UserName") : null;
		
	    try {
	    	List<Patient> appDetails = Patient.view(userName);
	    	/*if (!appDetails.isEmpty()) {
	    		request.setAttribute("appDetails",appDetails);
	    		RequestDispatcher dis = request.getRequestDispatcher("MyAppointments.jsp");
	    		dis.forward(request, response);
    		}
    		else{
	                request.setAttribute("error", "No Appointments were found for the given user.");
	                RequestDispatcher errorDispatcher = request.getRequestDispatcher("appNotFound.jsp");
	                errorDispatcher.forward(request, response);
	    }	*/
	    	request.setAttribute("appDetails",appDetails);
    		RequestDispatcher dis = request.getRequestDispatcher("MyAppointments.jsp");
    		dis.forward(request, response);
    	}
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
	    
	}

}

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
 * Servlet implementation class CancelAppointmentServlet
 */
@WebServlet("/CancelAppointmentServlet")
public class CancelAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String appId = request.getParameter("appointment_no");
		String refId = request.getParameter("reference_no");
		String name = request.getParameter("first_name" );
		String nic = request.getParameter("nic" );
		

		HttpSession session1 = request.getSession(false);
	    String userName = (session1 != null) ? (String) session1.getAttribute("UserName") : null;

	    int convAppId = 0;
		int convRefId= 0;

		try {
		    if (appId != null && !appId.isEmpty()) {
		        convAppId = Integer.parseInt(appId);
		    }
		    if (refId != null && !refId.isEmpty()) {
		        convRefId = Integer.parseInt(refId);
		    }
		}
		catch (NumberFormatException e) {
		    e.printStackTrace();
		}
		

		
  		String ids = refId;
		HttpSession session9 = request.getSession();
		session9.setAttribute("refID", ids);
  		
		boolean isTrue = AppointmentsDBUtil.deleteAppointment(convRefId);
		boolean isThatTrue = AppointmentsDBUtil.ResetAvilability(convAppId);
		boolean isItTrue = AppointmentsDBUtil.createReund(convAppId, convRefId, name, nic,userName);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("displayRefundForm.jsp");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("error", "Failed to cancel your appointment.");
            RequestDispatcher errorDispatcher = request.getRequestDispatcher("appDeleteFailed.jsp");
            errorDispatcher.forward(request, response);
		}
		
		
	}

}

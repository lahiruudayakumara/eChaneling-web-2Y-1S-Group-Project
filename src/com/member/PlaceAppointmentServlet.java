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
 * Servlet implementation class PlaceAppointmentServlet
 */
@WebServlet("/PlaceAppointmentServlet")
public class PlaceAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//from patientDetailsForm
		String patName = request.getParameter("first_name");
		String patNIC = request.getParameter("nic");
		String patAge = request.getParameter("age");
		String patGender = request.getParameter("gender");
		String patEmail = request.getParameter("email");
		String patPhone = request.getParameter("phone");
		String patAddress = request.getParameter("address");
		
		String appId = request.getParameter("appointment_no");
		String docName = request.getParameter("doctor");
		String spec = request.getParameter("specialization");
		String hosName = request.getParameter("hospital");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String totFee = request.getParameter("total_fee");
		
		int convAppId = 0;
		int convPatAge = 0;

		try {
		    if (appId != null && !appId.isEmpty()) {
		        convAppId = Integer.parseInt(appId);
		    }
		    if (patAge != null && !patAge.isEmpty()) {
		        convPatAge = Integer.parseInt(patAge);
		    }
		}
		catch (NumberFormatException e) {
		    e.printStackTrace();
		}
		
		
		String id = appId;
		HttpSession session10 = request.getSession();
		session10.setAttribute("appID", id);

		HttpSession session = request.getSession(false);
	    String userName = (session != null) ? (String) session.getAttribute("UserName") : null;
	    
			if(userName!=null) {
				
		    boolean isTrue = AppointmentsDBUtil.placeAppointment(convAppId, userName, docName, spec, hosName, date, time,patName, patNIC,patGender,convPatAge,patEmail,patPhone,patAddress);
			
		    if(isTrue==true) {
		    	AppointmentsDBUtil.UpdateAvilability(convAppId);
		    	RequestDispatcher dis = request.getRequestDispatcher("payment.jsp");
				dis.forward(request, response);
		    }
		    else {
		    	request.setAttribute("error", "Failed to insert your details.");
	            RequestDispatcher errorDispatcher = request.getRequestDispatcher("patDetailsinsertFailed.jsp");
	            errorDispatcher.forward(request, response);
		    } 	
			}
			else {
				request.setAttribute("error", "<b>You Are not Logged In.<br>Please login first to make an appointment.</b>");
	            RequestDispatcher error2Dispatcher = request.getRequestDispatcher("notLoggedIN.jsp");
	            error2Dispatcher.forward(request, response);
			}
	}
}

package com.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchAppointmentServlet
 */
@WebServlet("/SearchAppointmentServlet")
public class SearchAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String doctorName = request.getParameter("doctor-name");
		String specialization = request.getParameter("specialization");
		String hospitalName = request.getParameter("hospital");
		String date = request.getParameter("date");
		
		
		try {
		List<Appointments> appDetails = AppointmentsDBUtil.searchAppointment(doctorName, specialization, hospitalName, date);
		if (!appDetails.isEmpty()) {
		request.setAttribute("appDetails",appDetails);
		RequestDispatcher dis = request.getRequestDispatcher("AvailableAppoinments.jsp");
		dis.forward(request, response);}
		else{
            // No results found; set an error message and forward to an error JSP
            request.setAttribute("error", "No appointments found matching the criteria.");
            RequestDispatcher errorDispatcher = request.getRequestDispatcher("NoResult.jsp");
            errorDispatcher.forward(request, response);
        } 
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}

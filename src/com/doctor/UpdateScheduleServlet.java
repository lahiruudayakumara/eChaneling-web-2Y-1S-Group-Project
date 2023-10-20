package com.doctor;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateScheduleServlet
 */
@WebServlet("/UpdateScheduleServlet")
public class UpdateScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String docName = request.getParameter("docName");
		String docRegNum = request.getParameter("docRegNum");
		String date = request.getParameter("date");
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		String location = request.getParameter("location");
		String specialization = request.getParameter("specialization");
		int docCharge = Integer.parseInt(request.getParameter("docCharge"));
		String availability = request.getParameter("availability");
		
		boolean isTrue;
		
		isTrue = UpdateScheduleDBUtil.updateSchedule(id, docName, docRegNum, date, startTime, endTime, 
				location, specialization, docCharge, availability);
		
		if(isTrue == true) {
			List<Schedule> schedule = ReadSheduleDBUtil.getSchedule(docRegNum);
			request.setAttribute("schedule", schedule);
			
			RequestDispatcher dis = request.getRequestDispatcher("schedule.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}

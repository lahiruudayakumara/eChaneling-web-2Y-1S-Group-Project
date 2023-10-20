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
 * Servlet implementation class ReadScheduleServlet
 */
@WebServlet("/ReadScheduleServlet")
public class ReadScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Schedule> schedule = ReadSheduleDBUtil.getSchedule();
		request.setAttribute("schedule", schedule);
		
		RequestDispatcher dis = request.getRequestDispatcher("schedule.jsp");
		dis.forward(request, response);
	}

}

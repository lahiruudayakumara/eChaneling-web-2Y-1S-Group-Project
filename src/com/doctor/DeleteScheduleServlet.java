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
 * Servlet implementation class DeleteScheduleServlet
 */
@WebServlet("/DeleteScheduleServlet")
public class DeleteScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("delete"));
		String docRegNum = request.getParameter("docRegNum");
		
		boolean isTrue;
		
		isTrue = DeleteScheduleDBUtil.deleteSchedule(id);
		
		if(isTrue == true) {
			
			List<Schedule> schedule = ReadSheduleDBUtil.getSchedule(docRegNum);
			request.setAttribute("schedule", schedule);
			
			RequestDispatcher dis = request.getRequestDispatcher("schedule.jsp");
			dis.forward(request, response);
		}
		else {
			request.setAttribute("error", "Failed to delete the record");
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}

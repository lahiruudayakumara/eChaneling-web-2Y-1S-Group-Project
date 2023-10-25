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
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option = request.getParameter("option");
		String value = request.getParameter("value");
		String docRegNum = request.getParameter("docRegNumber");
		
		SearchFactory searchFac = new SearchFactory();
		
		ISearchDBUtil iSearchDb = searchFac.get(option);
		
		if(option.equalsIgnoreCase("date")) {
		
			List<Schedule> schedule = iSearchDb.getSchedule(value, docRegNum);
			request.setAttribute("schedule", schedule);
			
			RequestDispatcher dis = request.getRequestDispatcher("schedule.jsp");
			dis.forward(request, response);
		}
		else if(option.equalsIgnoreCase("fee")){
			
			List<Schedule> schedule = iSearchDb.getSchedule(value, docRegNum);
			request.setAttribute("schedule", schedule);
			
			RequestDispatcher dis = request.getRequestDispatcher("schedule.jsp");
			dis.forward(request, response);
			
		}
		else if(option.equalsIgnoreCase("time")) {
			
			List<Schedule> schedule = iSearchDb.getSchedule(value, docRegNum);
			request.setAttribute("schedule", schedule);
			
			RequestDispatcher dis = request.getRequestDispatcher("schedule.jsp");
			dis.forward(request, response);
		}
	}

}

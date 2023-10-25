package com.doctor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddScheduleServlet
 */
@WebServlet("/AddScheduleServlet")
public class AddScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String docName = request.getParameter("docName");
		String docRegNum = request.getParameter("docRegNum");
		String date = request.getParameter("date");
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		String location = request.getParameter("location");
		String specialization = request.getParameter("specialization");
		int docCharge = Integer.parseInt(request.getParameter("docCharge"));
		String availability = request.getParameter("availability");
		

		boolean isTrue = scheduleDBUtil.createSchedule(docName, docRegNum, date, startTime, endTime, 
				location, specialization, docCharge, availability);

		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Schedule Created Successfully !');");
			out.println("location='doctorAddSchedule.jsp'");
			out.println("</script>");
			
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}

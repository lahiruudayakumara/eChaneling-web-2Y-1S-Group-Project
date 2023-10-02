package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDoctorServlet
 */
@WebServlet("/AddDoctorServlet")
public class AddDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = 0;
		
		//getParameters in addDoctors.jsp page
		String name = request.getParameter("fName");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("configPassword");
		String spec = request.getParameter("spec");
		String work = request.getParameter("work");
		
		boolean isTrue;
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//insert data
		isTrue = DoctorDBUtil.addDoctor(id, name,email, mobile, password, spec, work);
		
		//Check database update Istrue
		if(isTrue == true) {
			List<Doctor> doctorList = DoctorDBUtil.getDoctorDetails();
			request.setAttribute("doctorList", doctorList);
			request.getRequestDispatcher("doctorDetails.jsp").forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Docor Update Unsucessful! Try Again.');");
			out.println("location = 'log'"); //Redirect admin_dashboard.jsp  
			out.println("</script>");
		}
	}
}

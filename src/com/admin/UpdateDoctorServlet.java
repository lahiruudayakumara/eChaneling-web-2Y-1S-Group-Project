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
 * Servlet implementation class UpdateDoctorServlet
 */
@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean isTrue;

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String id = request.getParameter("docId");
		String name = request.getParameter("fName");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String spec= request.getParameter("spec");
		String work = request.getParameter("work");
		String choose = request.getParameter("choose");
		String currentPass = request.getParameter("currentPassword");
		String confirmPass = request.getParameter("confirmPassword");

		int convertDid = Integer.parseInt(id);

		if(choose == "true"){
			isTrue = DoctorDBUtil.updatedoctor(convertDid, name, email, mobile, confirmPass, spec, work);
		} else {
			isTrue = DoctorDBUtil.updatedoctor(convertDid, name, email, mobile, currentPass, spec, work);
		}
				
		if(isTrue == true) {
			List<Doctor> doctorList = DoctorDBUtil.getDoctorInfo(convertDid);
    		request.setAttribute("doctorList", doctorList);
    		request.getRequestDispatcher("doctor_info.jsp").forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Docor Update Unsucessful! Try Again.');");
			out.println("location = 'log'");
			out.println("</script>");
		}
	}
}

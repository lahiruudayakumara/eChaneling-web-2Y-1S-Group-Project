package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteDoctorServlet
 */
@WebServlet("/DeleteDoctorServlet")
public class DeleteDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("docId");
		int cid = Integer.parseInt(id);
		boolean isTrue;
		
		isTrue = DoctorDBUtil.deleteDoctor(cid);
		
		if(isTrue == true) {
			List<Doctor> doctorList = DoctorDBUtil.getDoctorDetails();
			request.setAttribute("doctorList", doctorList);
			request.getRequestDispatcher("doctorDetails.jsp").forward(request, response);
		} else {
			List<Doctor> docDetails = DoctorDBUtil.getDoctorDetails();
			request.setAttribute("docDetails", docDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("doctorProfile.jsp");
			dis.forward(request, response);
		}
	}

}

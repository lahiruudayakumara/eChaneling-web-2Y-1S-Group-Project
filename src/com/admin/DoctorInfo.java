package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoctorInfo
 */
@WebServlet("/DoctorInfo")
public class DoctorInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("docId");
		int cid = Integer.parseInt(id);
		
		HttpSession session = request.getSession(false);
		
		if (session != null) {
        	if(session.getAttribute("adminUserName") != null && session.getAttribute("adminPassword") !=null) {
        		List<Doctor> doctorList = DoctorDBUtil.getDoctorInfo(cid);
        		request.setAttribute("doctorList", doctorList);
        		request.getRequestDispatcher("doctor_info.jsp").forward(request, response);
        	} else {
        		response.sendRedirect("admin_login.jsp");
        	}
        } else {
        	response.sendRedirect("admin_login.jsp");
        }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

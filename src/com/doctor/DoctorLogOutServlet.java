package com.doctor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoctorLogOutServlet
 */
@WebServlet("/DoctorLogOutServlet")
public class DoctorLogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        
        if (session.getAttribute("email") != null) {
        	session.invalidate();
        	response.sendRedirect("doctorLogin.jsp");
        } else {
        	response.getWriter().println("You are not logged in");
        }
	}

}

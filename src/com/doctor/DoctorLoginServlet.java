package com.doctor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoctorLogin
 */
@WebServlet("/DoctorLogin")
public class DoctorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isTrue = DoctorLoginDBUtil.validate(email, password);
		
		if(isTrue == true) {
			List<SpecalizedDoctor> spDocDetails = DoctorLoginDBUtil.getDoctor(email);
			request.setAttribute("spDocDetails", spDocDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("doctorAccount.jsp");
			dis.forward(request, response);
			
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your user ID or password is incorrect');");
			out.println("location='doctorLogin.jsp'");
			out.println("</script>");
			
		}
		
	}

}

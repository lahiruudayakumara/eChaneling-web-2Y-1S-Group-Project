package com.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateAdminServlet
 */
@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		boolean isTrue;

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//get parameter in update_doctor_details.jsp
		String id = request.getParameter("adminId");
		String name = request.getParameter("fName");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String uName = request.getParameter("uName");
		String uRole = request.getParameter("uRole");
		String choose = request.getParameter("choose");
		String currentPass = request.getParameter("currentPassword");
		String confirmPass = request.getParameter("confirmPassword");

		int convertDid = Integer.parseInt(id);

		if(choose.equals("true")){
			isTrue = AdminDBUtil.updateAdmin(convertDid, name, email, mobile, confirmPass, uName, uRole);
		} else  {
			System.out.println(choose);
			isTrue = AdminDBUtil.updateAdmin(convertDid, name, email, mobile, currentPass, uName, uRole);
		}
				
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Admin Details Update Sucessful!');");
			out.println("location = 'admin_logout'");
			out.println("</script>");
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Admin Details Update Unsucessful! Try Again.');");
			out.println("location = 'log'");
			out.println("</script>");
		}
	}
}

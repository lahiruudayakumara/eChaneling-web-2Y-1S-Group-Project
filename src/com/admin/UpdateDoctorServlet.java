package com.admin;

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
 * Servlet implementation class UpdateDoctorServlet
 */
@WebServlet("/UpdateDoctorServlet")
public class UpdateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public UpdateDoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
			List<Doctor> docDetails = DoctorDBUtil.getDoctorDetails();
			request.setAttribute("docDetails", docDetails);
			RequestDispatcher dis = request.getRequestDispatcher("doctorProfile.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username and password is incorrect');");
			out.println("location = 'admin_login.jsp'");
			out.println("</script>");
		}
	}

}

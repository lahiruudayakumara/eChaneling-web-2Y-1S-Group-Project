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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = null;
		String password = null;
		
		boolean nameInput = true;
		boolean passInput = true;
				
		boolean isTrue;
		
		HttpSession session = request.getSession(false);
        
		//To check if session are available
        if (session != null) {
        	if(session.getAttribute("adminUserName") != null && session.getAttribute("adminPassword") !=null) {
        		userName = (String) session.getAttribute("adminUserName");
            	password = (String) session.getAttribute("adminPassword"); 
        	}     	      	
        } 
		
        //To check if userName input are available
		if(request.getParameter("uName") != null) {
			userName = request.getParameter("uName");
		} else {
			nameInput = false;
		}
		
		//To check if password input are available
		if(request.getParameter("pass") != null) {
			password = request.getParameter("pass");
		} else {
			passInput = false;
		}
		
		isTrue = AdminDBUtil.validate(userName, password);
		
		if(isTrue == true) {
			session.setAttribute("adminUserName", userName);
			session.setAttribute("adminPassword", password);
			
			List<Admin> adminDetails =  AdminDBUtil.getAdmin(userName);
			request.setAttribute("adminDetails", adminDetails);
			
			List<Count> countView = AdminDBUtil.getCount();
			request.setAttribute("countView", countView);
			
			RequestDispatcher dis = request.getRequestDispatcher("admin_dashboard.jsp");
			dis.forward(request, response);
			
		} else if(nameInput == false && passInput == false) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username and password is incorrect');");
			out.println("location = 'admin_login.jsp'");
			out.println("</script>");
		} else {
			response.sendRedirect("admin_login.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
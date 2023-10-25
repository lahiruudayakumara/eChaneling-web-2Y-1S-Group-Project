package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisteruserServlet
 */
@WebServlet("/RegisteruserServlet")
public class RegisteruserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String Name = request.getParameter("fName");
		String userNic = request.getParameter("nic");
		String userEmail = request.getParameter("email");
		String userTp = request.getParameter("phoneNumber");
		String userAddress = request.getParameter("address");
		String password = request.getParameter("pass");
		String userName = request.getParameter("username");
		
		int conTpno = Integer.parseInt(userTp);
		
		boolean isTrue;
		
		isTrue = RegisteruserDBUtil.addUserInfo( userNic,Name, userAddress, userEmail, conTpno, password, userName );
		
		if(isTrue == true) {
			HttpSession session = request.getSession();
			List<User> userDetails =  RegisteruserDBUtil.getUserDetails(userName);
			session.setAttribute("usernic", userName);
			request.setAttribute("userDetails", userDetails);
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username and password is incorrect');");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		}	
	}
	
	
		
		
		
	}



package com.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ApplyRefundServlet
 */
@WebServlet("/ApplyRefundServlet")
public class ApplyRefundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session1 = request.getSession(false);
	    String userName = (session1 != null) ? (String) session1.getAttribute("UserName") : null;
	    
	    HttpSession session9 = request.getSession();
  		String ids = (String) session9.getAttribute("refID");
  		
  		int refId =Integer.parseInt(ids);
	    
  		try {
	    	List<Refund> refund = AppointmentsDBUtil.getRefundDetails(refId);
	    	if (!refund.isEmpty()) {
	    		request.setAttribute("refund",refund);
	    		RequestDispatcher dis = request.getRequestDispatcher("refundForm.jsp");
	    		dis.forward(request, response);
    		}
    		else{
	                request.setAttribute("error", "Something went wrong.");
	                RequestDispatcher errorDispatcher = request.getRequestDispatcher("refundNotFound.jsp");
	                errorDispatcher.forward(request, response);
	    }	
    	}
	    catch(Exception e) {
	    	e.printStackTrace();
	    }	
		
	}

}

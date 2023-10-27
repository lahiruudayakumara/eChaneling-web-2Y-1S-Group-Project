package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/MakePaymentServlet")
public class MakePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String cardType = request.getParameter("payment-method");
  		String cardNo = request.getParameter("card-number");
  		String cardExDate = request.getParameter("expiration");
  		String cvv = request.getParameter("cvv");
  		String cardHolder = request.getParameter("card_holder_name");
  		
  		HttpSession session10 = request.getSession();
  		String id = (String) session10.getAttribute("appID");
  		
  		int convAppID = Integer.parseInt(id);
  		
  		boolean isValid = PaymentDBUtil.validateCardDetails(cardType, cardNo, cardExDate, cvv, cardHolder);
  		
  		if(isValid) {
			request.setAttribute("success", "Payment Successful!");
			RequestDispatcher dis = request.getRequestDispatcher("paymentSuccess.jsp");
			dis.forward(request, response);	
			
		}
  		else {
  			boolean isDeleted = AppointmentsDBUtil.DeleteAppointmentDetails(convAppID);
  			boolean isInvalid = AppointmentsDBUtil.ResetAvilability(convAppID);
  			request.setAttribute("unsuccess", "Payment Unsuccessful!");
			RequestDispatcher dis = request.getRequestDispatcher("paymentUnsuccess.jsp");
			dis.forward(request, response);
		    }
  		}
	}



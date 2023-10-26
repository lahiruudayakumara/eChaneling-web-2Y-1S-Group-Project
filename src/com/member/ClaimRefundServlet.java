package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ClaimRefundServlet
 */
@WebServlet("/ClaimRefundServlet")
public class ClaimRefundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String refundId = request.getParameter("claim_no");
		String refId = request.getParameter("ref_no");
		String appId = request.getParameter("app_no");
		String patName = request.getParameter("name");
		String patNic = request.getParameter("nic" );
		String refundReason = request.getParameter("reason");
		String bankName = request.getParameter("bank_name" );
		String branchName = request.getParameter("branch_name");
		String accHolderName = request.getParameter("acc_holder_name");
		String accNo = request.getParameter("acc_no");
		
		int conRefundId=Integer.parseInt(refundId);
		int conRefId=Integer.parseInt(refId);
		int conAppId=Integer.parseInt(appId);
		
		
		boolean isTrue = AppointmentsDBUtil.claimRefund(conRefundId, conRefId, conAppId, patName, patNic, refundReason, bankName, branchName, accHolderName, accNo); 
		
		if(isTrue==true) {
			request.setAttribute("success", "Refund Request Submitted Successfully!");
            RequestDispatcher errorDispatcher = request.getRequestDispatcher("refundReqSuccess.jsp");
            errorDispatcher.forward(request, response);
		}
		else {
			request.setAttribute("error", "Failed to submit Refund Request. Try again!");
            RequestDispatcher errorDispatcher = request.getRequestDispatcher("refundReqUnuccess.jsp");
            errorDispatcher.forward(request, response);
		}
		
	}

}

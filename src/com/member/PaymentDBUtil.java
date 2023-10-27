package com.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class PaymentDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validateCardDetails(String cardType,String cardNo,String expDate,String cvv, String cardHolderName ) {
		
		boolean isSuccess = false;
		
		try {
			
			// Establish a database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Start building sql query
			String sql = "SELECT * FROM card_details WHERE card_type='"+cardType+"' and card_number='"+cardNo+"' and expire_date='"+expDate+"' and cvv='"+cvv+"' and card_holder='"+cardHolderName+"' ";
			
			// Execute the SQL query
			rs = stmt.executeQuery(sql);
			
			isSuccess= rs.next();
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;

	}
}

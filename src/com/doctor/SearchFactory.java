package com.doctor;

public class SearchFactory {
	public ISearchDBUtil get(String type) {
		if(type == null){
	         return null;
	      }		
	      else if(type.equalsIgnoreCase("date")){
	         return new DateDBUtil();
	         
	      }
	      else if(type.equalsIgnoreCase("fee")) {
	    	  return new FeeDBUtil();
	      }
		
	      else if(type.equalsIgnoreCase("time")) {
	    	  return new TimeDBUtil();
	      }
		
		return null;
	}
}

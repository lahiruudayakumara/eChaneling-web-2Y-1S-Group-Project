package com.member;

public class Refund {
	private int refundId;
	private int refId;
	private int appId;
	private String name;
	private String nic;
	private String username;
	
	public Refund(int refundId,int refId,int appId,String name,String nic,String username) {
		this.refundId = refundId;
		this.refId = refId;
		this.appId = appId;
		this.name = name;
		this.nic = nic;
		this.username = username;
	}

	public int getRefundId() {
		return refundId;
	}
	
	public int getRefId() {
		return refId;
	}

	public int getAppId() {
		return appId;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}
	
	public String getUsername() {
		return username;
	}
}

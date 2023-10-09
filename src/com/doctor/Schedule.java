package com.doctor;

public class Schedule {
	private int scheduleId;
	private String docName;
	private String docRegNum;
	private String date;
	private String startTime;
	private String endTime;
	private String location;
	private String specialization;
	
	public Schedule(int scheduleId, String docName, String docRegNum, String date, String startTime, String endTime,
			String location, String specialization) {
		this.scheduleId = scheduleId;
		this.docName = docName;
		this.docRegNum = docRegNum;
		this.date = date;
		this.startTime = startTime;
		this.endTime = endTime;
		this.location = location;
		this.specialization = specialization;
		
	}

	public int getScheduleId() {
		return scheduleId;
	}

	public String getDocName() {
		return docName;
	}

	public String getDocRegNum() {
		return docRegNum;
	}

	public String getDate() {
		return date;
	}

	public String getStartTime() {
		return startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public String getLocation() {
		return location;
	}

	public String getSpecialization() {
		return specialization;
	}

}

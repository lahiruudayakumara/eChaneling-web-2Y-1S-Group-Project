package com.doctor;

import java.util.List;

public interface ISearchDBUtil {
	public List<Schedule> getSchedule(String value, String doctorRegNum);
}

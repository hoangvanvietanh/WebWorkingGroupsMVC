package com.java.vakapu.services;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.springframework.stereotype.Service;

@Service
public class DateServices {

	public String getDateNow()
	{
		DateTimeFormatter date = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		LocalDateTime local = LocalDateTime.now();
		String time = date.format(local);
		return time;
	}
	
	public int caculatorDue(String date) throws ParseException 
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		long millis=System.currentTimeMillis();  
		Date dateNow=new Date(millis);  
		Date dateObj = sdf.parse(date);
		
		DateTime dt1 = new DateTime(dateObj);
		DateTime dt2 = new DateTime(dateNow);
		int results = Days.daysBetween(dt2, dt1).getDays();
		
		return results;
	}
	
	public int caculatorDayDo(String date) throws ParseException 
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		long millis=System.currentTimeMillis();  
		Date dateNow=new Date(millis);  
		Date dateObj = sdf.parse(date);
		
		DateTime dt1 = new DateTime(dateObj);
		DateTime dt2 = new DateTime(dateNow);
		int results = Days.daysBetween(dt1, dt2).getDays();
		
		return results;
	}
}

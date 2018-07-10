package com.tworks.controller;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
public class test {

	public static void main(String[] args) {
		// TODO Auto-""generated method stub
		 
		  //  Timestamp stamp = new Timestamp(System.currentTimeMillis());
		   // Date date = new Date(1515941291000L * 1000);
		  //  System.out.println(date);
		  
		    Calendar cal = Calendar.getInstance();
		    cal.setTimeInMillis(1515941291000L * 1000);
		    System.out.println(cal.getTime());

	}

}

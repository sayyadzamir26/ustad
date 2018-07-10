package com.tworks.controller;
import java.util.Date;
import org.springframework.scheduling.annotation.Scheduled;
 
public class DemoServiceBasicUsageFixedDelay
{
	@Scheduled(fixedDelay = 1000)
	public void scheduleFixedDelayTask() {
	    System.out.println(
	      "Fixed delay task - " + System.currentTimeMillis() / 1000);
	}
}
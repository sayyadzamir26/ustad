package com.tworks.controller;
//import org.springframework.scheduling.annotation.Scheduled;

import com.tworks.dao.JobService;
import com.tworks.dao.RoomiesService;
import com.tworks.utility.SendEmail;
public class SchedularApp {
	
	
	public void cleanJobNRoomNotify() {
		 RoomiesService roomiesService=new RoomiesService();    
		 JobService jobService=new JobService();    
		 
		 jobService.deleteJobNotificy();
		 roomiesService.deleteRoomNotificy();
		 
		 System.out.println("Executing Clean Room...");
		 		SendEmail sent = new SendEmail("Zamir", "kabeersayyad27@gmail.com", "2880");
				sent.sentShedularEmail();
	}	
	/*@Scheduled(fixedRate=86400000)
	public void arrangeBook(){
		
	

	}*/	
} 
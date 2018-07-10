package com.tworks.controller;

import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import com.tworks.dao.JobService;
import com.tworks.domain.JobNotify;



@RestController
@RequestMapping("/service/getNotifiy/")
public class JobNotificationController {
	
	//UserService userService=new UserService();
	 JobService jobService=new JobService();    	    
	@RequestMapping(value = "/{id}", method = RequestMethod.GET,headers="Accept=application/json")
	public JobNotify getUser(@PathVariable int id) {
		JobNotify user=jobService.getUserById(id);
		return user;
	}
	
	@RequestMapping(method = RequestMethod.GET,headers="Accept=application/json")
	public List<JobNotify> getAllUsers() {
		List<JobNotify> users=jobService.getAllUsers();
		return users;
	}
	  @RequestMapping(method = RequestMethod.POST)
	    public ResponseEntity<Void> create(@RequestBody JobNotify user, UriComponentsBuilder ucBuilder){
	        System.out.printf("creating new user: {}", user);

	        if (jobService.exists(user)){
	        	  return new ResponseEntity<Void>(HttpStatus.CONFLICT);
	        }

	        jobService.insertNotificy(user);

	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }
	  
	  

	   @RequestMapping(value="/job",method = RequestMethod.GET)
	   public String printHello(ModelMap model) {
	      model.addAttribute("message", "Hello Spring MVC Framework!");

	      return "@@@ We Are Working on Job Search @@@@";
	   }
	 	 
}


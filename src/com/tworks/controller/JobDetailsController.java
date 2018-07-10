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
import org.springframework.web.util.UriComponentsBuilder;

import com.tworks.dao.JobDetailsService;
import com.tworks.dao.JobService;
import com.tworks.domain.JobNotify;



@RestController
@RequestMapping("/get_job/")
public class JobDetailsController {
	
	//UserService userService=new UserService();
	JobDetailsService jobService=new JobDetailsService();    	    
	@RequestMapping(value = "/{id}", method = RequestMethod.GET,headers="Accept=application/json")
	public List<JobNotify> getUser(@PathVariable String id) {
		List<JobNotify> user=jobService.getAllDataAdminByEmaiId(id);
		return user;
	}
	
	@RequestMapping(value = "/get/{id}",method = RequestMethod.GET,headers="Accept=application/json")
	public List<JobNotify> getAllUsers(@PathVariable String id) {
		List<JobNotify> users=jobService.getAllUsers(id);
		return users;
	}
	  @RequestMapping(method = RequestMethod.POST)
	    public ResponseEntity<Void> create(@RequestBody JobNotify user, UriComponentsBuilder ucBuilder){
	        if (jobService.exists(user)){
	        	  return new ResponseEntity<Void>(HttpStatus.CONFLICT);
	        }

	        jobService.insertNotificy(user);
	        System.out.println("Job Inserted Successfully"+user.toString());
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


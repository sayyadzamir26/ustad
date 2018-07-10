package com.tworks.controller;
import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.tworks.dao.JobDetailsService;
import com.tworks.dao.JobService;
import com.tworks.dao.RoomiesService;
import com.tworks.domain.JobNotify;
import com.tworks.domain.Roomies;



@RestController
@RequestMapping("/get_room/")
public class RoomiesController {
	
	//UserService userService=new UserService();
	 RoomiesService roomiesService=new RoomiesService();    	    
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET,headers="Accept=application/json")
	public List<JobNotify> getUser(@PathVariable String id) {
		List<JobNotify> user=roomiesService.getAllDataAdminByEmaiId(id);
		return user;
	}
	
	
	
	@RequestMapping(value = "/get/{id}",method = RequestMethod.GET,headers="Accept=application/json")
	public List<Roomies> getAllUsers(@PathVariable String id) {
		List<Roomies> users=roomiesService.getAllUsers(id);
		return users;
	}
	  @RequestMapping(method = RequestMethod.POST)
	    public ResponseEntity<Void> create(@RequestBody Roomies user, UriComponentsBuilder ucBuilder){
	        System.out.printf("creating new user: {}", user);

	        if (roomiesService.exists(user)){
	        	  return new ResponseEntity<Void>(HttpStatus.CONFLICT);
	        }

	        roomiesService.insertNotificy(user);

	        HttpHeaders headers = new HttpHeaders();
	        headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(user.getId()).toUri());
	        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	    }
	  
	  @RequestMapping("/room")
	  public String jobinfo() {

	      return "@@@ We Are Working on Room Search @@@@";
	  } 
	  
}
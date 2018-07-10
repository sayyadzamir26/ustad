package com.tworks.controller;
import java.rmi.RemoteException;
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

import com.tworks.dao.UserService;
import com.tworks.domain.User;

@RestController
@RequestMapping("/get_admin/")
public class AdminController {

	UserService _userService = new UserService();

	@RequestMapping(method = RequestMethod.GET, headers = "Accept=application/json")
	public List<User> getAllAdminUsers() throws RemoteException {
		List<User> users = _userService.getAllAdminUsers();
			return users;
	}


	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Void> createAdmin(@RequestBody User user,
			UriComponentsBuilder ucBuilder) {
		System.out.printf("creating new user: {}", user);

		if (_userService.exists(user)) {
			return new ResponseEntity<Void>(HttpStatus.CONFLICT);
		}

		_userService.insertAdminNotificy(user);

		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(ucBuilder.path("/user/{id}")
				.buildAndExpand(user.getId()).toUri());
		return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	}

	@RequestMapping(value = "{adminvalid}", method = RequestMethod.POST)
	public ResponseEntity<Void> adminvalidate(@RequestBody User user,
			UriComponentsBuilder ucBuilder) {
		System.out.printf("creating new user: {}", user.toString());

		if (_userService.exists(user)) {
			return new ResponseEntity<Void>(HttpStatus.CONFLICT);
		}

		boolean valid = _userService.getAdminvalidate(user);
		if (valid == true) {
			HttpHeaders headers = new HttpHeaders();
			headers.setLocation(ucBuilder.path("/user/{id}")
					.buildAndExpand(user.getId()).toUri());
			return new ResponseEntity<Void>(headers, HttpStatus.ACCEPTED);

		} else {
			HttpHeaders headers = new HttpHeaders();
			headers.setLocation(ucBuilder.path("/user/{id}")
					.buildAndExpand(user.getId()).toUri());
			return new ResponseEntity<Void>(headers, HttpStatus.UNAUTHORIZED);
		}
	}


	@RequestMapping(value = "/sent_admin_email", method = RequestMethod.POST)
	public ResponseEntity<Void> sentAdminEmail(@RequestBody User user,
			UriComponentsBuilder ucBuilder) {
		System.out.printf("Email User JSON: ", user.toString());
		// _userService.admindata();
		System.out.printf("Email id: ", user.getEmail());
		boolean email_valid = _userService.sendAdminEmail(user);
		if (email_valid == true) {

			HttpHeaders headers = new HttpHeaders();
			headers.setLocation(ucBuilder.path("/user/{id}")
					.buildAndExpand(user.getId()).toUri());
			return new ResponseEntity<Void>(headers, HttpStatus.ACCEPTED);
		} else {
			HttpHeaders headers = new HttpHeaders();
			headers.setLocation(ucBuilder.path("/user/{id}")
					.buildAndExpand(user.getId()).toUri());
			return new ResponseEntity<Void>(headers, HttpStatus.NOT_ACCEPTABLE);

		}
	}

}

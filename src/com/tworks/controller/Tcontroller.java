package com.tworks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("TC")
public class Tcontroller {
	
	@RequestMapping(method = RequestMethod.GET, value = "/reports1")
	 public ModelAndView meth() {
	ModelAndView model = new ModelAndView("helloWorld");

	        model.addObject("msg", "hello world!");
	
	        return model;
	}
}
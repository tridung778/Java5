package edu.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Lab8Controller {
	
	@RequestMapping("/")
	public String index() {
		return "home/index";
		
	}
	
	@GetMapping("/about")
	public String about() {
		return "home/about";
	}
	
	@GetMapping("/anhtu")
	public String anhtu() {
		return "home/anhtu";
	}
}

package com.poly;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Okcontroller 
{
	@RequestMapping("/ok")
	public String ok() {
		return "ok"; // GỌI FORM OK.JSP
	}
	
	@RequestMapping("/ok1")
	public String m1(Model model) {
	model.addAttribute("ok","ok 1");
		return "ok";
	}
	@RequestMapping("/ok2")
	public String m2(Model model) {
		model.addAttribute("ok","ok2");
		return "ok";
	}
	@RequestMapping("/ok3")
	public String m3(Model model) {
		model.addAttribute("ok","ok3");
		return "ok";
	}


}

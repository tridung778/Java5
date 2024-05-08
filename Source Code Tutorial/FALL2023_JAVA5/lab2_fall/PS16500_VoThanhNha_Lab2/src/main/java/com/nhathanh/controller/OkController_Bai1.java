package com.nhathanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OkController_Bai1 {
	@RequestMapping("/ok")
	public String ok(Model model) {
		model.addAttribute("ok", "Access from the URL link !");
		return "Bai1_OK";
	}
	@PostMapping(value="/ctrl/ok1")
	public String m1(Model model) {
		model.addAttribute("ok", "You just clicked the button number 1");
		return "Bai1_OK";
	}
	@GetMapping(value="/ctrl/ok")
	public String m2(Model model) {
		model.addAttribute("ok", "You just clicked the button number 2");
		return "Bai1_OK";
	}
	@PostMapping(value="/ctrl/ok")
	public String m3(Model model) {
		model.addAttribute("ok", "You just clicked the button number 3");
		return "Bai1_OK";
	}

}

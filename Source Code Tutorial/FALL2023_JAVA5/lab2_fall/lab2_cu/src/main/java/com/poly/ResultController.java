package com.poly;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ResultController
{
@RequestMapping("/a")
public String m1()
{
	return "a";
	
}
@RequestMapping("/b")
public String m2(Model model)
{
	model.addAttribute("message","i com form b");
	return "a";
}
@RequestMapping("/c")

public String m3(RedirectAttributes params) {
	params.addAttribute("message", "I come from c");
	return "a";
}

@RequestMapping("/d")
public String m4(Model model) {
	model.addAttribute("messaged","i com form d");
	return "d";
}

	
}

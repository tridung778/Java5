package com.nhathanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ResultController_Bai5 {
	@RequestMapping("/a_Bai5")
	public String m1() {
		return "a_Bai5";
	}

	@RequestMapping("/b")
	public String m2(Model model) {
		model.addAttribute("message", "1ZmPDaZMYB0");
		return "forward:/a_Bai5";
	}

	@RequestMapping("/a")
	public String m5(Model model) {
		model.addAttribute("message", "To_2DTAmcCo");
		return "forward:/a_Bai5"; // không chuyển dữ liệu đi được (không new mới http
		//return "a_Bai5"; // tạo ra một http mới.
	}

	@RequestMapping("/c")
	public String m3(RedirectAttributes params) {
		params.addAttribute("message", "Eo0ivPoAS6Y");
		return "redirect:/a_Bai5"; // chuyển được giữ liệu sang trang chuyển tới, mang theo session
		//return "a_Bai5";
	}

	@ResponseBody
	@RequestMapping("/d")
	public String m4() {
		return "I come from d and use ResponseBody, RequestMapping!";
	}
}

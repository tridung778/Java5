package com.nhathanh.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nhathanh.bean.Product;

@Controller
public class ProductController_Bai4 {
	@GetMapping("/bai4")
	public String form1(Model model) {
		Product p = new Product();
		p.setName("iPhone 30");
		p.setPrice(5000.0);
		model.addAttribute("product1", p);
		return "form_Bai4";
	}

	@PostMapping("/save_Bai4")
	public String save1(@ModelAttribute("product2") Product p) {
		return "form_Bai4";
	}

	@ModelAttribute("product3")
	public List<Product> getItems() {
		return Arrays.asList(new Product("SamSung", 15.0), new Product("IPhone", 12.0),new Product("XiaoMi",15000),new Product("anhtu",999));
	}
}

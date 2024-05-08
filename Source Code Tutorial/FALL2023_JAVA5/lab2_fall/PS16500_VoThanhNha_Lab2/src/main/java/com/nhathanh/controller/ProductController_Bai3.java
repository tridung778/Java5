package com.nhathanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhathanh.bean.Product;

@Controller
public class ProductController_Bai3 {
	@GetMapping("/product/form")
	public String form() {
		return "form_Product_Bai3";
	}

	@PostMapping("/product/save")
	public String save(
			@RequestParam("name")String name,
			@RequestParam("price")Double price,
		Product product,Model md) {
		product.setName(name);
		product.setPrice(price);
		md.addAttribute("product", product);
		return "form_Product_Bai3";
	}
}

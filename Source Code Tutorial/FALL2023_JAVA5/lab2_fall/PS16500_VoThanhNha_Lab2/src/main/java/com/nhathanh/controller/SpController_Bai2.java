package com.nhathanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class SpController_Bai2 {
	@GetMapping("/sanpham")
	public String doGetListSanPham() {
		return "listSp_Bai2";
	}
	@GetMapping("/sanpham/{tenSp}")
	public String doGetTenSp(@PathVariable("tenSp") String tenSp, Model model) {
		model.addAttribute("sanpham", tenSp);
		return "listSp_Bai2";
	}
}

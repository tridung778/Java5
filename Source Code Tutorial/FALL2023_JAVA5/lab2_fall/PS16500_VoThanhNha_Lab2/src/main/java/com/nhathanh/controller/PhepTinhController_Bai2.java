package com.nhathanh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PhepTinhController_Bai2 {
	@GetMapping("/pheptinh/form")
	public String dogetForm() {
		return "ketQua_Bai2";
	}

	@GetMapping("/pheptinh")
	public String doGetIdSanPham(@RequestParam("a") int a, @RequestParam("b") int b,
			@RequestParam("pheptinh") String dauTinh, Model model) {
		int kq = 0;
		try {
			if (dauTinh.equals("+")) {
				kq = a + b;
			}
			if (dauTinh.equals("-")) {
				kq = a - b;
			}
			if (dauTinh.equals("x")) {
				kq = a * b;
			}
			if (dauTinh.equals("/")) {
				if (b == 0) {
					model.addAttribute("kq", "Khong the chia cho 0");
					return "ketQua_Bai2";
				} else {
					kq = a / b;
				}
			}
		} catch (Exception e) {
			model.addAttribute("kq", "Xay ra loi khi thuc hien ung dung!");
		}
		model.addAttribute("a", a);
		model.addAttribute("b", b);
		model.addAttribute("kq", kq);
		return "ketQua_Bai2";
	}
}

package com.lab2.lab2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SanPhamController {
    @RequestMapping("/bai3")
    public String bai3() {
        return "sanPham";
    }

    @RequestMapping("/sanpham/{tenSP}")
    public String getSanPham(@PathVariable("tenSP") String tenSP, Model model) {
        model.addAttribute("tenSP", tenSP);
        return "sanPham";
    }
}

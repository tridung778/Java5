package com.example.ASM.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @RequestMapping("/add-products")
    public String addProducts(Model model) {
        model.addAttribute("page", "admin-add-products.jsp");
        return "admin-page";
    }
}

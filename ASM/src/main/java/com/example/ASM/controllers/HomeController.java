package com.example.ASM.controllers;

import com.example.ASM.reponsitorys.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @Autowired
    ProductRepository productRepository;

    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("page", "admin-dashboard.jsp");
        return "admin-page";
    }
}

package com.lab.lab6.controllers;

import com.lab.lab6.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReportController {

    @Autowired
    ProductRepository productRepository;

    @GetMapping("/product/report")
    public String report(Model model) {
        model.addAttribute("items", productRepository.getInventoryByCategory());
        return "report";
    }


}

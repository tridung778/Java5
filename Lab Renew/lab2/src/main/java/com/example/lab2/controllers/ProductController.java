package com.example.lab2.controllers;

import com.example.lab2.models.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {

    List<Product> products = new ArrayList<>();

    @RequestMapping("/bai4")
    public String bai4(Model model) {
        products.add(new Product("Iphone", 2026.32));
        products.add(new Product("Samsung", 20.432));
        products.add(new Product("Huawei", 5645.0));
        model.addAttribute("products", products);
        return "product";
    }

    @PostMapping("/add-product")
    public String addProduct(@RequestParam("nameProduct") String name, @RequestParam("priceProduct") double price, Model model) {
        products.add(new Product(name, price));
        model.addAttribute("products", products);
        return "product";
    }
}

package com.lab.lab6.controllers;

import com.lab.lab6.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class SearchController {

    @Autowired
    ProductRepository productRepository;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/product/search")
    public String search_index(Model model) {
        model.addAttribute("products", productRepository.findAll());
        return "search";
    }

    @PostMapping("/product/search")
    public String search_price(Model model, @RequestParam("min") Optional<Double> min, @RequestParam("max") Optional<Double> max) {

        //Bài 1
//		model.addAttribute("products", proDao.findByPrice(min.orElse(Double.MIN_VALUE), max.orElse(Double.MAX_VALUE)));

        //Bài 4
        model.addAttribute("products", productRepository.findByPriceBetween(min.orElse(Double.MIN_VALUE), max.orElse(Double.MAX_VALUE)));
        return "search";
    }

}

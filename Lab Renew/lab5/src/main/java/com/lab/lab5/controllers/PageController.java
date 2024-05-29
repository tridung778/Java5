package com.lab.lab5.controllers;

import com.lab.lab5.repositorys.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class PageController {
    @Autowired
    ProductRepository productRepository;

    @GetMapping("/product/page")
    public String page(Model model, @RequestParam("p") Optional<Integer> p) {
        Pageable page = PageRequest.of(p.orElse(0), 3);
        model.addAttribute("page", productRepository.findAll(page));
        return "page";
    }
}

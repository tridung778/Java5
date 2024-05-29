package com.lab.lab5.controllers;

import com.lab.lab5.repositorys.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class SortController {

    @Autowired
    ProductRepository productRepository;

    @GetMapping("/product/index")
    public String sort_index(Model model) {
        model.addAttribute("products", productRepository.findAll());
        return "sort";
    }

    @GetMapping("/product/sort")
    public String sort_sort(Model model, @RequestParam("field") Optional<String> field) {
        Sort sort = Sort.by(Sort.Direction.DESC, field.orElse("price"));
        model.addAttribute("field", field.orElse("price").substring(0, 1).toUpperCase() + field.orElse("price").substring(1, field.orElse("price").length()));
        model.addAttribute("products", productRepository.findAll(sort));
        return "sort";
    }
}

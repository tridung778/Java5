package com.lab.lab6.controllers;

import com.lab.lab6.repositories.ProductRepository;
import com.lab.lab6.services.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class SearchPageController {

    @Autowired
    SessionService session;

    @Autowired
    ProductRepository productRepository;

    @RequestMapping("/product/search-page")
    public String searchPage_index(Model model, @RequestParam("name") Optional<String> name, @RequestParam("p") Optional<Integer> p) {
        String na = name.orElse(session.get("name"));
        session.set("name", na);

        //Bài 2
//		model.addAttribute("page", proDao.findByKeywords("%"+na+"%", PageRequest.of(p.orElse(0),3)));

        //Bài 5
        model.addAttribute("page", productRepository.findAllByNameLike("%"+na+"%", PageRequest.of(p.orElse(0),3)));
        return "search-page";
    }
}
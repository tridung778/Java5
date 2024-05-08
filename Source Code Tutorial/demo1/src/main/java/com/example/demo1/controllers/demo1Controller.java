package com.example.demo1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class demo1Controller {

    @RequestMapping("/")
    public String index() {
        return "index";
    }
}

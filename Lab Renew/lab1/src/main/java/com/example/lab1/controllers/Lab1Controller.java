package com.example.lab1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Lab1Controller {

    @RequestMapping("")
    public String index() {
        return "index";
    }
}

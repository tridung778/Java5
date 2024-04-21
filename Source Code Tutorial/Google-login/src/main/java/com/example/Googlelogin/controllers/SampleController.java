package com.example.Googlelogin.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SampleController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/secured")
    public String secured() {
        return "Hello, Secured!";
    }
}

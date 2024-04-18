package com.lab2.lab2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OkController {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/bai1")
    public String ok() {
        return "ok";
    }

    @RequestMapping("/ok1")
    public String m1(Model model) {
        model.addAttribute("message", "ok1!");
        return "ok";
    }

    @RequestMapping("/ok2")
    public String m2(Model model) {
        model.addAttribute("message", "ok2!");
        return "ok";
    }

    @RequestMapping("/ok3")
    public String m3(Model model) {
        model.addAttribute("message", "ok3!");
        return "ok";
    }
}

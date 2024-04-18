package com.lab2.lab2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PhepTinhController {

    @GetMapping("/bai2")
    public String getForm() {
        return "form";
    }

    @RequestMapping("/ket-qua")
    public String getKetQua() {
        return "form";
    }

    @GetMapping("/phep-tinh")
    public String getPhepTinh(@RequestParam("a") int a, @RequestParam("b") int b, Model model) {
        int kq = a  + b;
        model.addAttribute("kq", kq);
        return "form";
    }

    @PostMapping("/phep-tinh")
    public String postPhepTinh(@RequestParam("a") int a, @RequestParam("b") int b, Model model) {
        int kq = a  + b;
        model.addAttribute("kq", kq);
        return "form";
    }
}

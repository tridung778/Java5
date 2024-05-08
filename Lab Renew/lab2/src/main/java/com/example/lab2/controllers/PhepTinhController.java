package com.example.lab2.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
    public String getPhepTinh(@RequestParam("a") int a, @RequestParam("b") int b, @RequestParam("operator") String operator, Model model) {
        double kq = 0;
        switch (operator) {
            case "+":
                kq = a + b;
                break;
            case "-":
                kq = a - b;
                break;
            case "*":
                kq = a * b;
                break;
            case "/":
                if (b != 0) {
                    kq = (double) a / b;
                }
                break;
            default:
                kq = 0;
                break;
        }
        model.addAttribute("kq", kq);
        return "form";
    }
}
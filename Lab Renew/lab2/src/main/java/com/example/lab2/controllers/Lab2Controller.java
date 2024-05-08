package com.example.lab2.controllers;

import com.example.lab2.models.Product;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class Lab2Controller {

    @Autowired
    HttpServletRequest req;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/bai1/form")
    public String abc() {
        return "bai1";
    }


    @RequestMapping(value = "/bai11")
    public String bai1(Model model) {
        model.addAttribute("ok", "button 1");
        return "bai1";
        //return "forward:/bai1";
    }

    @RequestMapping(value = "/bai22")
    public String bai2(Model model) {
        model.addAttribute("ok", "button 2");
        return "bai1";
        //return "forward:/bai1";
    }

    @RequestMapping(value = "/bai33")
    public String bai3(Model model) {
        model.addAttribute("ok", "button 3");
        return "bai1";
        //return "forward:/bai1";
    }


    @RequestMapping("/bai2/form")
    public String bai2() {
        return "bai2";
    }

    @PostMapping("/bai2/sum")
    public String bai2_sum(@RequestParam("a") double x, @RequestParam("b") double y, @RequestParam("operator") String operator, Model model) {
        double total = 0;
        String result = "";
        switch (operator) {
            case "+":
                total = x + y;
                break;
            case "-":
                total = x - y;
                break;
            case "*":
                total = x * y;
                break;
            case "/":
                if (y != 0) {
                    total = x / y;
                } else {
                    result = "error";
                }
                break;
        }
        if (result.equals("error")) {
            result = "Không thể chia cho 0";
        } else {
            result = x + " " + operator + " " + y + " = " + total;
        }
        model.addAttribute("total", result);
        return "bai2";
    }

    @GetMapping("/bai2/product/{sp}")
    public String bai2_product(@PathVariable("sp") String sp, Model model) {
        model.addAttribute("sp", sp);
        return "bai2";
    }

    @RequestMapping("/bai3/form")
    public String bai3() {
        return "bai3";
    }

    @PostMapping("/bai3/save")
    public String bai3_save(@RequestParam("name") String name, @RequestParam("price") double price, Model model) {
        model.addAttribute("product", new Product(name, price));
        return "bai3";
    }

    List<Product> products = new ArrayList<>();

    @RequestMapping("/bai4/form")
    public String bai4(Model model) {
        products.add(new Product("Dell" , 2313));
        model.addAttribute("products", products);
        return "bai4";
    }

    @PostMapping("/bai4/save")
    public String bai4_save(@RequestParam("name") String name, @RequestParam("price") double price, Model model) {
        products.add(new Product(name , price));
        model.addAttribute("products", products);
        return "bai4";
    }

    @RequestMapping("/bai5")
    public String bai5() {
        return "bai5";
    }

    @GetMapping("/bai5/forward")
    public String bai5_forward(Model model) {
        model.addAttribute("message", "forwardanhtu");
        return "forward:/bai5";
        //return "bai5";
    }

    @GetMapping("/bai5/redirect")
    public String bai5_redirect(RedirectAttributes params) {
        params.addAttribute("message", "redirect");
        return "redirect:/bai5";
    }

    @ResponseBody
    @GetMapping("/bai5/resp-body")
    public String bai5_respBody() {
        return "ResponseBody";
    }
}
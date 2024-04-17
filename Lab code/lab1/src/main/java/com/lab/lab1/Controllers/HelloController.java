package com.lab.lab1.Controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String showHello() {
        return "helloWorld";
    }

    @GetMapping("/display")
    public String showDisplay(HttpServletRequest request) {
        String name = request.getParameter("name");
        request.setAttribute("name", name);
        return "display";
    }
}

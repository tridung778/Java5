package com.lab4.lab4.controllers;

import com.lab4.lab4.services.CookieService;
import com.lab4.lab4.services.ParamService;
import com.lab4.lab4.services.SessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account/")
public class AccountController {

    @Autowired
    CookieService cookieService;
    @Autowired
    ParamService paramService;
    @Autowired
    SessionService sessionService;

    @GetMapping("login")
    public String getLogin() {
        return "login";
    }
    @PostMapping("login")
    public String postLogin() {
        String username = paramService.getString("username", "poly");
        String password = paramService.getString("password", "123");
        boolean rm = paramService.getBoolean("remember", true);
        sessionService.set("username", username);
        if (rm) {
            cookieService.add("username", username,10);
            cookieService.add("password", password,10);
        } else {
            cookieService.remove("username");
            cookieService.remove("password");
        }
        return "login";
    }
}

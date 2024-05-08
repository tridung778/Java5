package com.example.lab1.controllers;

import com.example.lab1.models.Account;
import com.example.lab1.utils.XCookies;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Lab1Controller {

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @PostMapping("/result")
    public String result(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) {
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");

        if (userName.isEmpty() || passWord.isEmpty()) {
            return "login";
        } else {
            Account account = new Account();
            account.setUsername(userName);
            account.setPassword(passWord);

            XCookies.add("userName", userName, 1, response);
            XCookies.add("passWord", passWord, 1, response);

            session.setAttribute("account", account);
            model.addAttribute("account", account);
            request.setAttribute("name", userName);
        }

        return "result";
    }

}

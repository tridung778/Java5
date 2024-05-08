package com.lab1.lab1.controllers;

import com.lab1.lab1.models.Account;
import com.lab1.lab1.utils.XCookies;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {


    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @PostMapping("/getName")
    public String getName(HttpServletRequest request) {
        String name = request.getParameter("name");
        request.setAttribute("name", name);
        return "resultName";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        String userName = XCookies.get("userName", request);
        String passWord = XCookies.get("passWord", request);
        request.setAttribute("userName", userName);
        request.setAttribute("passWord", passWord);
        return "login";
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
        }

        return "result";
    }


}

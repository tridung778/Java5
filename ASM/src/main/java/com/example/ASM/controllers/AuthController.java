package com.example.ASM.controllers;

import com.example.ASM.configs.SecurityConfig;
import com.example.ASM.enums.Role;
import com.example.ASM.models.User;
import com.example.ASM.services.CartService;
import com.example.ASM.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;


@Controller
public class AuthController {

    public final static String path = "C:\\Java 5\\ASM\\src\\main\\resources\\static\\images\\";

    @Autowired
    private final UserService userService;

    @Autowired
    private CartService cartService;

    public AuthController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/login")
    public String showLoginPage(Model model) {
        model.addAttribute("userInfo", "");
        return "login";
    }

    @RequestMapping("/user-page")
    public String showUserPage(Model model, Authentication authentication) {
        if (authentication != null) {
            model.addAttribute("userInfo", userService.findByUsername(authentication.getName()));
        }
        assert authentication != null;
        model.addAttribute("animalIndex", cartService.findAllByUser(userService.findByUsername(authentication.getName())).size());
        model.addAttribute("router", "user-page.jsp");
        return "index";
    }

    @RequestMapping("/update-user")
    public String saveUser(Model model, @ModelAttribute("userInfo") User newUser, @RequestParam("photo-file") MultipartFile photoFile) throws IOException {
        User user = userService.findUserById(newUser.getId());
        String fileName = null;
        if (!photoFile.isEmpty()) {
            fileName = photoFile.getOriginalFilename();
            String filePath = path + File.separator + fileName;

            File parentDir = new File(path);
            if (!parentDir.exists()) {
                parentDir.mkdirs();
            }
            photoFile.transferTo(new File(filePath));
        }
        user.setUsername(newUser.getUsername());
        user.setEmail(newUser.getEmail());
        user.setName(newUser.getName());
        user.setPhone(newUser.getPhone());
        user.setAddress(newUser.getAddress());
        user.setRole(newUser.getRole());
        user.setPassword(newUser.getPassword());
        if (newUser.getPhoto() != null) {
            user.setPhoto(user.getPhoto());
        } else {
            user.setPhoto(fileName);
        }
        userService.register(user);
        model.addAttribute("router", "user-page.jsp");
        return "index";
    }

    @GetMapping("/register")
    public String showRegisterPage(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String handleRegister(@ModelAttribute("user") User newUser) {
        // Xử lý logic đăng ký
        User user = new User();
        user.setId(UUID.randomUUID());
        user.setUsername(newUser.getUsername());
        user.setPassword(SecurityConfig.encode(newUser.getPassword()));
        user.setEmail(newUser.getEmail());
        user.setName(newUser.getName());
        user.setPhone(null);
        user.setAddress(null);
        user.setRole(Role.USER);
        user.setPhoto(null);
        userService.register(user);
        return "redirect:/login";
    }
}
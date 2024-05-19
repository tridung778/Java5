package com.example.ASM.controllers;

import com.example.ASM.dto.CartDto;
import com.example.ASM.dto.ProductDto;
import com.example.ASM.models.Cat;
import com.example.ASM.reponsitorys.CartRepository;
import com.example.ASM.reponsitorys.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
public class HomeController {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CartRepository cartRepository;

    int animalIndex;

    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("cats", productRepository.findAll());
        model.addAttribute("animalIndex", animalIndex);
        model.addAttribute("router", "home.jsp");
        return "index";
    }

    @RequestMapping("/addToCart/{id}")
    public String addToCart(Model model, @PathVariable("id") UUID id, @RequestParam("quantity") int quantity) {
        Optional<Cat> optionalCat = productRepository.findById(id);
        if (optionalCat.isPresent()) {
            Cat entity = optionalCat.get();
            Optional<CartDto> existingCartItem = cartRepository.findById(id);
            CartDto cart;

            if (existingCartItem.isPresent()) {
                cart = existingCartItem.get();
                cart.setQuantity(cart.getQuantity() + quantity);
            } else {
                cart = new CartDto();
                cart.setId(id);
                cart.setName(entity.getName());
                cart.setPrice(entity.getPrice());
                cart.setQuantity(quantity);
                cart.setType(entity.getType());
                cart.setThumbnail(entity.getThumbnail());
                cart.setSpecie(entity.getSpecie());
            }

            cartRepository.save(cart);
            model.addAttribute("cartItems", cart);
            animalIndex = cartRepository.findAll().size();
            return "redirect:/";
        } else {
            model.addAttribute("error", "Cat not found with ID: " + id);
            model.addAttribute("cats", productRepository.findAll());
            model.addAttribute("animalIndex", animalIndex);
            model.addAttribute("router", "home.jsp");
            return "index";
        }
    }

    @PostMapping("/updateQuantity")
    public String updateQuantity(
            @RequestParam("id") UUID id,
            @RequestParam("quantity") int quantity
    ) {
        CartDto cart = cartRepository.findById(id).orElse(null);
        if (cart != null) {
            cart.setQuantity(quantity);
            cartRepository.save(cart);
        }
        return "redirect:/openCart";
    }


    @RequestMapping("/openCart")
    public String openCart(Model model) {
        model.addAttribute("cartItems", cartRepository.findAll());
        model.addAttribute("animalIndex", cartRepository.findAll().size());
        model.addAttribute("router", "cart.jsp");
        return "index";
    }

    @RequestMapping("/admin")
    public String indexAdmin(Model model) {
        model.addAttribute("page", "admin-dashboard.jsp");
        return "admin-page";
    }
}

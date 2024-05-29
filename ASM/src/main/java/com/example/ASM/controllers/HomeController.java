package com.example.ASM.controllers;

import com.example.ASM.dto.CartDto;
import com.example.ASM.models.Account;
import com.example.ASM.models.Product;
import com.example.ASM.reponsitorys.CartRepository;
import com.example.ASM.reponsitorys.ProductRepository;
import com.example.ASM.services.CartService;
import com.example.ASM.services.ProductService;
import com.example.ASM.ultis.XCookies;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
public class HomeController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CartService cartService;

    int animalIndex;

    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("products", productService.findAll());
        model.addAttribute("animalIndex", animalIndex);
        model.addAttribute("router", "home.jsp");
        return "index";
    }

    @RequestMapping("/product")
    public String openCat(Model model, @RequestParam("typeProduct") String typeProduct) {
        model.addAttribute("products", productService.findByTypeContainingIgnoreCase(typeProduct));
        model.addAttribute("animalIndex", animalIndex);
        model.addAttribute("router", "listProducts.jsp");
        if (typeProduct.equals("cat")) {
            model.addAttribute("productName", "Mèo");
        } else if (typeProduct.equals("dog")) {
            model.addAttribute("productName", "Chó");
        }
        return "index";
    }

    @RequestMapping("/addToCart/{id}")
    public String addToCart(Model model, @PathVariable("id") UUID id, @RequestParam("quantity") int quantity) {
        Optional<Product> optionalProduct = productService.findById(id);
        if (optionalProduct.isPresent()) {
            Product entity = optionalProduct.get();
            Optional<CartDto> existingCartItem = cartService.findById(id);
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
                cart.setCode(entity.getCode());
            }

            cartService.save(cart);
            model.addAttribute("cartItems", cart);
            animalIndex = cartService.findAll().size();
            return "redirect:/";
        } else {
            model.addAttribute("error", "Cat not found with ID: " + id);
            model.addAttribute("products", productService.findAll());
            model.addAttribute("animalIndex", animalIndex);
            model.addAttribute("router", "home.jsp");
            return "index";
        }
    }

    @PostMapping("/updateQuantity")
    public String updateQuantity(@Validated @RequestParam("id") UUID id, @RequestParam("quantity") int quantity) {

        CartDto cart = cartService.findById(id).orElse(null);
            if (cart != null) {
                cart.setQuantity(quantity);
                cartService.save(cart);
            }

        return "redirect:/openCart";
    }

    @RequestMapping("/remove/{id}")
    public String removeProduct(@PathVariable("id") UUID id) {
        cartService.deleteById(id);
        return "redirect:/openCart";
    }


    @RequestMapping("/openCart")
    public String openCart(Model model) {
        model.addAttribute("cartItems", cartService.findAll());
        model.addAttribute("animalIndex", cartService.findAll().size());
        model.addAttribute("router", "cart.jsp");
        return "index";
    }

    @RequestMapping("/admin")
    public String indexAdmin(Model model) {
        model.addAttribute("page", "admin-dashboard.jsp");
        return "admin-page";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        String userName = XCookies.get("userName", request);
        String passWord = XCookies.get("passWord", request);
        request.setAttribute("userName", userName);
        request.setAttribute("passWord", passWord);
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletResponse response) {
        XCookies.remove("userName", response);
        XCookies.remove("passWord", response);
        return "redirect:/";
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

        return "redirect:/";
    }



}

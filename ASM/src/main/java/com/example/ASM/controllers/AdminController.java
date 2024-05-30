package com.example.ASM.controllers;

import com.example.ASM.dto.ProductDto;
import com.example.ASM.models.Product;
import com.example.ASM.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("/admin/add-products")
public class AdminController {
    private final String path = "C:\\Java 5\\ASM\\src\\main\\resources\\static\\images\\";

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/")
    public String addProducts(Model model, @ModelAttribute("product") Product product) {
        model.addAttribute("products", productRepository.findAll());
        model.addAttribute("page", "admin-add-products.jsp");
        return "admin-page";
    }

    @PostMapping("/save")
    public String save(@Validated @ModelAttribute("product") ProductDto productDto,
                       BindingResult bindingResult, Model model) throws IOException {
        if (bindingResult.hasErrors()) {
            model.addAttribute("page", "admin-add-products.jsp");
            return "admin-page";
        }

        Product product = new Product();

        if (productDto.getId() != null) {
            product = productRepository.findById(productDto.getId()).orElse(null);
            if (product == null) {
                return "redirect:/admin/add-products/";
            }
        }
        product.setName(productDto.getName());
        product.setPrice(productDto.getPrice());
        product.setQuantity(productDto.getQuantity());
        product.setType(productDto.getType());
        product.setDescription(productDto.getDescription());

        MultipartFile photoFile = productDto.getThumbnail();

        if (!photoFile.isEmpty()) {
            String fileName = StringUtils.cleanPath(photoFile.getOriginalFilename());
            File file = new File(path + fileName);
            if (!file.exists()) {
                file.mkdirs();
            }
            photoFile.transferTo(file);
            product.setThumbnail(fileName);
        }

        productRepository.save(product);
        model.addAttribute("message", "Thêm sản phẩm thành công");
        return "redirect:/admin/add-products/";
    }

    @RequestMapping("/remove/{id}")
    public String delete(@PathVariable("id") UUID id, Model model) {
        productRepository.deleteById(id);
        return "redirect:/admin/add-products/";
    }

    @GetMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") UUID id, Model model, @ModelAttribute("product") Product product) {
        Product existingProduct = productRepository.findById(id).orElse(null);
        if (existingProduct != null) {
            model.addAttribute("product", existingProduct);
        } else {
            return "redirect:/admin/add-products/";
        }
        model.addAttribute("products", productRepository.findAll());
        model.addAttribute("page", "admin-add-products.jsp");
        return "admin-page";
    }

    @GetMapping("/search")
    public String searchProducts(@RequestParam("name-product") String name, Model model, @ModelAttribute("product") Product product) {
        Product searchResults = productRepository.findByNameContainingIgnoreCase(name);
        model.addAttribute("product", searchResults);
        model.addAttribute("products", productRepository.findAll());
        model.addAttribute("page", "admin-add-products.jsp");
        return "admin-page";
    }

}

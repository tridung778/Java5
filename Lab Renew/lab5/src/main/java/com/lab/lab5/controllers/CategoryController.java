package com.lab.lab5.controllers;

import com.lab.lab5.models.Category;
import com.lab.lab5.repositorys.CategoryRepository;
import com.lab.lab5.repositorys.ProductRepository;
import com.lab.lab5.ultils.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Controller
public class CategoryController {
    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    ProductRepository productRepository;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/category")
    public String category_index(Model model, @ModelAttribute("categoryItem") Category ca) {
        ca.setId(null);
        ca.setName(null);

//        categoryRepository.findAll().forEach(System.out::println);
//        System.out.println("ddd");
        model.addAttribute("categories", categoryRepository.findAll());
        return "category";
    }

    @PostMapping("/category/create")
    public String category_create(Model model, @Validated @ModelAttribute("categoryItem") Category ca, BindingResult result) {
        if (!result.hasErrors()) {
            if (!categoryRepository.findById(ca.getId()).isEmpty()) {
                model.addAttribute("message", Message.ERROR_EXISTING_ID);
            } else {
                categoryRepository.save(ca);
                model.addAttribute("message", Message.SUCCESS_CREATE);
            }
        } else {
            // Nếu có lỗi validation, hiển thị thông báo lỗi chung
            model.addAttribute("message", Message.ERROR_VALIDATION);
        }
        model.addAttribute("categories", categoryRepository.findAll());
        return "redirect:/category";
    }

    @PostMapping("/category/update")
    public String category_update(Model model, @Validated @ModelAttribute("categoryItem") Category ca, BindingResult result) {
        if (!result.hasErrors()) {
            if (categoryRepository.findById(ca.getId()).isEmpty())
                model.addAttribute("error_category", Message.ERROR_NOT_FOUND);
            else {
                categoryRepository.save(ca);
                model.addAttribute("success_category", Message.SUCCESS_UPDATE);
            }
        }
        model.addAttribute("categories", categoryRepository.findAll());
        return "category";
    }

//    @RequestMapping("/category/delete/{id}")
//    public String category_delete(Model model, @PathVariable("id") String id, @ModelAttribute("categoryItem") Category ca) {
//        if (categoryRepository.findById(ca.getId()).isEmpty()) {
////            return "redirect:/category";
//        } else {
//            System.out.println("ed");
//            productRepository.deleteById(productRepository.searchProductByCategoryId(id).getId());
//            categoryRepository.deleteById(id);
//            model.addAttribute("success_category", Message.SUCCESS_DELETE);
//        }
//        model.addAttribute("categories", categoryRepository.findAll());
//        return "category";
//    }

    @RequestMapping("/category/delete")
    public String category_delete(Model model, @ModelAttribute("categoryItem") Category ca) {
        if (categoryRepository.findById(ca.getId()).isEmpty()) {
            model.addAttribute("error_category", Message.ERROR_NOT_FOUND);
        } else {
            Category category = categoryRepository.findById(ca.getId()).get();
            categoryRepository.delete(category);
            model.addAttribute("success_category", Message.SUCCESS_DELETE);
        }
        model.addAttribute("categories", categoryRepository.findAll());
        return "redirect:/category";
    }


    @GetMapping("/category/edit")
    public String category_edit(Model model, @RequestParam("id") String id, @ModelAttribute("categoryItem") Category ca) {
        if (categoryRepository.findById(ca.getId()).isEmpty()) {
            return "redirect:/category";
        } else {
            Category category = categoryRepository.findById(id).get();
            ca.setId(category.getId());
            ca.setName(category.getName());
        }
        model.addAttribute("categories", categoryRepository.findAll());
        return "category";
    }

}

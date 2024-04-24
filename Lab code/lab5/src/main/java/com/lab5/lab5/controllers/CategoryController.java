package com.lab5.lab5.controllers;

import com.lab5.lab5.DAO.CategoryDAO;
import com.lab5.lab5.entity.Category;
import com.lab5.lab5.services.ParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CategoryController {
    @Autowired
    CategoryDAO dao;
    @Autowired
    ParamService paramService;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/category/index")
    public String index(Model model) {
        Category category = new Category();
        model.addAttribute("category", category);
        List<Category> categories = dao.findAll();
        model.addAttribute("categories", categories);
        return "/category/index";
    }

    @RequestMapping("/category/edit/{id}")
    public String edit(@PathVariable("id") String id, Model model) {
        Category category = dao.findById(id).get();
        model.addAttribute("category", category);
        List<Category> categories = dao.findAll();
        model.addAttribute("categories", categories);
        return "/category/index";
    }

    @PostMapping("/category/create")
    public String create(Category category) {
        dao.save(category);
        return "redirect:/category/index";
    }

    @PostMapping("/category/update")
    public String update(Category category) {
        dao.save(category);
        return "redirect:/category/edit/" + category.getId();
    }

    @GetMapping("/category/delete/{id}")
    public String delete(@PathVariable("id") String id) {
        dao.deleteById(id);
        return "redirect:/category/index";
    }
}

package com.lab5.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lab5.dao.CategoryDAO;
import com.lab5.model.Categories;
import com.lab5.service.ParamService;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO dao;
	@Autowired
	ParamService paramService;
	
	@RequestMapping("/category/index")
	public String index(Model model) {
		Categories category = new Categories();
		model.addAttribute("category", category);
		List<Categories> categories = dao.findAll();
		model.addAttribute("categories", categories);
		return "/category/index";
	}
	@RequestMapping("/category/edit/{id}")
	public String edit(@PathVariable("id") String id, Model model) {
		Categories category = dao.findById(id).get();
		model.addAttribute("category", category);
		List<Categories> categories = dao.findAll();
		model.addAttribute("categories", categories);
		return "/category/index";
	}
	@PostMapping("/category/create")
	public String create(Categories category) {
		dao.save(category);
		return "redirect:/category/index";
	}
	@PostMapping("/category/update")
	public String update(Categories category) {
		dao.save(category);
		return "redirect:/category/edit/"+category.getId();
	}
	@GetMapping("/category/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/category/index";
	}
}

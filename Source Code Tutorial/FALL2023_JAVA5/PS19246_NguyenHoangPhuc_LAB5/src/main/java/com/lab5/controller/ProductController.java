package com.lab5.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lab5.dao.ProductDAO;
import com.lab5.model.Products;

@Controller
public class ProductController {
	@Autowired 
	ProductDAO dao;
	
	@RequestMapping("/product/sort")
	public String sort(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Products> products = dao.findAll(sort);
		model.addAttribute("products", products);
		return "/product/index";
	}
	@RequestMapping("/product/page")
	public String paginate(Model model, @RequestParam("page") Optional<Integer> page) {
		Pageable pageable = PageRequest.of(page.orElse(0), 5);
		Page<Products> pages = dao.findAll(pageable);
		model.addAttribute("page", pages);
		return "/pagination/index";
	}
}

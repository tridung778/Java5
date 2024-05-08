package edu.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.ProductDAO;

@Controller
public class PageController {
	
	@Autowired
	ProductDAO proDao;
	
	@GetMapping("/product/page")
	public String page(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable page = PageRequest.of(p.orElse(0), 2);
		model.addAttribute("page", proDao.findAll(page));
		return "page";
	}
}

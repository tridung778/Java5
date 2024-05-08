package edu.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.CategoryDAO;
import edu.poly.entity.Category;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO caDao;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/category/index")
	public String category_index(Model model, @ModelAttribute("categoryItem") Category ca) {
		ca.setId(null);
		ca.setName(null);
		model.addAttribute("categoryItems", caDao.findAll());
		return "category";
	}
	
	@PostMapping("/category/create")
	public String category_create(Model model, @Validated @ModelAttribute("categoryItem") Category ca, BindingResult result) {
		if(!result.hasErrors()) {
			if(!caDao.findById(ca.getId()).isEmpty())
				model.addAttribute("error_category", "Id đã tồn tại!");
			else {
				caDao.save(ca);
				model.addAttribute("success_category", "Create success!");
			}
		}
		model.addAttribute("categoryItems", caDao.findAll());
		return "category";
	}
	
	@PostMapping("/category/update")
	public String category_update(Model model, @Validated @ModelAttribute("categoryItem") Category ca, BindingResult result) {
		if(!result.hasErrors()) {
			if(caDao.findById(ca.getId()).isEmpty())
				model.addAttribute("error_category", "Id không tồn tại!");
			else {
				caDao.save(ca);
				model.addAttribute("success_category", "Update success!");
			}
		}
		model.addAttribute("categoryItems", caDao.findAll());
		return "category";
	}
	
	@PostMapping("/category/delete")
	public String category_delete(Model model, @ModelAttribute("categoryItem") Category ca) {
		if(ca.getId().length() == 4) {
			if(caDao.findById(ca.getId()).isEmpty())
				model.addAttribute("error_category", "Id không tồn tại!");
			else {
				caDao.deleteById(ca.getId());
				model.addAttribute("success_category", "Delete success!");
			}
		}
		else 
			model.addAttribute("error_category", "Độ dài id loại hàng là 4 ký tự!");
		model.addAttribute("categoryItems", caDao.findAll());
		return "category";
	}
	
	@GetMapping("/category/edit")
	public String category_edit(Model model, @RequestParam("id") String id, @ModelAttribute("categoryItem") Category ca) {
		if(caDao.findById(ca.getId()).isEmpty())
			return "redirect:/category/index";
		else {
			Category category = caDao.findById(id).get();
			ca.setId(category.getId());
			ca.setName(category.getName());
		}
		model.addAttribute("categoryItems", caDao.findAll());
		return "category";
	}
	
	@GetMapping("/category/delete")
	public String category_delete(Model model, @RequestParam("id") String id, @ModelAttribute("categoryItem") Category ca) {
		if(caDao.findById(ca.getId()).isEmpty())
			return "redirect:/category/index";
		else {
			caDao.deleteById(id);
			model.addAttribute("success_category", "Delete success!");
		}
		model.addAttribute("categoryItems", caDao.findAll());
		return "category";
	}
}

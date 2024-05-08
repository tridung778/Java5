package edu.poly.controller;

import java.util.Arrays;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.poly.model.Product;
import javax.servlet.http.HttpServletRequest;

@Controller
public class Lab2Controller {

	@Autowired
	HttpServletRequest req;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
@RequestMapping("/bai1/form")
public String abc()
{
	return "bai1";
}

	
	@RequestMapping(value="/bai11")
	public String bai1(Model model) {
		model.addAttribute("ok", "button 1");
		return "bai1";
		//return "forward:/bai1";
		}
		
	@RequestMapping(value="/bai22")
	public String bai2(Model model) {
		model.addAttribute("ok", "button 2");
		return "bai1";
		//return "forward:/bai1";
		}
	@RequestMapping(value="/bai33")
	public String bai3(Model model) {
		model.addAttribute("ok", "button 3");
		return "bai1";
		//return "forward:/bai1";
		}
	
	
	@RequestMapping("/bai2/form")
	public String bai2() {
		return "bai2";
	}
	
	@PostMapping("/bai2/sum")
	public String bai2_sum(@RequestParam("a") double x, @RequestParam("b") double y, Model model) {
		model.addAttribute("sum", x+y);
		return "bai2";
	}
	
	@GetMapping("/bai2/product/{sp}")
	public String bai2_product(@PathVariable("sp") String sp, Model model) {
		model.addAttribute("sp", sp);
		return "bai2";
	}
	
	@RequestMapping("/bai3/form")
	public String bai3() {
		return "bai3";
	}
	
	@PostMapping("/bai3/save")
	public String bai3_save(@RequestParam("name") String name, @RequestParam("price") double price, Model model) {
		model.addAttribute("product", new Product(name, price));
		return "bai3";
	}
	
	@RequestMapping("/bai4/form")
	public String bai4(Model model) {
		Product p = new Product("Product 1", 100);
		model.addAttribute("product", p);
		return "bai4";
	}
	
	@PostMapping("/bai4/save")
	public String bai4_save(@RequestParam("name") String name, @RequestParam("price") double price, Model model) {
		model.addAttribute("product", new Product(name, price));
		return "bai4";
	}
	
	@ModelAttribute("products")
	public List<Product> getItems(){
		return Arrays.asList(new Product("Product 2", 100), new Product("Product 3", 100));
	}
	
	@RequestMapping("/bai5")
	public String bai5() {
		return "bai5";
	}
	
	@GetMapping("/bai5/forward")
	public String bai5_forward(Model model) {
		model.addAttribute("message", "forwardanhtu");
		return "forward:/bai5";
		//return "bai5";
	}
	
	@GetMapping("/bai5/redirect")
	public String bai5_redirect(RedirectAttributes params) {
		params.addAttribute("message", "redirect");
		return "redirect:/bai5";
	}
	
	@ResponseBody
	@GetMapping("/bai5/resp-body")
	public String bai5_respBody() {
		return "ResponseBody";
	}
}

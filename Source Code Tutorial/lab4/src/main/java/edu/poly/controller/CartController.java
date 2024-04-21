package edu.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.cart.ShoppingCartService;

import edu.poly.database.DB;
import edu.poly.model.Item;

@Controller
public class CartController {
	@Autowired 
	ShoppingCartService cartService;

	

	
	@RequestMapping("/cart")
	public String cartIndex(Model model) {
		model.addAttribute("items", DB.items.values());
		model.addAttribute("cart", cartService.getItems());
		return "cart";
	}
	
	@GetMapping("/cart/add/{id}")
	public String add(Model model, @PathVariable("id") int id) {
		boolean ct = false;
		for(Item item:cartService.getItems()) {
			if(item.getId()==id) {
				cartService.update(id, item.getQty()+1);
				ct = true;
				break;
			}
		}
		if(!ct)
			cartService.add(id);
		model.addAttribute("items", DB.items.values());
		model.addAttribute("cart", cartService.getItems());
		model.addAttribute("tongtien", cartService.getAmount());
		return "cart";
	}
	
	@GetMapping("/cart/update")
	public String update(Model model, @RequestParam("id") int id, @RequestParam("qty") int qty) {
		cartService.update(id, qty);
		model.addAttribute("items", DB.items.values());
		model.addAttribute("cart", cartService.getItems());
		model.addAttribute("tongtien", cartService.getAmount());
		return "cart";
	}
	
	@GetMapping("/cart/remove/{id}")
	public String remove(Model model, @PathVariable("id") int id) {
		cartService.remove(id);
		model.addAttribute("items", DB.items.values());
		model.addAttribute("cart", cartService.getItems());
		model.addAttribute("tongtien", cartService.getAmount());
		return "cart";
	}
	
	@GetMapping("/cart/clear")
	public String clear(Model model) {
		cartService.clear();
		model.addAttribute("items", DB.items.values());
		model.addAttribute("cart", cartService.getItems());
		model.addAttribute("tongtien", cartService.getAmount());
		return "cart";
	}
}

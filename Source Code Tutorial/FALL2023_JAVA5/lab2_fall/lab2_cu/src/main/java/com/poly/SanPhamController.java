package com.poly;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class SanPhamController 
{
@GetMapping("/sanpham")
public String dogetlistsanpham()
{
	return "listsanpham";
}
@GetMapping("/sanpham/{tensp2}") // a
public String dogetTensanpham(@PathVariable ("tensp2") String tensp , Model model)
{
	model.addAttribute("sanpham",tensp);
	return "listsanpham";
}

}

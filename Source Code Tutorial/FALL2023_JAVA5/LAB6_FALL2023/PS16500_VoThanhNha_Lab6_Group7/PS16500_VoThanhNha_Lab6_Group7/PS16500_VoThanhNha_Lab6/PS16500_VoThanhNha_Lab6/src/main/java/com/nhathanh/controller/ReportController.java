package com.nhathanh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhathanh.dao.ReportDAO;
import com.nhathanh.entity.Report;

@Controller
public class ReportController {
	@Autowired
	ReportDAO dao;
	
	@RequestMapping("/report")
	public String inventory(Model model) {
		List<Report> items = dao.getInventoryByCategorys();
		model.addAttribute("items", items);
		return "report";
	}

}

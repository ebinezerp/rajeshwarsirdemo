package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.Customer;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index(Model model) {
		System.out.println("hello");
		model.addAttribute("customer", new Customer());
		return "index";
	}
	
	@PostMapping("/first")
	@ResponseBody
	public String first(@ModelAttribute("customer")Customer customer) {
		System.out.println(customer);
		return "first url reached";
	}
	
	@PostMapping("/second")
	@ResponseBody
	public String second(@ModelAttribute("customer")Customer customer) {
		System.out.println(customer);
		return "second url reached";
	}
	
}



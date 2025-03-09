package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import com.example.demo.entity.User;
import com.example.demo.services.UserService;

@Controller

public class MyController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/regPage")
  public String OpenRegPage(Model model) {
		model.addAttribute("user",new User());
	  return "register";
  }
	
	@PostMapping("/regForm")
	public String subRegForm(@ModelAttribute("user") User user,Model model) {
		boolean status = userService.registerUser(user);
		if(status) {
			model.addAttribute("successMsg","User registered Successfully");
		}else {
			model.addAttribute("errorMsg","User not registered due to error");
		}
		return "profile";
	}
	@GetMapping("/loginPage")
	public String openLoginPage(Model model) {
		model.addAttribute("user",new User());
		return "login";
	}
	@PostMapping("/loginForm")
	public String subLoginForm(@ModelAttribute("user") User user,Model model) {
		User ValidUser = userService.loginUser(user.getEmail(),user.getPassword());
		if(ValidUser!=null) {
			model.addAttribute("modelname", ValidUser.getName());
			return "profile";
		}else {
			model.addAttribute("errorMsg","Email and password doestn't match!!!");
			return "login";
		}
	
	}
}

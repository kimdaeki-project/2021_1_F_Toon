package com.to.t1.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
  =======================================
               JSP Project
  =======================================
  */

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home(Model model) {
		model.addAttribute("message", "JSP Project");
		model.addAttribute("user", "iu");
		model.addAttribute("msg", "test");
		
		return "index";
	}
	
	@GetMapping("companyMap")
	public String companyMap(Model model) {
		
		return "companyMap";
	}

}
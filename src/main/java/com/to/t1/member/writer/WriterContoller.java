package com.to.t1.member.writer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/writer/**")
public class WriterContoller {
	
	@GetMapping("addwriter")
	public String writerFormPage(Model model) {
		
		return "writer/writerForm";
	}
}

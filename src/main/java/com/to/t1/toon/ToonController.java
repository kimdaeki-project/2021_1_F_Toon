package com.to.t1.toon;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/toon/**")
public class ToonController {

	@GetMapping("toonDay")
	public String toonDay() {
		return "toon/toonList/toonDay";
	}
	
	@GetMapping("genre")
	public String genre() {
		return "toon/toonList/genre";
	}
	
	@GetMapping("ranking")
	public String ranking() {
		return "toon/toonList/ranking";
	}
	
	@GetMapping("endKr")
	public String endKr() {
		return "toon/toonList/endKr";
	}
	
	@GetMapping("endRe")
	public String endRe() {
		return "toon/toonList/endRe";
	}
	
	@GetMapping("dayList")
	public String dayList() {
		return "toon/toonList/dayList";
	}
	
	
	
}

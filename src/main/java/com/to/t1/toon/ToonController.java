package com.to.t1.toon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.to.t1.util.Pager;

@Controller
@RequestMapping("/toon/**")
public class ToonController {
	@Autowired
	private ToonService toonService;
	
	@GetMapping("toonList")
	public void getList(Pager pager, Model model)throws Exception{
		List<ToonVO> list=toonService.getList();
		model.addAttribute("list", list);
		model.addAttribute("listsize", list.size());
	}
	
	@GetMapping("toonSelect")
	public void getSelect(ToonVO toonVO,Model model)throws Exception{
		toonVO= toonService.getSelect(toonVO);
		model.addAttribute("toonVO", toonVO);
	}

}

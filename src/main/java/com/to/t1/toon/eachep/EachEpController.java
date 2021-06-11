package com.to.t1.toon.eachep;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.to.t1.toon.ToonService;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/toon/**")
public class EachEpController {
	@Autowired
	private EachEpService eachEpService;
	@Autowired
	private ToonService toonService;
	
	
	@GetMapping("eachEpList")
	public void getList(Pager pager, Model model)throws Exception{
		List<EachEpVO> list=eachEpService.getList(pager);
		model.addAttribute("epVO", list);
		model.addAttribute("pager", pager);
		model.addAttribute("listsize", list.size());
	}
	
	@GetMapping("eachEpSelect")
	public void getSelect(EachEpVO eachEpVO, Model model)throws Exception{
		eachEpVO= eachEpService.getSelect(eachEpVO);
		model.addAttribute("eachEpVO", eachEpVO);
	}
}

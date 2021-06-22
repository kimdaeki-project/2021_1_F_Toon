  
package com.to.t1.toon.eachep;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.to.t1.member.MemberVO;
import com.to.t1.toon.ToonService;
import com.to.t1.toon.ToonVO;
import com.to.t1.util.Pager;

@Controller
@RequestMapping("/toon/**")
public class EachEpController {
	@Autowired
	private EachEpService eachEpService;
	@Autowired
	private ToonService toonService;
	
	
	@GetMapping("eachEpList")
	public void getList(Pager pager, Model model,MemberVO memberVO)throws Exception{
		ToonVO list=eachEpService.getList(pager);
		MemberVO me = new MemberVO();
		model.addAttribute("toonVO", list);
		model.addAttribute("pager", pager);
	}
	
	@GetMapping("eachEpSelect")
	public void getSelect(EachEpVO eachEpVO, Model model)throws Exception{
		ToonVO list= eachEpService.getSelect(eachEpVO);
		model.addAttribute("toonVO", list);
		model.addAttribute("listsize", list.getEachEpVO().size());
		System.out.println(list.getEachEpVO().size());
	}
	
	@GetMapping("eachEpInsert")
	public ModelAndView setInsert(EachEpVO eachEpVO,MemberVO memberVO,ToonVO toonVO)throws Exception{
	ModelAndView mv = new ModelAndView();
		
		
		
		
	
	return mv;	
	}
	
	
	
	
}
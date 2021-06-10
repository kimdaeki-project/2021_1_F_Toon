
package com.to.t1.toon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public void getSelect(ToonVO toonVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		toonVO= toonService.getSelect(toonVO);
		mv.addObject("toonVO", toonVO);
		
	}

	@GetMapping("toonDay")
	public ModelAndView toonDay(ToonVO toonVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setToonDay("mon");
		List<ToonVO> mt = toonService.toonDay(toonVO);
		
		toonVO.setToonDay("tue");
		List<ToonVO> tt = toonService.toonDay(toonVO);
		
		toonVO.setToonDay("wen");
		List<ToonVO> wt = toonService.toonDay(toonVO);
		
		toonVO.setToonDay("the");
		List<ToonVO> tt2 = toonService.toonDay(toonVO);
		
		toonVO.setToonDay("fri");
		List<ToonVO> ft = toonService.toonDay(toonVO);
		
		toonVO.setToonDay("sat");
		List<ToonVO> st = toonService.toonDay(toonVO);
		
		toonVO.setToonDay("sun");
		List<ToonVO> st2 = toonService.toonDay(toonVO);
		
		
		mv.addObject("mt", mt);
		mv.addObject("tt", tt);
		mv.addObject("wt", wt);
		mv.addObject("tt2", tt2);
		mv.addObject("ft", ft);
		mv.addObject("st", st);
		mv.addObject("st2", st2);
		mv.setViewName("toon/toonList/toonDay");
		return mv ;
	}
	
	@GetMapping("genre")
	public ModelAndView genre(ToonVO toonVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setGenre("action");
		List<ToonVO> ac = toonService.genre(toonVO);
		
		toonVO.setGenre("school");
		List<ToonVO> sc = toonService.genre(toonVO);
		
		toonVO.setGenre("romance");
		List<ToonVO> ro = toonService.genre(toonVO);		
		
		toonVO.setGenre("fantasy");
		List<ToonVO> fa = toonService.genre(toonVO);
		
		toonVO.setGenre("thriller");
		List<ToonVO> th = toonService.genre(toonVO);
		
		toonVO.setGenre("comedy");
		List<ToonVO> co = toonService.genre(toonVO);
		
		mv.addObject("action", ac);
		mv.addObject("school", sc);
		mv.addObject("romance", ro);		
		mv.addObject("fantasy", fa);
		mv.addObject("thriller", th);
		mv.addObject("comedy", co);		

		mv.setViewName("toon/toonList/genre");
		
		return mv;
	}
	
	
	
	
	@GetMapping("ranking")
	public ModelAndView ranking(ToonVO toonVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setTotalHit(0);
		List<ToonVO> ra = toonService.ranking(toonVO);
		
		mv.addObject("rank", ra);
		
		mv.setViewName("toon/toonList/ranking");
		
		return mv;
	}
	
	
	
	@GetMapping("endRe")
	public ModelAndView endKr(ToonVO toonVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		toonVO.setTotalHit(0);
		List<ToonVO> en = toonService.endRe(toonVO);
		
		mv.addObject("end", en);
		
		mv.setViewName("toon/toonList/endRe");
		
		
		return mv;
	}
	
	@GetMapping("dayList")
	public String dayList() {
		return "toon/toonList/dayList";
	}
	
	
	
}
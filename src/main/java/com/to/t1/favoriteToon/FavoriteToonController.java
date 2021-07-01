package com.to.t1.favoriteToon;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/favorite/**")
public class FavoriteToonController {

	@Autowired
	private FavoriteToonService favoriteToonService;
	
	@PostMapping("setFavorite")
	public void setFavorite(FavoritetoonVO favoritetoonVO, Model model,Authentication auth)throws Exception{
		
		System.out.println("favorite");
		if(auth!=null) {
			favoritetoonVO.setUsername(auth.getName());
			model.addAttribute("result", favoriteToonService.setFavorite(favoritetoonVO));
		}		
	}
	
	@PostMapping("delFavorite")
	public void delFavorite(FavoritetoonVO favoritetoonVO, Model model,Authentication auth)throws Exception{
		if(auth!=null) {
			favoritetoonVO.setUsername(auth.getName());
			model.addAttribute("result", favoriteToonService.delFavorite(favoritetoonVO));
		}
	}

}

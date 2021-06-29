package com.to.t1.toon.complete;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.to.t1.ticket.UseTicketVO;
import com.to.t1.toon.ToonVO;
import com.to.t1.toon.eachep.EachEpService;
import com.to.t1.util.Pager;

import lombok.Data;

@Controller
@RequestMapping("**/comp/**")
public class CompToonController {
	
	@Autowired
	private EachEpService eachEpService;
	
	@Autowired 
	private CompToonService compToonService;
	
	//Eplist에서의 모델 : toonVO에서 하나  epList+ UseTicket인 List에서 하나 더
	@GetMapping("Eplist")
	
	public @ResponseBody List<EndEpVO> getCompToonList( 
			Pager pager, 
			UseTicketVO useTicketVO, ToonVO toonVO, EndToonVO endToonVO,
			Authentication auth , Model model)throws Exception {
		if(auth!=null) {
			useTicketVO.setUsername(auth.getName());
			endToonVO = compToonService.getEndToonInfo(toonVO);
			
			System.out.println(useTicketVO);
			
			model.addAttribute("endToonVO",endToonVO);
			model.addAttribute("endEpVO", compToonService.getEndToonList(useTicketVO));
			
	      }
		else {
	    	  ToonVO list=eachEpService.getList(pager);
		      model.addAttribute("toonVO", list);
		      model.addAttribute("pager", pager);
		      //return "toon/eachEpList";
	      }
	      
		return compToonService.getEndToonList(useTicketVO);
	}
}

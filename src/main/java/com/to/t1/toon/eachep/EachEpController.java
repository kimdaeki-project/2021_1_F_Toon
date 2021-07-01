package com.to.t1.toon.eachep;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.to.t1.favoriteToon.FavoriteToonService;
import com.to.t1.favoriteToon.FavoritetoonVO;
import com.to.t1.member.MemberService;
import com.to.t1.member.MemberVO;
import com.to.t1.mypage.RecentVO;
import com.to.t1.point.PointService;
import com.to.t1.review.ReviewService;
import com.to.t1.review.ReviewVO;
import com.to.t1.ticket.TicketBoxVO;
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
   @Autowired
   private ReviewService reviewService;
   @Autowired
   private FavoriteToonService favoriteToonService;
   @Autowired
   private MemberService memberService;
   @Autowired
   private PointService pointService;
   
   @GetMapping("eachEpList")
   public void getList(@RequestParam Map<String,Object> param ,
		   Pager pager, Model model, Authentication auth,
		   MemberVO memberVO, HttpSession httpSession,
		   TicketBoxVO ticketBoxVO)throws Exception{
      FavoritetoonVO favoritetoonVO = new FavoritetoonVO();
      
      if(auth!=null) {
    	  memberVO = memberService.myPage((MemberVO) auth.getPrincipal());
	      param.put("username",memberVO.getUsername());
	      ticketBoxVO = pointService.checkTicketStock(param, ticketBoxVO);
	  		//System.out.println(ticketBoxVO);
	    	model.addAttribute("ticketBox",ticketBoxVO);
	    	model.addAttribute("memberVO", memberVO); 
	    	//System.out.println("username"+memberVO.getUsername());
	      
	    	favoritetoonVO.setUsername(auth.getName());
	        
         
      }
    	  FavoritetoonVO favorToon=favoriteToonService.getSelect(favoritetoonVO);
    	  favoritetoonVO.setToonNum(pager.getToonNum());
    	  
          ToonVO list=eachEpService.getList(pager);
          //model.addAttribute("info",param);
          model.addAttribute("toonVO", list);
          model.addAttribute("pager", pager);
          model.addAttribute("favorToon", favorToon);
          
          //return "toon/eachEpList";
   }
   
   @GetMapping("eachEpSelect")
   public void getSelect(EachEpVO eachEpVO,Pager pager, Model model, Authentication auth)throws Exception{
      RecentVO recentVO = new RecentVO();
      FavoritetoonVO favoritetoonVO = new FavoritetoonVO();
      if(auth!=null) {
         recentVO.setUsername(auth.getName());
         favoritetoonVO.setUsername(auth.getName());
         favoritetoonVO.setToonNum(pager.getToonNum());
      }
      
      ToonVO list= eachEpService.getSelect(eachEpVO, pager, recentVO);
      
      model.addAttribute("toonVO", list);
      model.addAttribute("listsize", list.getEachEpVO().size());
      
      //eachEpNum 가장 큰 값 불러오기 위해서(getTotalCount 사용)
      model.addAttribute("pager", pager);
      
      pager.setEpNum(eachEpVO.getEpNum());
      pager.setEachEpNum(eachEpVO.getEachEpNum());
      
      List<ReviewVO> reviewVO = reviewService.getList(pager);

      list.getEachEpVO().get(0).setReviewVO(reviewVO);
      System.out.println("if"+(list.getEachEpVO().get(0).getReviewVO().size()==0));
      
      //Next code : revNum==0일때 reviewVO!=null 값으로 null이 되지않음 -> setReviewVO==null 
      if(list.getEachEpVO().get(0).getReviewVO().size()==0) {
         list.getEachEpVO().get(0).setReviewVO(new ArrayList<ReviewVO>());
      }
      
      //favoriteToon 설정
      FavoritetoonVO favorToon=favoriteToonService.getSelect(favoritetoonVO);
      model.addAttribute("favorToon", favorToon);
   }
   
   //여기서부터 완결툰으로 가기 
   
   @GetMapping("endEpList")
   public void geEndtList(@RequestParam Map<String,Object> param ,
		   Pager pager, Model model, Authentication auth,
		   MemberVO memberVO, HttpSession httpSession,
		   TicketBoxVO ticketBoxVO)throws Exception{
      FavoritetoonVO favoritetoonVO = new FavoritetoonVO();
      
      if(auth!=null) {
    	  memberVO = memberService.myPage((MemberVO) auth.getPrincipal());
	      param.put("username",memberVO.getUsername());
	      ticketBoxVO = pointService.checkTicketStock(param, ticketBoxVO);
	  		//System.out.println(ticketBoxVO);
	    	model.addAttribute("ticketBox",ticketBoxVO);
	    	model.addAttribute("memberVO", memberVO); 
	    	//System.out.println("username"+memberVO.getUsername());
	      
	    	favoritetoonVO.setUsername(auth.getName());
	        
         
      }
    	  FavoritetoonVO favorToon=favoriteToonService.getSelect(favoritetoonVO);
    	  favoritetoonVO.setToonNum(pager.getToonNum());
    	  
          ToonVO list=eachEpService.getList(pager);
          //model.addAttribute("info",param);
          model.addAttribute("toonVO", list);
          model.addAttribute("pager", pager);
          model.addAttribute("favorToon", favorToon);
          
          //return "toon/eachEpList";
   }
   
   @GetMapping("endEpSelect")
   public void getEndSelect(EachEpVO eachEpVO,Pager pager, Model model, Authentication auth)throws Exception{
      RecentVO recentVO = new RecentVO();
      FavoritetoonVO favoritetoonVO = new FavoritetoonVO();
      if(auth!=null) {
         recentVO.setUsername(auth.getName());
         favoritetoonVO.setUsername(auth.getName());
         favoritetoonVO.setToonNum(pager.getToonNum());
      }
      
      ToonVO list= eachEpService.getSelect(eachEpVO, pager, recentVO);
      
      model.addAttribute("toonVO", list);
      model.addAttribute("listsize", list.getEachEpVO().size());
      
      //eachEpNum 가장 큰 값 불러오기 위해서(getTotalCount 사용)
      model.addAttribute("pager", pager);
      
      pager.setEpNum(eachEpVO.getEpNum());
      pager.setEachEpNum(eachEpVO.getEachEpNum());
      
      List<ReviewVO> reviewVO = reviewService.getList(pager);

      list.getEachEpVO().get(0).setReviewVO(reviewVO);
      System.out.println("if"+(list.getEachEpVO().get(0).getReviewVO().size()==0));
      
      //Next code : revNum==0일때 reviewVO!=null 값으로 null이 되지않음 -> setReviewVO==null 
      if(list.getEachEpVO().get(0).getReviewVO().size()==0) {
         list.getEachEpVO().get(0).setReviewVO(new ArrayList<ReviewVO>());
      }
      
      //favoriteToon 설정
      FavoritetoonVO favorToon=favoriteToonService.getSelect(favoritetoonVO);
      model.addAttribute("favorToon", favorToon);
   }
   
}
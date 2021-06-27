package com.to.t1.member.admin.sales;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("**/sales/**")
public class SalesController {
	@Autowired
	private SaleService saleService;
	
	//1. 오늘 조회
	
	@PostMapping("today")
	@ResponseBody
	public DaySaleVO getDaySaleVO() throws Exception{
		System.out.println(saleService.getDaySale());
		return saleService.getDaySale();
		//json 형식으로 돌려주는 요청
	}
	
	@PostMapping("week")
	@ResponseBody
	//2. 주 조회
	public List<MonthSaleVO> getWeekSale() throws Exception{
		return saleService.getWeekSale();
	}
	
	@PostMapping("month")
	@ResponseBody
	public  List<WeekSaleVO> getMonthSale()throws Exception{
		return saleService.getMonthSale();
	}
	
	@PostMapping("length")
	@ResponseBody
	//4. 기간 조회
	public   List<DaySaleVO> getLengthSale(MonthSaleVO weekSaleVO)throws Exception{
		return saleService.getLengthSale(weekSaleVO);
	}
	
	@PostMapping("perToon")
	@ResponseBody
	//5. 웹툰 별 매출 조회
	public  List<ToonSaleVO> getToonSale() throws Exception{
		System.out.println(saleService.getToonSale());
		return saleService.getToonSale();
	}
	
	@GetMapping("income")
	public String GetIncomeList( DaySaleVO daySaleVO,
			MonthSaleVO monthSaleVO,ToonSaleVO toonSaleVO, Model model) throws Exception {
		//1. 일별 데이터 가져오기
		daySaleVO = saleService.getDaySale();
		//2. 주별 데이터 가져오기 
		
		//List<WeekSaleVO> = new SalesController() 
		//3. 월별 데이터 가져오기
		//4. 웹툰 데이터 가져오기
		model.addAttribute("daySaleVO",daySaleVO);
		model.addAttribute("weekSaleVO",saleService.getWeekSale());
		model.addAttribute("monthSaleVO",saleService.getMonthSale());
		model.addAttribute("toonSaleVO",saleService.getMonthSale());
		return "admin/adminUtil/SaleSelect";
	}
}

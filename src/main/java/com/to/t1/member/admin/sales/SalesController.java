package com.to.t1.member.admin.sales;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("**/sales/**")
public class SalesController {
	@Autowired
	private SaleService saleService;
	
	//1. 오늘 조회
	
	@GetMapping("today")
	@ResponseBody 
	public DaySaleVO getDaySaleVO() throws Exception{
		System.out.println(saleService.getDaySale());
		return saleService.getDaySale();
		//json 형식으로 돌려주는 요청
	}
	@GetMapping("week")
	@ResponseBody
	//2. 주 조회
	public List<MonthSaleVO> getWeekSale() throws Exception{
		return saleService.getWeekSale();
	}
	@GetMapping("month")
	@ResponseBody
	public  List<WeekSaleVO> getMonthSale()throws Exception{
		return saleService.getMonthSale();
	}
	@GetMapping("length")
	@ResponseBody
	//4. 기간 조회
	public   List<DaySaleVO> getLengthSale(MonthSaleVO weekSaleVO)throws Exception{
		return saleService.getLengthSale(weekSaleVO);
	}
	@GetMapping("perToon")
	@ResponseBody
	//5. 웹툰 별 매출 조회
	public  List<ToonSaleVO> getToonSale() throws Exception{
		System.out.println(saleService.getToonSale());
		return saleService.getToonSale();
	}
}

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
	
	
	@GetMapping("today")
	public @ResponseBody DaySaleVO getDaySaleVO() throws Exception{
		System.out.println(saleService.getDaySale());
		
		return saleService.getDaySale();
		//json 형식으로 돌려주는 요청
	}
	
	@GetMapping("week")
	//2. 주 조회
	public @ResponseBody List<MonthSaleVO> getWeekSale() throws Exception{
		return saleService.getWeekSale();
	}
	
	@GetMapping("month")
	public @ResponseBody List<WeekSaleVO> getMonthSale()throws Exception{
		return saleService.getMonthSale();
	}
	
	@GetMapping("length")
	//4. 기간 조회
	public @ResponseBody  List<DaySaleVO> getLengthSale(MonthSaleVO weekSaleVO)throws Exception{
		return saleService.getLengthSale(weekSaleVO);
	}
	@GetMapping("perToon")
	//5. 웹툰 별 매출 조회
	public @ResponseBody List<ToonSaleVO> getToonSale() throws Exception{
		System.out.println(saleService.getToonSale());
		return saleService.getToonSale();
	}
	@GetMapping("income")
	public String GetIncomeList( DaySaleVO daySaleVO,
		MonthSaleVO monthSaleVO,ToonSaleVO toonSaleVO, Model model) throws Exception {
		
		daySaleVO = saleService.getDaySale();
		
		model.addAttribute("daySaleVO",daySaleVO);
		model.addAttribute("weekSaleVO",saleService.getWeekSale());
		model.addAttribute("monthSaleVO",saleService.getMonthSale());
		model.addAttribute("toonSaleVO",saleService.getToonSale());
		
		return "admin/incomeSelect/SaleSelect";
		
	}
	
	@GetMapping("toonsIncome")
	public String getToonIncomeList(Model model) throws Exception {
		
		model.addAttribute("toonSaleVO",saleService.getToonSale());
		
		return "admin/incomeSelect/toonIncome";
	}
	
}

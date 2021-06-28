package com.to.t1.member.admin.sales;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SaleService {
	
	@Autowired 
	private SalesMapper salesMapper;
	
	//1. 일 조회
	public DaySaleVO getDaySale() throws Exception{
		
		return salesMapper.getDaySale();
		
	}
	//2. 주 조회
	public List<MonthSaleVO> getWeekSale() throws Exception{
		return salesMapper.getWeekSale();
	}
	
	//3. 달 조회
	public List<WeekSaleVO> getMonthSale()throws Exception{
		return salesMapper.getMonthSale();
	};
	//4. 기간 조회
	public List<DaySaleVO> getLengthSale(MonthSaleVO weekSaleVO)throws Exception{
		return salesMapper.getLengthSale(weekSaleVO);
	};
	//5. 웹툰 별 매출 조회
	public List<ToonSaleVO> getToonSale() throws Exception{
		return salesMapper.getToonSale();
	}
	
}

package com.to.t1.member.admin.sales;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SalesMapper {
	
	//1. 일 조회 
	public DaySaleVO getDaySale() throws Exception;
	
	//2. 주 조회
	public List<MonthSaleVO> getWeekSale()throws Exception;
	
	//3. 달 조회
	public List<WeekSaleVO> getMonthSale()throws Exception;
	
	//4. 기간
	public List<DaySaleVO> getLengthSale(MonthSaleVO weekSaleVO)throws Exception;
	
	//5. 웹툰 별 매출 전체 조회
	public List<ToonSaleVO> getToonSale() throws Exception;
	
}

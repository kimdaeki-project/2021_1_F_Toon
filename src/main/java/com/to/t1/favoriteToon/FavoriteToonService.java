package com.to.t1.favoriteToon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FavoriteToonService {

	@Autowired
	private FavoriteToonMapper favoriteMapper;
	
	public int setFavorite(FavoritetoonVO favoritetoonVO) throws Exception {
		return favoriteMapper.setFavorite(favoritetoonVO);
	}
	
	public int delFavorite(FavoritetoonVO favoritetoonVO) throws Exception {
		int result=0;
		int delResult = favoriteMapper.delFavorite(favoritetoonVO);
		
		if(delResult==0) {
			favoriteMapper.setFavorite(favoritetoonVO);
			result=1;
		}		
		return result;	//result==1 이면 관심웹툰 등록완료
	}
	
	public FavoritetoonVO getSelect(FavoritetoonVO favoritetoonVO) throws Exception{
		return favoriteMapper.getSelect(favoritetoonVO);
	}
}

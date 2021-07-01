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
		return favoriteMapper.delFavorite(favoritetoonVO);
	}
	
}

package com.to.t1.favoriteToon;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FavoriteToonMapper {

	public int setFavorite(FavoritetoonVO favoritetoonVO) throws Exception;
	public int delFavorite(FavoritetoonVO favoritetoonVO) throws Exception;
	
}

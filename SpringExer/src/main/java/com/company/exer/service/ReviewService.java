package com.company.exer.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.company.exer.utils.ListPagingData;

public interface ReviewService {

	List<ReviewDTO> selectList();
	//카테고리별
	List<ReviewDTO> selectCategoryList(Map map);
	
	ReviewDTO selectOne(Map map);

	ReviewDTO noCMNTselectOne(Map map);
	int insert(Map map);
	int update(Map map);
	int delete(Map map);
	int like(Map map);
	int likeCheck(Map map);
	int likeCount(Map map);
	int unlike(Map map);
	int stampCreate(Map map);
	List<ReviewDTO> reviewMNG();
	int rvFileAdd(Map map);
	int rvScrapCheck(Map map);
	int rvScrapAdd(Map map);
	int unScrap(Map map);
	int rvScrapCount(Map map);
	List<ReviewDTO> rvScrapBring(Map map);
	ListPagingData selectListPage(Map map, HttpServletRequest req, int nowPage);
	int updatereviewcnt(Map map) throws Exception;
	int rvMySelectCheck(Map map);
	List<ReviewDTO> rvMySelect(Map map);
}

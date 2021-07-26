package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface ReviewService {

	List<ReviewDTO> selectList();
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
}

package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface AdminService {

	
	List<ReviewDTO> selectList();
	ReviewDTO selectOne(Map map);
	int delete(Map map);
	int likeCheck(Map map);
	int likeCount(Map map);
}

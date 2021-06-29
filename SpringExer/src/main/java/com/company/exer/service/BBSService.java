package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface BBSService {

	List<BBSDTO> selectList();
	BBSDTO selectOne(Map map);
	int insert(Map map);
	int update(Map map);
	int delete(Map map);
	int like(Map map);
	int likeCheck(Map map);
	int likeCount(Map map);
	int unlike(Map map);
	int stampInsert(Map map);
}

package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface RvCmntService {

	List<RvCmntDTO> selectList(Map map);
	
	String insert(Map map);
	int delete(Map map);
	int update(Map map);
}
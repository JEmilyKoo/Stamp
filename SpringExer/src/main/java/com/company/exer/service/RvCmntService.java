package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface RvCmntService {


	int rvcInsert(Map map);
	int rvcDelete(Map map);
	int update(Map map);
	
	int rvcCount(Map map);
	List<RvCmntDTO> selectList(Map map);

}

package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface RvCmntService {


	int rvcInsert(Map map);
	int delete(Map map);
	int update(Map map);

	List<RvCmntDTO> selectList(Map map);

}

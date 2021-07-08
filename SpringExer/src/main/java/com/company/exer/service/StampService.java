package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface StampService {
	//int stampUp();
	List<StampDTO> stampList();
	int stampCheck(Map map);
	int stampCheckCount(Map map);
	int stampCheckDelete(Map map);
	int stampCreate(Map map);
	int stampCount(Map map);
}

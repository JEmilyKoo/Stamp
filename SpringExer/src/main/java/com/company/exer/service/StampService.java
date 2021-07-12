package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface StampService {
	//int stampUp();
	List<StampDTO> stampList();
	int stampCheck(Map map);
	int stampCheckCount(Map map);
	int stampCheckDelete(Map map);
	int stampGet(Map map);
	int stampCheckGet(Map map);
	String stampRvno(Map map);
	
	//관리자페이지
	List<StampDTO> showStampList();
	int extendAdminStamp(Map map);
	int updateAdminStamp(Map map);
	int deleteAdminStamp(Map map);
}

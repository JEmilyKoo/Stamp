package com.company.exer.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.company.exer.utils.ListPagingData;

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
	ListPagingData<StampDTO> showStampList(Map map,HttpServletRequest req,int nowPage);
	int getStampCnt(Map map);
	int renewAdminStamp(Map map);
	int expireAdminStamp(Map map);
	int deleteAdminStamp(Map map);
}

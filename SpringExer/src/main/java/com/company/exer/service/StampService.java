package com.company.exer.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.company.exer.utils.ListPagingData;

public interface StampService {
	//int stampUp();
	
	int procStampInsert(HashMap<String, Object> map, HttpSession session) throws Exception;
	
	List<StampDTO> stampList();
	int stampCheck(Map map);
	int stampCheckCount(Map map);
	int stampCheckDelete(Map map);
	int stampGet(Map map);
	int stampCheckGet(Map map);
	String stampCheckRvNo(Map map);

	//관리자페이지
	ListPagingData<StampDTO> showStampList(Map map,HttpServletRequest req,int nowPage);
	int getStampCnt(Map map);
	int renewAdminStamp(Map map);
	int expireAdminStamp(Map map);
	int deleteAdminStamp(Map map);
}
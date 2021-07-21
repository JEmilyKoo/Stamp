package com.company.exer.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface DMService {

	
	public int sendDM(Map map);
	public List<DMDTO> DMList(Map map);
	public List<DMDTO> finalDMList(Map map, HttpServletRequest req);
	public DMDTO getDMSendList(Map map);
	public List<DMDTO> DMChatList(Map map) ;
	public int checkDM(Map map);
	public List<DMDTO> checkDMChatList(Map map);
	public List<DMDTO> finalChatList(Map map, HttpServletRequest req);
	public int cntNewDM(Map map);
}

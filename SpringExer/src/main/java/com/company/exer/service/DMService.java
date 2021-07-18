package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface DMService {

	
	public int sendDM(Map map);
	
	public List<DMDTO> dMList(Map map);
	
	public DMDTO getDMSendList(Map map);
	
	public List<DMDTO> dMChatList(Map map) ;
	
	public int checkDM(Map map);
	
	public List<DMDTO> checkDMChatList(Map map);

	public int cntNewDM(Map map);
}

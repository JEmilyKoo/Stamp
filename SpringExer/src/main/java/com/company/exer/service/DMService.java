package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface DMService {

	
	public int sendDM(Map map);
	public List<DMDTO> DMList(Map map);
	public DMDTO getDMSendList(Map map);
	public List<DMDTO> DMChatList(Map map) ;
	public int checkDM(Map map);
	public List<DMDTO> checkDMChatList(Map map);
	public int cntNewDM(Map map);
}

package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.company.exer.service.DMDTO;
import com.company.exer.service.DMService;


@Service("dMService")
public class DMServiceImpl implements DMService{
	
	@Resource(name="dMDAO")
	private DMDAO dao;
	
//	1. DM 테이블 INSERT
	@Override
	public int sendDM(Map map) {
		return dao.sendDM(map);
	}
	
//	2. DM 전체 메세지함 쿼리문
	@Override
	public List<DMDTO> dMList(Map map) {
		return dao.dMList(map);
	}
	
//	3. 최신 발신내역 가져오는 쿼리문
	@Override
	public DMDTO getDMSendList(Map map) {
		
		return dao.getDMSendList(map);
	}
	
//	4. DM 1:1대화목록 쿼리문
	@Override
	public List<DMDTO> dMChatList(Map map) {

		return dao.dMChatList(map);
	}
	
//	5. 읽음 처리 쿼리문
	@Override
	public int checkDM(Map map) {
		return dao.checkDM(map);
	}
	
//	6. 4+5 쿼리문(읽음 처리 후, 1:1대화 리스트 뽑기)
	@Override
	public List<DMDTO> checkDMChatList(Map map) {
		dao.checkDM(map);
		return dao.dMChatList(map);
	}

//	7. 새로온 안읽은 메세지 카운트
	@Override
	public int cntNewDM(Map map) {
		return dao.cntNewDM(map);
	}

}
package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.company.exer.service.DMDTO;
import com.company.exer.service.DMService;


@Service("DMService")
public class DMServiceImpl implements DMService{
	
	@Resource(name="DMDAO")
	private DMDAO dao;
	
//	1. DM 테이블 INSERT
	@Override
	public int sendDM(Map map) {
		return dao.sendDM(map);
	}
	
//	2. DM 전체 메세지함 쿼리문
	@Override
	public List<DMDTO> DMList(Map map) {
		return dao.DMList(map);
	}
	
//	3. 최신 발신내역 가져오는 쿼리문
	@Override
	public DMDTO getDMSendList(Map map) {
		
		return dao.getDMSendList(map);
	}
	
//	4. DM 1:1대화목록 쿼리문
	@Override
	public List<DMDTO> DMChatList(Map map) {

		return dao.DMChatList(map);
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
		return dao.DMChatList(map);
	}

//	7. 새로온 안읽은 메세지 카운트
	@Override
	public int cntNewDM(Map map) {
		return dao.cntNewDM(map);
	}

}
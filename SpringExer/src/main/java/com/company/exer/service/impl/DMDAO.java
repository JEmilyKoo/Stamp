package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.exer.service.DMDTO;


@Repository("dMDAO")
public class DMDAO {

	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;
	
//	1. DM 테이블 INSERT 
	
	public int sendDM(Map map) {

		return sqlMapper.insert("sendDM", map);
	}
	
//	2. DM 전체 메세지함 쿼리문
	public List<DMDTO> dMList(Map map) {

		return sqlMapper.selectList("dMList", map);
	}
	
//	3. 최신 발신내역 가져오는 쿼리문
	public DMDTO getDMSendList(Map map) {

		return sqlMapper.selectOne("getDMSendList", map);
	}
	
//	4. DM 1:1대화목록 쿼리문
	public List<DMDTO> dMChatList(Map map) {

		return sqlMapper.selectList("dMChatList", map);
	}
	
//	5. 읽음 처리 쿼리문
	public int checkDM(Map map) {
		return sqlMapper.update("checkDM", map);
	}

//	6. 새로온 안읽은 메세지 카운트
	public int cntNewDM(Map map) {

		return sqlMapper.selectOne("cntNewDM", map);
	}

}
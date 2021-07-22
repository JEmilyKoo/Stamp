package com.company.exer.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;
import com.company.exer.utils.ListPagingData;

@Repository("stampDAO")
public class StampDAO{

	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;


	public List<StampDTO> stampList() {
		return sqlMapper.selectList("stampList");
	}


	public int stampCheck(Map map) {
		return sqlMapper.insert("stampCheck",map);
	}


	public int stampCheckCount(Map map) {
		return sqlMapper.selectOne("stampCheckCount",map);
	}

	public int stampCheckDelete(Map map) {
		return sqlMapper.delete("stampCheckDelete",map);
	}
	
	public int stampGet(Map map) {
		return sqlMapper.insert("stampGet",map);
	}


	public int stampCheckGet(Map map) {
		return sqlMapper.selectOne("stampCheckGet",map);
	}

	public String stampCheckRvNo(Map map) {
		return sqlMapper.selectOne("stampCheckRvNo", map);
	}
	
	public List<StampDTO> stampMemberList(String nickName) {
		return sqlMapper.selectList("stampMemberList",nickName);
	}


	//관리자페이지
		public List<StampDTO> showStampList(Map map) {
			return sqlMapper.selectList("showStampList",map);
		}
		
		public int getStampCnt(Map map) {
			
			return sqlMapper.selectOne("getStampCnt",map);
		}
		
		public int renewStampMNG(Map map) {
			return sqlMapper.insert("renewStampMNG",map);
		}
		public int expireStampMNG(Map map) {
			return sqlMapper.insert("expireStampMNG",map);
		}
		
		public int deleteStampMNG(Map map) {
			return sqlMapper.delete("deleteStampMNG",map);
		}




	



	
}

package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;

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


	public String stampRvno(Map map) {
		return sqlMapper.selectOne("stampRvno",map);
	}


	//관리자페이지
		public List<StampDTO> showStampList() {
			return sqlMapper.selectList("showStampList");
		}
		
		public int extendAdminStamp(Map map) {
			return sqlMapper.insert("extendAdminStamp",map);
		}
		public int updateAdminStamp(Map map) {
			return sqlMapper.insert("updateAdminStamp",map);
		}
		
		public int deleteAdminStamp(Map map) {
			return sqlMapper.delete("deleteAdminStamp",map);
		}


	
}

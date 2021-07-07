package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;

@Repository("stampDAO")
public class StampDAO /*implements StampService*/ {

	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;


//	public int stampUp() {
//		return sqlMapper.insert("stampUp");
//	}

	public List<StampDTO> stampList() {
		return sqlMapper.selectList("stampList");
	}


	public int stampUpdate(Map map) {
		return sqlMapper.insert("stampUpdate",map);
	}


	public StampDTO stampInsert() {
		return sqlMapper.selectOne("stampInsert");
	}


	public int stampUpdateDelete(Map map) {
		return sqlMapper.delete("stampUpdateDelete",map);
	}
	

	
}

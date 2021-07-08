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
	
	public int stampCreate(Map map) {
		return sqlMapper.insert("stampCreate",map);
	}



	
}

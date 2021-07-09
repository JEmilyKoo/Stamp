package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("rvCmntDAO")
public class RvCmntDAO {
	
	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;
	
	public List<Map> selectList(Map map){
		return sqlMapper.selectList("",map);
	}
	
	public int insert(Map map) {
		sqlMapper.insert("",map);
		return Integer.parseInt(map.get("rvcNo").toString());
	}
	
	public String findNameById(String id) {
		return sqlMapper.selectOne("",id);
	}
	
	public int delete(Map map) {
		return sqlMapper.delete("",map);
	}
	
	public int update(Map map) {
		return sqlMapper.update("",map);
	}
	

}

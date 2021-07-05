package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;

import com.company.exer.service.ReviewDTO;

public class AdminDAO {

	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;
	
	public List<ReviewDTO> selectList() {
		return sqlMapper.selectList("reviewSelectList");
	}

	public ReviewDTO selectOne(Map map) {
		return sqlMapper.selectOne("reviewSelectOne",map);
	}
	
	public int delete(Map map) {
		return sqlMapper.delete("reviewDelete",map);
	}
	
	public int likeCheck(Map map) {
		return sqlMapper.selectOne("reviewLikeCheck",map);
	}
	
	public int likeCount(Map map) {
		return sqlMapper.update("reviewLikeCount",map);
	}  
	
}

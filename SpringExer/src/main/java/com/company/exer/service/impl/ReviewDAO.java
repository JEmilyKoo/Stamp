package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.company.exer.service.ReviewDTO;
import com.company.exer.service.ReviewService;
@Repository("reviewDAO")
public class ReviewDAO {
	
	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;
	
	public List<ReviewDTO> selectList() {
		return sqlMapper.selectList("reviewSelectList");
	}

	public List<ReviewDTO> selectCategoryList(Map map) {
		return sqlMapper.selectList("reviewSelectCategoryList",map);

	}

	public ReviewDTO selectOne(Map map) {
		return sqlMapper.selectOne("reviewSelectOne",map);
	}


	public ReviewDTO noCMNTselectOne(Map map) {
		return sqlMapper.selectOne("reviewNoCMNTSelectOne",map);
	}
	
	public int insert(Map map) {
		return sqlMapper.insert("reviewInsert",map);
	}

	public int update(Map map) {
		return sqlMapper.update("reviewUpdate",map);
	}


	public int like(Map map) {
		return sqlMapper.insert("reviewLike",map);
	}
	
	public int likeCheck(Map map) {
		return sqlMapper.selectOne("reviewLikeCheck",map);
	}
	
	public int likeCount(Map map) {
		return sqlMapper.update("reviewLikeCount",map);
	}  
	
	public int unlike(Map map) {
		return sqlMapper.delete("reviewUnLike",map);
	}
	
	public int stampCreate(Map map) {
		return sqlMapper.delete("stampCreate",map);
	}
	
	////////////////////
	
	public List<ReviewDTO> reviewMNG() {
		return sqlMapper.selectList("reviewMNG");
	}


	public int delete(Map map) {
		return sqlMapper.delete("reviewDelete",map);
	}
	
	public int rvFileAdd(Map map) {
		return sqlMapper.insert("rvFileAdd",map);
	}

	public int rvScrapCheck(Map map) {
		return sqlMapper.selectOne("rvScrapCheck",map);
	}

	public int rvScrapAdd(Map map) {
		return sqlMapper.insert("rvScrapAdd",map);
	}

	public int unScrap(Map map) {
		return sqlMapper.delete("unScrap",map);
	}



	
}

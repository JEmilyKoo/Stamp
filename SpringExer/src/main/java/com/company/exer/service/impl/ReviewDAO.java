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
	
	
public int getTotalRecord(Map map) {
	return sqlMapper.selectOne("reviewTotalCount",map);
}



public List selectListPage(Map map) {
	return sqlMapper.selectList("reviewSelectListPage",map);
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

	public int rvScrapCount(Map map) {
		return sqlMapper.selectOne("rvScrapCount",map);
	}

	public List<ReviewDTO> rvScrapBring(Map map) {
		return sqlMapper.selectList("rvScrapBring",map);
	}

	public int updatereviewcnt(Map map) throws Exception {
		return sqlMapper.update("updatereviewcnt",map);
	}


	public int rvMySelectCheck(Map map) {
		return sqlMapper.selectOne("rvMySelectCheck",map);
	}


	public List<ReviewDTO> rvMySelect(Map map) {
		return sqlMapper.selectList("rvMySelect",map);
	}


	public List<ReviewDTO> rvMyCmnt(Map map) {
		return sqlMapper.selectList("rvMyCmnt",map);
	}

}
package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.company.exer.service.ReviewDTO;

@Service("AdminService")
public class AdminServiceImpl {

	@Resource(name="reviewDAO")
	private ReviewDAO dao;
	
	public List<ReviewDTO> selectList() {
		return dao.selectList();
	}

	public ReviewDTO selectOne(Map map) {
		return dao.selectOne(map);
	}
	
	public int delete(Map map) {
		return dao.delete(map);
	}
	
	public int likeCheck(Map map) {
		return dao.likeCheck(map);
	}

	public int likeCount(Map map) {
		return dao.likeCount(map);
	}
	
}

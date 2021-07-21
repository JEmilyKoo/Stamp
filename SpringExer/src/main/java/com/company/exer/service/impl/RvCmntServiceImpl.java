package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.company.exer.service.ReviewDTO;
import com.company.exer.service.RvCmntDTO;
import com.company.exer.service.RvCmntService;

@Service("rvCmntService")
public class RvCmntServiceImpl implements RvCmntService {

	@Resource(name="rvCmntDAO")
	private RvCmntDAO dao;

	@Override
	public List<RvCmntDTO> selectList(Map map) {
		//int rvCno=dao.insert(map);
		//String nickName=dao.findNameById(map.get("nickName").toString());
		return dao.selectList(map);
	}

	@Override
	public int rvcInsert(Map map) {
		return dao.rvcInsert(map);
	}

	@Override
	public int rvcDelete(Map map) {
		return dao.rvcDelete(map);
	}

	@Override
	public int rvcUpdate(Map map) {
		return dao.rvcUpdate(map);
	}

	@Override
	public int rvcCount(Map map) {
		return dao.rvcCount(map);
	}

	
}

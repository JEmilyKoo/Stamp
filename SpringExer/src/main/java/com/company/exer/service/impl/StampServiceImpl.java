package com.company.exer.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.company.exer.service.StampDTO;
import com.company.exer.service.StampService;

@Service("stampService")
public class StampServiceImpl implements StampService {

	@Resource(name="stampDAO")
	private StampDAO dao;

	@Override
	public List<StampDTO> stampList() {
		return dao.stampList();
	}

	@Override
	public int stampCheck(Map map) {
		return dao.stampCheck(map);
	}

	@Override
	public int stampCheckCount(Map map) {
		return dao.stampCheckCount(map);
	}

	@Override
	public int stampCheckDelete(Map map) {
		return dao.stampCheckDelete(map);
	}

	@Override
	public int stampGet(Map map) {
		return dao.stampGet(map);
	}

	@Override
	public int stampCheckGet(Map map) {
		return dao.stampCheckGet(map);
	}

	@Override
	public String stampRvno(Map map) {
		return dao.stampRvno(map);
	}



	


}

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
	public int stampUpdate(Map map) {
		return dao.stampUpdate(map);
	}

	@Override
	public StampDTO stampInsert() {
		return dao.stampInsert();
	}

	@Override
	public int stampUpdateDelete(Map map) {
		return dao.stampUpdateDelete(map);
	}
	
	


}

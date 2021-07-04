package com.company.exer.service.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository("profileDAO")
public class ProfileDAO {
	
	@Resource(name="template")
	private SqlSessionTemplate sqlMapper;

}

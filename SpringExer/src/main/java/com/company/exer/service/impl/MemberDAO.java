package com.company.exer.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.mybatis.spring.SqlSessionTemplate;
import com.company.exer.service.MemberDTO;
import com.company.exer.service.MemberService;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("memberDAO")
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlMapper;
	
//@Repository("memberDAO")
//public interface MemberDAO {

//	@Resource(name="template")
	//private SqlSessionTemplate sqlMapper;
	
//	@Autowired
//	public SqlSessionTemplate sqlMapper;
	
	public void register(MemberDTO memberDTO) throws Exception{}
	
    public MemberDTO get(MemberDTO memberDTO) throws Exception{
		return memberDTO;}
   
    public void memberJoin(MemberDTO memberDTO) {
    	sqlMapper.insert("sqlmemberJoin",memberDTO);
	}
    public int memberJoinCheck(MemberDTO memberDTO) {
    	return sqlMapper.selectOne("sqlmemberJoinCheck",memberDTO);
	}
    public int followCheck(MemberDTO memberDTO) {
		return sqlMapper.selectOne("followCheck",memberDTO);
	}

	public int followCnt(MemberDTO memberDTO) {
		return sqlMapper.selectOne("followCnt",memberDTO);
	}

	public int followerCnt(MemberDTO memberDTO) {
		return sqlMapper.selectOne("followerCnt",memberDTO);
	}
}
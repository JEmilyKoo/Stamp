package com.company.exer.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import com.company.exer.service.MemberDTO;


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
		
    	return sqlMapper.selectOne("sqlgetmember",memberDTO);
    	
    }
   
    public void memberJoin(MemberDTO memberDTO) {
    	sqlMapper.insert("sqlmemberJoin",memberDTO);
	}
    public int memberJoinCheck(MemberDTO memberDTO) {
    	return sqlMapper.selectOne("sqlmemberJoinCheck",memberDTO);
	}
    public int memberLoginCheck(MemberDTO memberDTO) {
    	return sqlMapper.selectOne("sqlloginCheck",memberDTO);
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
	
	
	///////////관리자 페이지
	public List adminMemberList() {
		return sqlMapper.selectList("adminMemberList");
	}
	
	public int deleteAdminMember(Map map) {
		return sqlMapper.delete("deleteAdminMember",map);
	}
}
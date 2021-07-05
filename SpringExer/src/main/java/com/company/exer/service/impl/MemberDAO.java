package com.company.exer.service.impl;

import org.springframework.stereotype.Repository;

import com.company.exer.service.MemberDTO;

@Repository("memberDAO")
public interface MemberDAO {

	public void register(MemberDTO memberDTO) throws Exception;
	
    public MemberDTO get(MemberDTO memberDTO) throws Exception;
   
    public default int followCheck(MemberDTO memberDTO) {
		return sqlMapper.selectOne("followCheck",map);
	}

	public default int followCnt(MemberDTO memberDTO) {
		return sqlMapper.selectOne("followCnt",map);
	}

	public default int followerCnt(MemberDTO memberDTO) {
		return sqlMapper.selectOne("followerCnt",map);
	}
}
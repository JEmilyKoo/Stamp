package com.company.exer.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.mybatis.spring.SqlSessionTemplate;

import com.company.exer.service.MemberDTO;
import com.company.exer.service.ProfileDTO;

@Repository("profileDAO")
public class ProfileDAO {
	
	@Autowired
	private SqlSessionTemplate sqlMapper;

////*생성*
	public void insertProfile(ProfileDTO profileDTO) throws Exception  {
    	sqlMapper.insert("sqlInsertProfile",profileDTO);
	}// 프로필 생성 insertProfile

////*수정*
	public void updateProfile(ProfileDTO profileDTO) throws Exception {
		sqlMapper.update("sqlUpdateProfile",profileDTO);
	}// 프로필 수정 updateProfile

////*삭제*
	public void deleteProfile(ProfileDTO profileDTO) throws Exception {
		sqlMapper.delete("sqlDeleteProfile",profileDTO);
	}// 프로필 삭제 deleteProfile

////*선택*
	public ProfileDTO selectProfile(ProfileDTO profileDTO) throws Exception {
		return sqlMapper.selectOne("sqlSelectProfile",profileDTO);
	}// 해당 닉네임의 프로필 선택 selectProfile	

	public ProfileDTO selectProfileFromMember(MemberDTO memberDTO) throws Exception {
		return sqlMapper.selectOne("sqlSelectProfileFromMember",memberDTO);
	}// 해당 멤버-아이디의 프로필 선택 selectProfileFromMember
	
////*체크*
    public int NickNameCheck(ProfileDTO profileDTO)  throws Exception {
    	return sqlMapper.selectOne("sqlNickNameCheck",profileDTO);
	}// 해당 닉네임의 프로필이 있는지 중복 여부 체크(1이라면 있다/ 0이라면 없다) NickNameCheck
    
}

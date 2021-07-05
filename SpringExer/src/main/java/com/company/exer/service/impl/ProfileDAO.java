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
	
	public void newProfile(ProfileDTO profileDTO) {
    	sqlMapper.insert("sqlNewProfile",profileDTO);
	}
	
	
	public ProfileDTO selectProfile(ProfileDTO profileDTO) throws Exception {
		return sqlMapper.selectOne("sqlSelectProfile",profileDTO);
	}

	
	public ProfileDTO selectMemberProfile(MemberDTO memberDTO) throws Exception {
		return sqlMapper.selectOne("sqlSelectMemberProfile",memberDTO);
	}

	
	public void updateProfile(ProfileDTO profileDTO) throws Exception {
		sqlMapper.update("sqlUpdateProfile",profileDTO);
	}

			
	public void updateNicknameProfile(ProfileDTO profileDTO) throws Exception {
		sqlMapper.update("sqlUpdateNicknameProfile",profileDTO);
	}

	
	public void deleteProfile(ProfileDTO profileDTO) throws Exception {
		sqlMapper.delete("sqlDeleteProfile",profileDTO);
	}
}

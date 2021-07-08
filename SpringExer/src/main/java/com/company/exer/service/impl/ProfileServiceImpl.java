package com.company.exer.service.impl;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.exer.service.MemberDTO;
import com.company.exer.service.ProfileDTO;
import com.company.exer.service.ProfileService;

@Service("profileService")
public class ProfileServiceImpl implements ProfileService {

	
	@Resource(name="profileDAO")
	private ProfileDAO dao;
	
////*생성*
	@Override
	public void insertProfile(ProfileDTO profileDTO) throws Exception {
		dao.insertProfile(profileDTO);
	}	// 프로필 생성 insertProfile
	
////*생성*
	@Override
	public void updateProfile(ProfileDTO profileDTO) throws Exception {
		dao.updateProfile(profileDTO);	
	}// 프로필 수정 updateProfile
	
////*삭제*
	@Override
	public void deleteProfile(ProfileDTO profileDTO) throws Exception {
		dao.deleteProfile(profileDTO);		
	}// 프로필 삭제 deleteProfile
	
////*수정*
	@Override
	public ProfileDTO selectProfile(ProfileDTO profileDTO) throws Exception {
		return dao.selectProfile(profileDTO);
	}// 해당 닉네임의 프로필 선택 selectProfile	

	@Override
	public ProfileDTO selectProfileFromMember(MemberDTO memberDTO) throws Exception {
		return dao.selectProfileFromMember(memberDTO);
	}// 해당 멤버-아이디의 프로필 선택 selectProfileFromMember

////*체크*
	@Override
	public int NickNameCheck(ProfileDTO profileDTO) throws Exception {
		return dao.NickNameCheck(profileDTO);
	}// 해당 닉네임의 프로필이 있는지 중복 여부 체크(1이라면 있다/ 0이라면 없다) NickNameCheck
}

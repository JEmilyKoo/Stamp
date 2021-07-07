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
	
	@Override
	public void newProfile(ProfileDTO profileDTO) throws Exception {
		dao.newProfile(profileDTO);
		
	}

	@Override
	public ProfileDTO selectProfile(ProfileDTO profileDTO) throws Exception {
		return dao.selectProfile(profileDTO);
	}

	@Override
	public ProfileDTO selectMemberProfile(MemberDTO memberDTO) throws Exception {
		return dao.selectMemberProfile(memberDTO);
	}

	@Override
	public void updateProfile(ProfileDTO profileDTO) throws Exception {
		dao.updateProfile(profileDTO);
		
	}

	@Override
	public void updateNicknameProfile(ProfileDTO profileDTO) throws Exception {
		dao.updateNicknameProfile(profileDTO);
		
	}

	@Override
	public void deleteProfile(ProfileDTO profileDTO) throws Exception {
		dao.deleteProfile(profileDTO);
		
	}
	
	

	@Override
	public void profileNewSetting(ProfileDTO profileDTO) throws Exception {
		dao.profileNewSetting(profileDTO);
	}
	@Override
	public int profileNickNameCheck(ProfileDTO profileDTO) throws Exception {
		return dao.profileNickNameCheck(profileDTO);
	}
}

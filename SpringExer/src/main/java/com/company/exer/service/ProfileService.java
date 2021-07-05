package com.company.exer.service;


public interface ProfileService {

	public void newProfile(ProfileDTO profileDTO) throws Exception;
    
	public ProfileDTO selectProfile(ProfileDTO profileDTO) throws Exception;
	
	public ProfileDTO selectMemberProfile(MemberDTO memberDTO) throws Exception;
	// 멤버로 받아서 프로필로 내보낸다
	
	public void updateProfile(ProfileDTO profileDTO) throws Exception;
	
	public void updateNicknameProfile(ProfileDTO profileDTO) throws Exception;
	
	public void deleteProfile(ProfileDTO profileDTO) throws Exception;

}

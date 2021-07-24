package com.company.exer.service;

import java.util.Map;

public interface ProfileService {
	
////*생성*
	public void insertProfile(ProfileDTO profileDTO) throws Exception;
	// 프로필 생성 insertProfile
	
////*수정*
	public void updateProfile(ProfileDTO profileDTO) throws Exception;
	// 프로필 수정 updateProfile
	
////*삭제*
	public void deleteProfile(ProfileDTO profileDTO) throws Exception;
	// 프로필 삭제 deleteProfile
	
////*선택*
	public ProfileDTO selectProfile(ProfileDTO profileDTO) throws Exception;
	// 해당 닉네임의 프로필 선택 selectProfile	
	
	public ProfileDTO selectProfileFromMember(MemberDTO memberDTO) throws Exception;
	// 해당 멤버-아이디의 프로필 선택 selectProfileFromMember
	
////*체크*
	int	 NickNameCheck(ProfileDTO profileDTO) throws Exception;
	// 해당 닉네임의 프로필이 있는지 중복 여부 체크(1이라면 있다/ 0이라면 없다) NickNameCheck
    
///글쓰기 경험치
	public int writeEP(Map map);
///좋아요 경험치
	public int likeEP(Map map);
///스탬프 등록 경험치
	public int stampEP(Map map);
///스탬프 획득 경험치
	public int stampAchEP(Map map);

	///스탬프 획득 경험치
		public void testSample() throws Exception;
}

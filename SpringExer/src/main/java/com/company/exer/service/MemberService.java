package com.company.exer.service;

import java.util.List;
import java.util.Map;

public interface MemberService {

    public MemberDTO getMember(MemberDTO memberDTO) throws Exception;
    public void memberJoin(MemberDTO memberDTO) throws Exception;
    
    int	 memberJoinCheck(MemberDTO memberDTO) throws Exception;

    int	 memberLoginCheck(MemberDTO memberDTO) throws Exception;
    int followCheck(MemberDTO memberDTO) throws Exception;
    int followCnt(MemberDTO memberDTO) throws Exception;
    int followerCnt(MemberDTO memberDTO) throws Exception;
    
    //안드로이드
    MemberDTO Login(Map map);
    int join(Map map);
    int joinCheck(Map map);

	
    //관리자 페이지
	int deleteAdminMember(Map map);
	public List<MemberDTO> adminMemberList();
}

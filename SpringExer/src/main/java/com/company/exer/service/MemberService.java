package com.company.exer.service;


public interface MemberService {

    public MemberDTO getMember(MemberDTO memberDTO) throws Exception;
    public void memberJoin(MemberDTO memberDTO) throws Exception;
    
    int	 memberJoinCheck(MemberDTO memberDTO) throws Exception;

    int	 memberLoginCheck(MemberDTO memberDTO) throws Exception;
    int followCheck(MemberDTO memberDTO) throws Exception;
    int followCnt(MemberDTO memberDTO) throws Exception;
    int followerCnt(MemberDTO memberDTO) throws Exception;

	
}

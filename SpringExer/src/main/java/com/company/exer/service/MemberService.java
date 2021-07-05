package com.company.exer.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface MemberService {

    public MemberDTO getMember(MemberDTO memberDTO) throws Exception;
     
    public void memberJoin(MemberDTO memberDTO) throws Exception;
	int followCheck(Map map);
	int followCnt(Map map);
	int followerCnt(Map map);

	
}

package com.company.exer.service.impl;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.exer.service.MemberDTO;
import com.company.exer.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
    @Inject
    private MemberDAO memberDAO;
     
    @Resource(name="memberDAO")
	private MemberDAO dao;
    
    public MemberDTO getMember(MemberDTO memberDTO) throws Exception {
    	
    	return memberDAO.get(memberDTO);
    }

	@Override
	public void memberJoin(MemberDTO memberDTO) throws Exception {
			dao.memberJoin(memberDTO);
	}

	public int memberJoinCheck(MemberDTO memberDTO) throws Exception {
		return dao.memberJoinCheck(memberDTO);
	}
	@Override
	public int followCheck(MemberDTO memberDTO) {
		return dao.followCheck(memberDTO);
	}

	@Override
	public int followCnt(MemberDTO memberDTO) {
		return dao.followCnt(memberDTO);
	}

	@Override
	public int followerCnt(MemberDTO memberDTO) {
		return dao.followerCnt(memberDTO);
	}

}
